using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Dao
{
    public class MemberDaoSqlTest
    {
        static void Main(string[] args)
        {
            //TestShowStaffDetails();
            //TestAddMemberUser();
            TestGetMember();
            //TestAddStaffMember();
            //TestShowStaffMember();
            //TestDeleteMemberStaff();
           // TestModifyMemberStaff();
            Console.ReadLine();       
        }


        static void TestShowStaffDetails()
        {
            MemberDaoSql packageDaoSqlTest = new MemberDaoSql();
            List<Member> newlist = new List<Member>();
            newlist = packageDaoSqlTest.ShowSatff();
            foreach (Member staff in newlist)
                Console.WriteLine(staff + "\n");
        }

        static void TestAddMemberUser()
        {
            MemberDaoSql memberDaoSqlTest = new MemberDaoSql();
            Member member = new Member("Shyam", "singh", "rahul@gmail.com", 1234567899,'S');
           int x= memberDaoSqlTest.AddMemberUser(member);
           Console.WriteLine(x);
 

        }
        static void TestGetMember()
        {
            //MemberDaoSql memberDaoSqlTest = new MemberDaoSql();
            //Member member = memberDaoSqlTest.GetMember(54);
            //Console.WriteLine(member.EmailId);

            string s = "abcde123456";
            int l = s.Length;
            Console.WriteLine(s[l - (l - 5)]);


        }
        static void TestAddStaffMember()
        {
            MemberDaoSql memberDaoSqlTest = new MemberDaoSql();
            Member member = new Member("Rahul","Kumar","Male","rahul@gmail.com",1234567899,"abc",22000,"xyz","abc",'S',0);
            memberDaoSqlTest.AddMemberStaff(member);           
        }
        static void TestShowStaffMember()
        {
            
            MemberDaoSql memberDaoSqlTest = new MemberDaoSql();
            List<Member> member = memberDaoSqlTest.ShowSatff();
            foreach (Member staff in member)
                Console.WriteLine(staff+"\n");
        }
        static void TestModifyMemberStaff()
        {
            MemberDaoSql modifyMemberTest = new MemberDaoSql();
            Member modifyMember = new Member(5,"Raughj", "Kumabhjvghr", "Male", "rahul@gmail.com", 1234567899, "abc", 1100000, "xyz", "abc", 'S', 0);
            modifyMemberTest.ModifyMemberStaff(modifyMember);

            List<Member> member = modifyMemberTest.ShowSatff();
            Console.WriteLine("After Deletion !!!!");
            foreach (Member staff in member)
                Console.WriteLine(staff + "\n");
        }
        static void TestDeleteMemberStaff()
        {
            MemberDaoSql deleteStaff = new MemberDaoSql();
            deleteStaff.DeleteMemberStaff(3);
            List<Member> member = deleteStaff.ShowSatff();
            Console.WriteLine("After Deletion !!!!");
            foreach (Member staff in member)
                Console.WriteLine(staff + "\n");
        }
    }
}
