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
    public partial class ModifyStaffs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int staffId = int.Parse(Request.Params["userid"]);
                hdn_check.Value = Request.Params["userid"];
                MemberDaoSql modify = new MemberDaoSql();
                Member modifyStaff;

                modifyStaff = modify.GetMember(staffId);
                txt_firstName.Text = modifyStaff.FirstName;
                txt_lastName.Text = modifyStaff.LastName;
                if (modifyStaff.Gender == "Male")
                    rd_Male.Checked = true;
                else
                    rd_Female.Checked = true;
                txt_emailId.Text = modifyStaff.EmailId;
                txt_phoneNumber.Text = modifyStaff.PhoneNumber.ToString();
                
                txt_salary.Text = modifyStaff.Salary.ToString();
                if (modifyStaff.Approval == 1)
                    rd_yes.Checked = true;
                else
                    rd_no.Checked = true;
            }
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            
                MemberDaoSql update = new MemberDaoSql();
                Member modifyStaff = new Member();
                modifyStaff.UserId = int.Parse(hdn_check.Value);
                modifyStaff.FirstName = txt_firstName.Text;
                modifyStaff.LastName = txt_lastName.Text;
                if (rd_Male.Checked == true)
                    modifyStaff.Gender = "Male";
                else
                    modifyStaff.Gender = "Female";
                modifyStaff.EmailId = txt_emailId.Text;
                modifyStaff.PhoneNumber = long.Parse(txt_phoneNumber.Text);
               
                modifyStaff.LoginType = 'S';
                if (rd_yes.Checked == true)
                    modifyStaff.Approval = 1;
                else
                    modifyStaff.Approval = 0;
                modifyStaff.Salary = double.Parse(txt_salary.Text);
                update.ModifyMemberStaff(modifyStaff);
                Response.Redirect("AdminHome.aspx?asd=" + txt_firstName.Text);
            
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            MemberDaoSql member = new MemberDaoSql();
            int user_id = int.Parse(hdn_check.Value);
            member.DeleteMemberStaff(user_id);
            Response.Redirect("ManageStaffDetails.aspx");
        }
    }
}