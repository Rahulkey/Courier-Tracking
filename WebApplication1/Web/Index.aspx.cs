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
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
           
            try
            {
                MemberDaoSql member = new MemberDaoSql();
                Member memberDetail = member.GetMember(int.Parse(txt_userId.Text));
                if (memberDetail.LoginType.ToString() == "A")
                {
                    if (memberDetail.Password != txt_password.Text)
                    {
                        Label1.Text = "Incorrect Password";
                       
                    }
                    else
                        Response.Redirect("AdminHome.aspx");

                }
                else 
                {
                    if (memberDetail.Password != txt_password.Text)
                        Label1.Text = "Incorrect Password";
                    else if (memberDetail.Approval == 0)
                        Label1.Text = "Wait for admin approval";
                    else
                        Response.Redirect("StaffHome.aspx");
                }
                    
            }
            catch
            {
                Label1.Text = "User does not Exist";
            }            
        }

        protected void btn_ForgetPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgetPassword.aspx");
        }
    }
}