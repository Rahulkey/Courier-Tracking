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
    public class MemberDaoSql: IMemberDao
    {
       public Member GetMember(int userId)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand memberCommand = new SqlCommand();
            memberCommand.CommandText = "select * from member where user_id=@userId";
            memberCommand.Parameters.AddWithValue("@userId", userId);
            memberCommand.Connection = sqlConnection;
            sqlConnection.Open();
            SqlDataReader memberReader = memberCommand.ExecuteReader();
            Member member =null;

            while (memberReader.Read())
            {
                  member=new Member(int.Parse(memberReader["user_id"].ToString()),
                  memberReader["first_name"].ToString(),
                  memberReader["last_name"].ToString(),
                  memberReader["gender"].ToString(),
                  memberReader["email"].ToString(),
                  long.Parse(memberReader["phone_number"].ToString()),
                  memberReader["password"].ToString(),
                  double.Parse(memberReader["salary"].ToString()),
                  memberReader["permanent_address"].ToString(),
                  memberReader["corresponding_address"].ToString(),
                  char.Parse(memberReader["login_type"].ToString()),
                  int.Parse(memberReader["approval"].ToString()));

            }
            memberReader.Close();
            sqlConnection.Close();
            return member;
        }

       public Member GetUser(int userId)
       {
           SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
           SqlCommand memberCommand = new SqlCommand();
           memberCommand.CommandText = "select * from member where user_id=@userId";
           memberCommand.Parameters.AddWithValue("@userId", userId);
           memberCommand.Connection = sqlConnection;
           sqlConnection.Open();
           SqlDataReader memberReader = memberCommand.ExecuteReader();
           Member member = null;

           while (memberReader.Read())
           {
               member = new Member(memberReader["first_name"].ToString(),
               memberReader["last_name"].ToString(),           
               memberReader["email"].ToString(),
               long.Parse(memberReader["phone_number"].ToString()),               
               char.Parse(memberReader["login_type"].ToString()));

           }
           memberReader.Close();
           sqlConnection.Close();
           return member;
       }


       public List<Member> GetMemberStaff(int userId)
       {
           SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
           SqlCommand memberCommand = new SqlCommand();
           memberCommand.CommandText = "select * from member where user_id=@userId";
           memberCommand.Parameters.AddWithValue("@userId", userId);
           memberCommand.Connection = sqlConnection;
           sqlConnection.Open();
           SqlDataReader memberReader = memberCommand.ExecuteReader();
           List<Member> member = new List<Member>();

           while (memberReader.Read())
           {
               member.Add(new Member(int.Parse(memberReader["user_id"].ToString()),
               memberReader["first_name"].ToString(),
               memberReader["last_name"].ToString(),
               memberReader["gender"].ToString(),
               memberReader["email"].ToString(),
               long.Parse(memberReader["phone_number"].ToString()),
               memberReader["password"].ToString(),
               double.Parse(memberReader["salary"].ToString()),
               memberReader["permanent_address"].ToString(),
               memberReader["corresponding_address"].ToString(),
               char.Parse(memberReader["login_type"].ToString()),
               int.Parse(memberReader["approval"].ToString())));

           }
           memberReader.Close();
           sqlConnection.Close();
           return member;
       }

        public int AddMemberStaff(Member member)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand memberCommand = new SqlCommand();
            memberCommand.Connection = sqlConnection;
            memberCommand.CommandText = "insert into member(first_name,last_name,gender,email,"+
                                       "phone_number,password,salary,permanent_address,corresponding_address,login_type,approval)"+
                                       "values(@first_name,@last_name,@gender,@email,@phone_number,@password,@salary,@permanent_address,@corresponding_address,@login_type,@approval)";
            SqlParameter[] param = new SqlParameter[11];
            param[0] = new SqlParameter("@first_name", member.FirstName);
            param[1] = new SqlParameter("@last_name", member.LastName);
            param[2] = new SqlParameter("@gender",member.Gender);
            param[3] = new SqlParameter("@email", member.EmailId);
            param[4] = new SqlParameter("@phone_number",member.PhoneNumber); 
            param[5] = new SqlParameter("@password", member.Password);
            param[6] = new SqlParameter("@salary", member.Salary);
            param[7] = new SqlParameter("@permanent_address", member.PermanentAddress);
            param[8] = new SqlParameter("@corresponding_address", member.CurrentAddress);
            param[9] = new SqlParameter("@login_type", member.LoginType);
            param[10] = new SqlParameter("@approval", member.Approval);
            memberCommand.Parameters.AddRange(param);
            sqlConnection.Open();
            memberCommand.ExecuteNonQuery();

            SqlCommand packageCommand1 = new SqlCommand();
            packageCommand1.Connection = sqlConnection;
            packageCommand1.CommandText = "select max(user_id) from member";

            int x = int.Parse(packageCommand1.ExecuteScalar().ToString());
           
            //SqlDataReader staffReader = packageCommand1.ExecuteReader();
            //int id = 0;
            //while (staffReader.Read())
            //{
            //    id = int.Parse(staffReader["user_id"].ToString());
            //}
            //sqlConnection.Close();
            
            return x;


        }


       public int AddMemberUser(Member member)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand memberCommand = new SqlCommand();
            memberCommand.Connection = sqlConnection;
            memberCommand.CommandText = "insert into member(first_name,last_name,email,phone_number,login_type) values(@first_name,@last_name,@email,@phone_number,@login_type)";
            SqlParameter[] param = new SqlParameter[5];
            param[0] = new SqlParameter("@first_name", member.FirstName);
            param[1] = new SqlParameter("@last_name", member.LastName);
            param[2] = new SqlParameter("@email", member.EmailId);
            param[3] = new SqlParameter("@phone_number", member.PhoneNumber);
            param[4] = new SqlParameter("@login_type", member.LoginType);
            memberCommand.Parameters.AddRange(param);
            sqlConnection.Open();
            memberCommand.ExecuteNonQuery();

            SqlCommand memberCommand1 = new SqlCommand();
            memberCommand1.CommandText = "select max(user_id) from member";
            memberCommand1.Connection = sqlConnection;
            int id=int.Parse(memberCommand1.ExecuteScalar().ToString());            
            sqlConnection.Close();
            return id;

        }
       public void ModifyMemberStaff(Member member)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand memberCommand = new SqlCommand();
            memberCommand.Connection = sqlConnection;
            memberCommand.CommandText = "update member set " +
                                       "first_name=@first_name,last_name=@last_name,gender=@gender,"+
                                       "email=@email,phone_number=@phone_number,salary=@salary,login_type=@login_type,approval=@approval "+
                                       "where user_id=@user_id";
            SqlParameter[] updateparam = new SqlParameter[9];
            updateparam[0] = new SqlParameter("@user_id", member.UserId);
            updateparam[1] = new SqlParameter("@first_name", member.FirstName);
            updateparam[2] = new SqlParameter("@last_name", member.LastName);
            updateparam[3] = new SqlParameter("@gender", member.Gender);
            updateparam[4] = new SqlParameter("@email", member.EmailId);
            updateparam[5] = new SqlParameter("@phone_number", member.PhoneNumber);
            updateparam[6] = new SqlParameter("@salary", member.Salary);
            updateparam[7] = new SqlParameter("@login_type", member.LoginType);
            updateparam[8] = new SqlParameter("@approval", member.Approval);
            memberCommand.Parameters.AddRange(updateparam);
            sqlConnection.Open();
            memberCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }

        public List<Member> ShowSatff()
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand memberCommand = new SqlCommand();
            memberCommand.CommandText = "select * from member where login_type=@login_type";
     
            char s = 'S';
            SqlParameter[] Param = new SqlParameter[1];
            Param[0] = new SqlParameter("@login_type", s);

            memberCommand.Parameters.AddRange(Param);
            memberCommand.Connection = sqlConnection;
            sqlConnection.Open();
            SqlDataReader memberReader = memberCommand.ExecuteReader();
            List<Member> memberList = new List<Member>();
           
            while (memberReader.Read())
            {
                memberList.Add(new Member(int.Parse(memberReader["user_id"].ToString()),
                memberReader["first_name"].ToString(),
                memberReader["last_name"].ToString(),
                memberReader["gender"].ToString(),
                memberReader["email"].ToString(),
                long.Parse(memberReader["phone_number"].ToString()),
                memberReader["password"].ToString(),
                double.Parse(memberReader["salary"].ToString()),
                memberReader["permanent_address"].ToString(),
                memberReader["corresponding_address"].ToString(),
                char.Parse(memberReader["login_type"].ToString()),
                int.Parse(memberReader["approval"].ToString())));
            }
            memberReader.Close();
            sqlConnection.Close();
            return memberList;
        }

        public void DeleteMemberStaff(int userId)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand memberCommand = new SqlCommand();
            memberCommand.Connection = sqlConnection;
            memberCommand.CommandText = "delete from member where user_id = @user_id";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@user_id", userId);   
            memberCommand.Parameters.AddRange(param);
            sqlConnection.Open();
            memberCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }

        public void UpdateMemberStaff(int userId,string password)
        {
            SqlConnection sqlConnection = new SqlConnection(Utility.GetConnectionString("CourierTracking"));
            SqlCommand memberCommand = new SqlCommand();
            memberCommand.Connection = sqlConnection;
            memberCommand.CommandText = "update member set password=@password where user_id = @user_id";
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@user_id", userId);
            param[1] = new SqlParameter("@password", password);
            memberCommand.Parameters.AddRange(param);
            sqlConnection.Open();
            memberCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }

    }
}
