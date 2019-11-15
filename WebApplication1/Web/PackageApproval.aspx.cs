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
    public partial class PackageApproval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PackageDaoSql parcel = new PackageDaoSql();
           int x= parcel.PackageApproval().Count;
           if (x != 0)
           {
               grd_PackageApproval.DataSource = parcel.PackageApproval();
               grd_PackageApproval.DataBind();
           }
           else
               Label1.Text = "No Package for approval";

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