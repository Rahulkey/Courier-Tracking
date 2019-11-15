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
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_newPassword.Visible = false;
            txt_confirmNewPassword.Visible = false;
            btn_ChangePassword.Visible = false;
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            string emailId = txt_emailId.Text;
            int userId = int.Parse(txt_userId.Text);
            //GetUser
            MemberDaoSql user = new MemberDaoSql();
            Member member = new Member();
            member = user.GetUser(userId);
            if (member == null)
            {
                Label1.Visible = true;
                Label1.Text = "UserId : " + userId + " doesn't exist !";

            }
            else if (member.EmailId != emailId)
            {
                Label1.Visible = true;
                Label1.Text = "Your credentials don't match ! Enter correct UserID and Email ID";


            }
            else
            {
                txt_newPassword.Visible = true;
                txt_confirmNewPassword.Visible = true;
                btn_ForgetPassword.Visible = false;
                btn_ChangePassword.Visible = true;
            }
        }

        protected void btn_ChangePassword_Click(object sender, EventArgs e)
        {
            string newPassword = txt_newPassword.Text;
            string confirmPassword = txt_confirmNewPassword.Text;
            if (newPassword != confirmPassword)
            {
                Label1.Visible = true;
                Label1.Text = "Your Password does not match";
            }
            else
            {
                MemberDaoSql user = new MemberDaoSql();
                int userId=int.Parse(txt_userId.Text);
                string password = txt_newPassword.Text;
                user.UpdateMemberStaff(userId, password);
                Label1.Visible = true;
                Label1.Text = "Password change has been successful !";
                txt_emailId.Text = "";

            }

        }
    }
}