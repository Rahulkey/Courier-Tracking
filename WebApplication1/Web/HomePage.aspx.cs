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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_showTrack.Text = "";
                  
            if (Session["package"] != null)
            {
               string userName = Request.Params["userName"];    
               lbl_showTrack.Text = "Hello " + userName +"\t"+"Your Package Id : " + Session["package"].ToString();
               Session["package"] = null;
               Session.Clear();
               
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            
                try
                {
                    PackageDaoSql package = new PackageDaoSql();
                    string location = package.ShowTrackDetail(int.Parse(track_Id.Text));
                    string address = package.ShowSenderReceiverAddress(int.Parse(track_Id.Text));
                    Package parcel=new Package();
                    parcel=package.GetPackage(int.Parse(track_Id.Text));
                    
                    
                     if (location == "-1")
                        lbl_showTrack.Text = "Track Id does not exist";
                     else if (parcel.PackageStatus == 0)
                         lbl_showTrack.Text = "Waiting for admin approval, Come Back within 24-hour";
                    else if (parcel.PackageStatus == 1)
                        lbl_showTrack.Text = location + " " + ", " + DateTime.Now.ToString() + " " + address;
                    else if (parcel.PackageStatus == 2)
                        lbl_showTrack.Text = "Delivered at :" + parcel.ReceiverAddress;
                }
                catch
                {
                       lbl_showTrack.Text = "Please enter your track id";
                }
            
            
        }
    }
}