using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dao;
using Model;

namespace Web
{
    public partial class PackageDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PackageDaoSql parcel = new PackageDaoSql();
            List<Package> parcel1 = new List<Package>();
            parcel1 = parcel.PackageDetail();
            if (parcel1.Count() == 0)
                Label1.Text = "Package List is Empty";
            else
            {
                Label1.Visible = false;
                grd_PackageDetails.DataSource = parcel.PackageDetail();
                grd_PackageDetails.DataBind();
            }
        }

        protected void Label2_Load(object sender, EventArgs e)
        {
            if (((Label)sender).Text == "0")
                ((Label)sender).Text = "Not Approve";
            else if (((Label)sender).Text == "1")
                ((Label)sender).Text = "InTransit";
            else
                ((Label)sender).Text = "Delivered";
        }
    }
}