using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Dao
{
    class PackageDaoSqlTest
    {
        static void Main(string[] args)
        {
            TestGetPacakge();
           // TestPackageApproval();
           // TestShowTrackDetail();
           // TestAddPackageDetail();
           // TestModifyPackageDeatil();
           // TestModifyLocationPackageDetail();
            Console.ReadLine();
        }
        static void TestGetPacakge()
        {
            PackageDaoSql packageDaoSqlTest = new PackageDaoSql();
            Package package = new Package();
            package = packageDaoSqlTest.GetPackage(29);
            Console.WriteLine(package.CustomerId);
        }
     
        static void TestShowTrackDetail()
        {
            PackageDaoSql packageDaoSqlTest = new PackageDaoSql();
            string s = packageDaoSqlTest.ShowTrackDetail(1);
            Console.WriteLine(s);

        }
        static void TestAddPackageDetail()
        {
            PackageDaoSql packageDaoSqlTest = new PackageDaoSql();
            Package package = new Package("xyz","abc",1);
            int x=packageDaoSqlTest.AddPackageDetail(package);
            Console.WriteLine(x);
        }
        static void TestModifyPackageDeatil()
        {
            PackageDaoSql modifyPackageTest = new PackageDaoSql();
            Package modifyPackage = new Package(1, DateTime.Parse("02/02/2019"), 1000, 500, "abc", "xyz", 1234, 0,"current", 0);
            modifyPackageTest.ModifyPackageDeatil(1, modifyPackage);
        }
        static void TestModifyLocationPackageDetail()
        {
            PackageDaoSql modifyPackageLocationTest = new PackageDaoSql();
         //   Package modifyPackageLocation = new Package(4,"current");

            modifyPackageLocationTest.ModifyLocationPackageDetail(4, "current");
        }
    }
}