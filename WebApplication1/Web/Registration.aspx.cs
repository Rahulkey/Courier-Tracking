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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            Member user = new Member();
            //Package parcel = new Package();
            user.FirstName = txt_firstName.Text;
            user.LastName = txt_lastName.Text;

            user.Gender = (rd_Male.Checked == true) ? "Male" : "Female";
            user.EmailId = txt_emailId.Text;
            user.PhoneNumber = long.Parse(txt_phoneNumber.Text);
            user.LoginType = 'S';
            user.Password = txt_password.Text;
            user.PermanentAddress = txt_permanentAddress.Text;
            user.CurrentAddress = txt_currentAddress.Text;
            user.Approval = 0;
            user.Salary = 0.0;


            MemberDaoSql newUser = new MemberDaoSql();

            int userId = newUser.AddMemberStaff(user);
            
            lbl_showStaffId.Text = "Your Generated Staff Id = " + userId.ToString() + "  Use This Staff Id for further Login";
            btn_Register.Visible = false;
        }
    }
}