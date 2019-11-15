using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using Dao;

namespace Web
{
    public partial class ModifyPackageStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int packageId = int.Parse(Request.Params["packageId"]);

                PackageDaoSql modify = new PackageDaoSql();
                Package modifyPackage = new Package();

                modifyPackage = modify.GetPackage(packageId);
                txt_acceptDate.Text = modifyPackage.AcceptDate.ToString();
                txt_packageWeight.Text = modifyPackage.PackageWeight.ToString();
                txt_price.Text = modifyPackage.Price.ToString();
                txt_senderAddress.Text = modifyPackage.SenderAddress.ToString();
                txt_receiverAddress.Text = modifyPackage.ReceiverAddress.ToString();
                txt_currentLocation.Text = modifyPackage.CurrentLocation.ToString();
                txt_employeeId.Text = modifyPackage.EmployeeId.ToString();
                if (modifyPackage.PackageStatus == 1)
                    rd_inTransit.Checked = true;               
                else
                    rd_notapprove.Checked = true;

            }
        }

        protected void btn_Update1_Click(object sender, EventArgs e)
        {

            PackageDaoSql modify = new PackageDaoSql();
            Package modifyPackage = new Package();
            modifyPackage.PackageId = int.Parse(Request.Params["packageId"]);
            modifyPackage.AcceptDate = DateTime.Parse(txt_acceptDate.Text);
            modifyPackage.PackageWeight = double.Parse(txt_packageWeight.Text);
            modifyPackage.Price = double.Parse(txt_price.Text);
            modifyPackage.SenderAddress = txt_senderAddress.Text;
            modifyPackage.ReceiverAddress = txt_receiverAddress.Text;
            modifyPackage.EmployeeId = int.Parse(txt_employeeId.Text);
            txt_currentLocation.Text = cat.Value.ToString() + " " + pla.Value.ToString();
            modifyPackage.CurrentLocation = txt_currentLocation.Text;

            if (rd_notapprove.Checked == true)
                modifyPackage.PackageStatus = 0;
            else if (rd_inTransit.Checked == true)
                modifyPackage.PackageStatus = 1;
            


            modify.ModifyPackageDeatil(modifyPackage.PackageId, modifyPackage);
            modify.ModifyLocationPackageDetail(modifyPackage.PackageId, txt_currentLocation.Text.ToString());
            Response.Redirect("StaffHome.aspx?asd=" + txt_acceptDate.Text);

        }

        protected void btn_showrCity_Click(object sender, EventArgs e)
        {
            int s = txt_senderAddress.Text.Length;
            string senderAddress = txt_senderAddress.Text;
            int s1 = int.Parse(senderAddress[s - 6].ToString());
            // txt_receiverAddress.Text=s1.ToString();
            string city = "";
            if (s1 == 7)
                city = "Kolkata";
            if (s1 == 1)
                city = "Delhi";
            if (s1 == 4)
                city = "Mumbai";
            if (s1 == 5)
                city = "Bangalore";


            int s2 = txt_receiverAddress.Text.Length;
            string receiverAddress = txt_receiverAddress.Text;
            int s3 = int.Parse(receiverAddress[s2 - 6].ToString());
            string cityr = "";
            if (s3 == 7)
                cityr = "Kolkata";
            if (s3 == 1)
                cityr = "Delhi";
            if (s3 == 4)
                cityr = "Mumbai";
            if (s3 == 5)
                cityr = "Bangalore";

            double weight = double.Parse(txt_packageWeight.Text);
            PackageDaoSql price = new PackageDaoSql();
            txt_price.Text = price.GetCost(city, cityr, weight).ToString();
        }
    }
}