using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class PackageDaoSql : IPackageDao
    {

         public int AddPackageDetail(Package package)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand packageCommand = new SqlCommand();
            packageCommand.Connection = sqlConnection;
            packageCommand.CommandText = "insert into package(sender_address,receiver_address,customer_id,accept_date,package_weight,price,employee_id,package_status,current_loaction) values(@sender_address,@receiver_address,@customer_id,@accept_date,@package_weight,@price,@employee_id,@package_status,@current_loaction)";
            SqlParameter[] paramAdd = new SqlParameter[9];            
            paramAdd[0] = new SqlParameter("@sender_address", package.SenderAddress);
            paramAdd[1] = new SqlParameter("@receiver_address", package.ReceiverAddress);
            paramAdd[2] = new SqlParameter("@customer_id", package.CustomerId);
            paramAdd[3] = new SqlParameter("@accept_date", package.AcceptDate);
            paramAdd[4] = new SqlParameter("@package_weight", package.PackageWeight);
            paramAdd[5] = new SqlParameter("@price", package.Price);
            paramAdd[6] = new SqlParameter("@employee_id", package.EmployeeId);
            paramAdd[7] = new SqlParameter("@package_status", package.PackageStatus);
            paramAdd[8] = new SqlParameter("@current_loaction", package.CurrentLocation);
            packageCommand.Parameters.AddRange(paramAdd);
            sqlConnection.Open();
            packageCommand.ExecuteNonQuery();

            SqlCommand packageCommand1 = new SqlCommand();
            packageCommand1.Connection = sqlConnection;
            packageCommand1.CommandText = "select package_id from package where customer_id=@customer_id";
            SqlParameter[] paramAdd1 = new SqlParameter[1];
            paramAdd1[0] = new SqlParameter("@customer_id", package.CustomerId);            
            packageCommand1.Parameters.AddRange(paramAdd1);
            SqlDataReader memberReader = packageCommand1.ExecuteReader();
            int id=0;
            while (memberReader.Read())
            {
                id = int.Parse(memberReader["package_id"].ToString());
            }          
            sqlConnection.Close();
            return id;
        }

        public void ModifyPackageDeatil(int packageId, Package package)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand packageCommand = new SqlCommand();
            packageCommand.Connection = sqlConnection;
            packageCommand.CommandText = "update package set " +
                                         "accept_date=@accept_date,package_weight=@package_weight,price=@price," +
                                         "sender_address=@sender_address,receiver_address=@receiver_address,"+
                                         "employee_id=@employee_id,package_status=@package_status " +
                                         "where package_id=@package_id";
            SqlParameter[] modifyParam = new SqlParameter[8];
            modifyParam[0] = new SqlParameter("@package_id", packageId);
            modifyParam[1] = new SqlParameter("@accept_date", package.AcceptDate);
            modifyParam[2] = new SqlParameter("@package_weight", package.PackageWeight);
            modifyParam[3] = new SqlParameter("@price", package.Price);
            modifyParam[4] = new SqlParameter("@sender_address", package.SenderAddress);
            modifyParam[5] = new SqlParameter("@receiver_address", package.ReceiverAddress);            
            modifyParam[6] = new SqlParameter("@employee_id", package.EmployeeId);            
            modifyParam[7] = new SqlParameter("@package_status", package.PackageStatus);
            packageCommand.Parameters.AddRange(modifyParam);
            sqlConnection.Open();
            packageCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }

        public void ModifyLocationPackageDetail(int packageId, string CurrentLocation)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand packageCommand = new SqlCommand();
            packageCommand.Connection = sqlConnection;
            packageCommand.CommandText = "update package set "+
                                         "current_loaction=@current_loaction " +
                                         "where package_id=@package_id";
            SqlParameter[] modifyPackageParam = new SqlParameter[2];
            modifyPackageParam[0] = new SqlParameter("@package_id", packageId);
            modifyPackageParam[1] = new SqlParameter("@current_loaction", CurrentLocation);
            packageCommand.Parameters.AddRange(modifyPackageParam);
            sqlConnection.Open();
            packageCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }
        public string ShowTrackDetail(int packageId)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand packageCommand = new SqlCommand();
            packageCommand.Connection = sqlConnection;
            packageCommand.CommandText = "select current_loaction from package where package_id=@package_id";
            SqlParameter[] modifyPackageParam = new SqlParameter[1];
            modifyPackageParam[0] = new SqlParameter("@package_id", packageId);
            packageCommand.Parameters.AddRange(modifyPackageParam);
            sqlConnection.Open();
            string location;
            location = packageCommand.ExecuteNonQuery().ToString();
            SqlDataReader memberReader = packageCommand.ExecuteReader();
           
            while (memberReader.Read())
            {
                location = memberReader["current_loaction"].ToString();
            }
            sqlConnection.Close();
            return location;        
        }

        public string ShowSenderReceiverAddress(int packageId)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand packageCommand = new SqlCommand();
            packageCommand.Connection = sqlConnection;
            packageCommand.CommandText = "select sender_address,receiver_address from package where package_id=@package_id";
            SqlParameter[] modifyPackageParam = new SqlParameter[1];
            modifyPackageParam[0] = new SqlParameter("@package_id", packageId);
            packageCommand.Parameters.AddRange(modifyPackageParam);
            sqlConnection.Open();
            string address;
            address = packageCommand.ExecuteNonQuery().ToString();
            SqlDataReader memberReader = packageCommand.ExecuteReader();

            while (memberReader.Read())
            {
                address = "Sender Address: " + memberReader["sender_address"].ToString() + " ,Receiver Address: " + memberReader["receiver_address"].ToString();
            }
            sqlConnection.Close();
            return address;
        }

          public List<Package> PackageDetail()
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand packageCommand = new SqlCommand();
            packageCommand.Connection = sqlConnection;
            packageCommand.CommandText = "select * from package";           
            sqlConnection.Open();
            SqlDataReader memberReader = packageCommand.ExecuteReader();
            List<Package> parcel = new List<Package>();

            while (memberReader.Read())
            {
                    parcel.Add(new Package(int.Parse(memberReader["package_id"].ToString()),
                    DateTime.Parse(memberReader["accept_date"].ToString()),
                    double.Parse(memberReader["package_weight"].ToString()),
                    double.Parse(memberReader["price"].ToString()),
                    memberReader["sender_address"].ToString(),
                    memberReader["receiver_address"].ToString(),
                    int.Parse(memberReader["customer_id"].ToString()),
                    int.Parse(memberReader["employee_id"].ToString()),
                    memberReader["current_loaction"].ToString(),
                    int.Parse(memberReader["package_status"].ToString())));
            }

            sqlConnection.Close();
            return parcel;
          }


          public List<Package> PackageApproval()
          {
              SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
              SqlCommand packageApprovalCommand = new SqlCommand();
              packageApprovalCommand.Connection = sqlConnection;
              packageApprovalCommand.CommandText = "select * from package where package_status=0";

              //SqlParameter[] packageApproval = new SqlParameter[1];
              //packageApproval[0] = new SqlParameter("@package_status", 0);
              //packageApprovalCommand.Parameters.AddRange(packageApproval);
              sqlConnection.Open();
              SqlDataReader reader = packageApprovalCommand.ExecuteReader();

              List<Package> parcelApprove = new List<Package>();

              while (reader.Read())
              {
                  parcelApprove.Add(new Package(int.Parse(reader["package_id"].ToString()),
                  DateTime.Parse(reader["accept_date"].ToString()),
                  double.Parse(reader["package_weight"].ToString()),
                  double.Parse(reader["price"].ToString()),
                  reader["sender_address"].ToString(),
                  reader["receiver_address"].ToString(),
                  int.Parse(reader["customer_id"].ToString()),
                  int.Parse(reader["employee_id"].ToString()),
                  reader["current_loaction"].ToString(),
                  int.Parse(reader["package_status"].ToString())));
              }
              sqlConnection.Close();
              return parcelApprove;
          }




          public Package GetPackage(int packageId)
          {
              SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
              SqlCommand packageCommand = new SqlCommand();
              packageCommand.Connection = sqlConnection;
              packageCommand.CommandText = "select * from package where package_id=@packageId";
              SqlParameter[] costParam = new SqlParameter[1];
              costParam[0] = new SqlParameter("@packageId", packageId);             
              packageCommand.Parameters.AddRange(costParam);
              sqlConnection.Open();
              SqlDataReader memberReader = packageCommand.ExecuteReader();
              Package parcel = null;

              while (memberReader.Read())
              {
                  parcel= (new Package(int.Parse(memberReader["package_id"].ToString()),
                  DateTime.Parse(memberReader["accept_date"].ToString()),
                  double.Parse(memberReader["package_weight"].ToString()),
                  double.Parse(memberReader["price"].ToString()),
                  memberReader["sender_address"].ToString(),
                  memberReader["receiver_address"].ToString(),
                  int.Parse(memberReader["customer_id"].ToString()),
                  int.Parse(memberReader["employee_id"].ToString()),
                  memberReader["current_loaction"].ToString(),
                  int.Parse(memberReader["package_status"].ToString())));
              }

              sqlConnection.Close();
              return parcel;
          }


          public double GetCost(string origin, string destination,double weight)
          {
              SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
              SqlCommand packageCommand = new SqlCommand();
              packageCommand.Connection = sqlConnection;
              packageCommand.CommandText = "select distance from warehouse where sender=@sender and receiver=@receiver";
              SqlParameter[] costParam = new SqlParameter[2];
              costParam[0] = new SqlParameter("@sender", origin);
              costParam[1] = new SqlParameter("@receiver", destination);
              packageCommand.Parameters.AddRange(costParam);
              sqlConnection.Open();
              SqlDataReader memberReader = packageCommand.ExecuteReader();
              Package parcel = new Package();
              double distance = 0.0;
              while (memberReader.Read())
              {
                  distance = double.Parse(memberReader["distance"].ToString());
              }
              sqlConnection.Close();
              weight = weight / 10000;
              weight = weight + 0.05;
              double cost = weight * distance;
              if (cost < 100)
                  cost = 100;
              else if (cost >= 100 && cost < 150)
                  cost = 150;
              else if (cost >= 150 && cost < 200)
                  cost = 200;
              else if (cost >= 200 && cost < 250)
                  cost = 250;
              else if (cost >= 250 && cost < 300)
                  cost = 300;
              else if (cost >= 300 )
                  cost = 400;
              return cost;              
              
          }

          public void AddReport(Package package,Member m)
          {
              
              SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
              SqlCommand packageCommand = new SqlCommand();
              SqlCommand command = new SqlCommand();
              command.Connection = sqlConnection;
              packageCommand.Connection = sqlConnection;
              sqlConnection.Open();
              command.CommandText = "select count(*) from report where package_id=@package_id";
              SqlParameter[] costParam = new SqlParameter[1];
              costParam[0] = new SqlParameter("@package_id", package.PackageId);
              command.Parameters.AddRange(costParam);
              int i = 0;
              i =int.Parse(command.ExecuteScalar().ToString());
              if (i == 0 )
              {

                  packageCommand.CommandText = "insert into report(package_id,first_name,last_name,accept_date,email_id,phone_number,sender_address,receiver_address,package_weight,package_price) values(@package_id,@first_name,@last_name,@accept_date,@email_id,@phone_number,@sender_address,@receiver_address,@package_weight,@package_price)";
                  SqlParameter[] paramAdd = new SqlParameter[10];
                  paramAdd[0] = new SqlParameter("@package_id", package.PackageId);
                  paramAdd[1] = new SqlParameter("@first_name", m.FirstName);
                  paramAdd[2] = new SqlParameter("@last_name", m.LastName);
                  paramAdd[3] = new SqlParameter("@accept_date", package.AcceptDate);
                  paramAdd[4] = new SqlParameter("@email_id", m.EmailId);
                  paramAdd[5] = new SqlParameter("@phone_number", m.PhoneNumber);
                  paramAdd[6] = new SqlParameter("@sender_address", package.SenderAddress);
                  paramAdd[7] = new SqlParameter("@receiver_address", package.ReceiverAddress);
                  paramAdd[8] = new SqlParameter("@package_weight", package.PackageWeight);

                  paramAdd[9] = new SqlParameter("@package_price", package.Price);
                  packageCommand.Parameters.AddRange(paramAdd);

                  packageCommand.ExecuteNonQuery();
              }
              sqlConnection.Close();
              
              
          }
          public City GetCity(int pin_code)
          {
              SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
              SqlCommand packageCommand = new SqlCommand();
              packageCommand.Connection = sqlConnection;
              packageCommand.CommandText = "select * from city where pin_code=@pinCode";
              SqlParameter[] costParam = new SqlParameter[1];
              costParam[0] = new SqlParameter("@pinCode", pin_code);
              packageCommand.Parameters.AddRange(costParam);
              sqlConnection.Open();
              SqlDataReader memberReader = packageCommand.ExecuteReader();
              City city = new City();



              while (memberReader.Read())
              {
                  city = (new City(int.Parse(memberReader["pin_code"].ToString()),
                  memberReader["city"].ToString(),
                  memberReader["state"].ToString()));

              }

              sqlConnection.Close();
              return city;
          }

          public DataTable DeliveredPackageReport(DateTime startDate, DateTime endDate)
          {
              SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
              SqlCommand reportCommand = new SqlCommand();
              reportCommand.CommandText="select * from report where accept_date between @startDate and @endDate";
              reportCommand.Connection=sqlConnection;
              SqlParameter[] param = new SqlParameter[2];
              param[0] = new SqlParameter("@startDate", startDate);
              param[1] = new SqlParameter("@endDate", endDate);
              reportCommand.Parameters.AddRange(param);
              SqlDataAdapter sda = new SqlDataAdapter(reportCommand);
              DataTable dt = new DataTable();
              sda.Fill(dt);
              return dt;

              
          }
        
    }

}
