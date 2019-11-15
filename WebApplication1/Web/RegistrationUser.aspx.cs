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
    public partial class RegistrationUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {

            Member user = new Member();
            Package parcel = new Package();
            user.FirstName = txt_firstName.Text;
            user.LastName = txt_lastName.Text;
            user.EmailId = txt_emailId.Text;
            user.PhoneNumber = long.Parse(txt_phoneNumber.Text);
            user.LoginType = 'U';
            MemberDaoSql newUser = new MemberDaoSql();
            int id = newUser.AddMemberUser(user);

            parcel.ReceiverAddress = txt_receiverAddress.Text+", "+txt_receiverPincode.Text;
            parcel.SenderAddress = txt_senderAddress.Text+", " +txt_senderPincode.Text;
            parcel.CustomerId = id;
            parcel.PackageStatus = 0;
            parcel.CurrentLocation = "";
            parcel.PackageWeight = 0.00;
            parcel.Price = 0.00;
            parcel.AcceptDate = DateTime.Now;
            parcel.EmployeeId = 4;

            PackageDaoSql package=new PackageDaoSql();
            int packageId=  package.AddPackageDetail(parcel);
            
             Session["package"] = packageId;
             Response.Redirect("Homepage.aspx?userName="+ txt_firstName.Text);
            
        
        }

   

        protected void btn_showsCity_Click(object sender, EventArgs e)
        {
            int spincode = int.Parse(txt_senderPincode.Text);

            //if (spincode / 100000 == 7)
            //    lbl_showSenderCity.Text = "Kolkata";

            //if (spincode / 100000 == 1)
            //    lbl_showSenderCity.Text = "Delhi";


            //if (spincode / 100000 == 4)
            //    lbl_showSenderCity.Text = "Mumbai";


            //if (spincode / 100000 == 5)
            //    lbl_showSenderCity.Text = "Bangalore";

            PackageDaoSql getpin = new PackageDaoSql();
            City city1= getpin.GetCity(spincode);
            if (city1.State == null)
            {

                lbl_showSenderCity.Text = "We do not operate in this city";
               
            }
            else
                lbl_showSenderCity.Text = city1.city + " " + city1.State;
    
            
        }

        protected void btn_showrCity_Click(object sender, EventArgs e)
        {
            int rpincode = int.Parse(txt_receiverPincode.Text);

            //if (rpincode / 100000 == 7)
            //   lbl_showreceiverCity.Text= "Kolkata";

            //if (rpincode / 100000 == 1)
            //    lbl_showreceiverCity.Text = "Delhi";


            //if (rpincode / 100000 == 4)
            //    lbl_showreceiverCity.Text = "Mumbai";


            //if (rpincode / 100000 == 5)
            //    lbl_showreceiverCity.Text = "Bangalore";

            PackageDaoSql getpin = new PackageDaoSql();
            City city1 = getpin.GetCity(rpincode);
            if (city1.State == null)
            {
                lbl_showreceiverCity.Text = "We do not operate in this city";

            }
            else
            {
                lbl_showreceiverCity.Text = city1.city + " " + city1.State;
            }
        }
    }
}