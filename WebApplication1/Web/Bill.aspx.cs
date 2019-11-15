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
    public partial class Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_showrCity_Click(object sender, EventArgs e)
        {
            lbl_senderAddress.Text = "";
            lbl_receiverAddress.Text = "";
            lbl_packageWeight.Text = "";
            lbl_packagePrice.Text = "";
            lbl_acceptDate.Text = "";
            lbl_firstName.Text = "";
            lbl_lastName.Text = "";
            lbl_emailId.Text = "";
            lbl_phoneNumber.Text = "";
            Label8.Text = "";

            try
            {
                PackageDaoSql parcel = new PackageDaoSql();
                Package package = new Package();
                //int id = int.Parse(txt_packageId.Text);
                package = parcel.GetPackage(int.Parse(txt_packageId.Text.ToString()));
                if (package.PackageStatus ==2)
                {


                    lbl_senderAddress.Text = package.SenderAddress;
                    lbl_receiverAddress.Text = package.ReceiverAddress;
                    lbl_packageWeight.Text = package.PackageWeight.ToString();
                    lbl_packagePrice.Text = package.Price.ToString();
                    lbl_acceptDate.Text = package.AcceptDate.ToString();
                    int customerId = package.CustomerId;

                    MemberDaoSql member = new MemberDaoSql();
                    Member user = new Member();

                    user = member.GetUser(customerId);
                    lbl_firstName.Text = user.FirstName;
                    lbl_lastName.Text = user.LastName;
                    lbl_emailId.Text = user.EmailId;
                    lbl_phoneNumber.Text = user.PhoneNumber.ToString();

                    PackageDaoSql packageReport = new PackageDaoSql();
                    Member userReport = new Member();
                    Package packageReport1 = new Package();

                    packageReport1.PackageId = int.Parse(txt_packageId.Text.ToString());
                    userReport.FirstName = lbl_firstName.Text.ToString();
                    userReport.LastName = lbl_lastName.Text.ToString();
                    packageReport1.AcceptDate = DateTime.Parse(lbl_acceptDate.Text);
                    userReport.EmailId = lbl_emailId.Text.ToString();
                    userReport.PhoneNumber = long.Parse(lbl_phoneNumber.Text.ToString());
                    packageReport1.SenderAddress = lbl_senderAddress.Text.ToString();
                    packageReport1.ReceiverAddress = lbl_receiverAddress.Text.ToString();
                    packageReport1.PackageWeight = double.Parse(lbl_packageWeight.Text.ToString());
                    packageReport1.Price = double.Parse(lbl_packagePrice.Text.ToString());

                    packageReport.AddReport(packageReport1, userReport);
                }
                else if (package.PackageStatus == 0)
                {
                    Label8.Text = "Package is not approved";
                }
                else
                    Label8.Text = "Package is on the way. Bill will be generated after delivery";
            }
            catch
            {
                Label8.Text = "Package Id does not exist";

            }

        }

      
    }
}