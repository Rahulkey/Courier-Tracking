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
    public partial class ManageStaffDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            MemberDaoSql staff = new MemberDaoSql();
            List<Member> member = staff.ShowSatff();
           
            if (member.Count() == 0)
                Label1.Text = "Staff List is Empty";
            else
            {
                grd_StaffDetails.DataSource = staff.ShowSatff();
                grd_StaffDetails.DataBind();
            }
        }
    }
}