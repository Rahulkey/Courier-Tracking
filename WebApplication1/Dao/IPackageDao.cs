using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Model;

namespace Dao
{
    interface IPackageDao
    {
        int AddPackageDetail(Package package);
        void ModifyPackageDeatil(int packageId, Package package);
        void ModifyLocationPackageDetail(int packageId, string CurrentLocation);
        string ShowTrackDetail(int packageId);
        Package GetPackage(int packageId);
        List<Package> PackageDetail();
        double GetCost(string origin, string destination,double weight);
        List<Package> PackageApproval();
        void AddReport(Package package,Member m);
        City GetCity(int pin_code);
        DataTable DeliveredPackageReport(DateTime startDate, DateTime endDate);
    }
}
