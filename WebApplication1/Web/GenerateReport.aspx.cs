using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Model;
using Dao;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.IO;
namespace Web
{
    public partial class GenerateReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btn_save.Visible = false;
                Label3.Text = "";
                grd_report.DataSource = "";
                grd_report.DataBind();
            }
        }

        protected void btn_showrCity_Click(object sender, EventArgs e)
        {
            
            try
            {
                DateTime startDate = DateTime.Parse(txt_startDate.Text);
                DateTime endDate = DateTime.Parse(txt_endDate.Text);
                if (endDate < startDate)
                {
                    Label3.Text = "Start date must be less than end date";
                }
                else
                {
                    PackageDaoSql pack = new PackageDaoSql();
                    DataTable dt = pack.DeliveredPackageReport(startDate, endDate);
                    grd_report.DataSource = dt;
                    if (dt != null)
                    {
                        if (dt.Rows.Count > 0)
                        {

                            grd_report.DataBind();
                            btn_save.Visible = true;
                        }
                        else
                        {
                            btn_save.Visible = false;
                            Label3.Text = "No packages have been approved in the given duration";
                        }

                    }
                    else
                    {
                        btn_save.Visible = false;
                        Label3.Text = "No packages have been approved in the given duration";
                    }
                }

            }
            catch
            {
                Label3.Text = "Please select a valid date";
                

            }

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }


        protected void btn_save_Click(object sender, EventArgs e)
        {
            btn_save.Visible = false;
            txt_startDate.Text = "";
            txt_endDate.Text = "";
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=PackageDeliveryReport.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            grd_report.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();



        }
    }
}