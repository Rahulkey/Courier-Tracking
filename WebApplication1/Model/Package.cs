using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Package
    {
        private int _packageId;

        public int PackageId
        {
            get { return _packageId; }
            set { _packageId = value; }
        }
        private DateTime _acceptDate;

        public DateTime AcceptDate
        {
            get { return _acceptDate; }
            set { _acceptDate = value; }
        }
        private double _packageWeight;

        public double PackageWeight
        {
            get { return _packageWeight; }
            set { _packageWeight = value; }
        }
        private double _price;

        public double Price
        {
            get { return _price; }
            set { _price = value; }
        }
        private string _senderAddress;

        public string SenderAddress
        {           
            get { return _senderAddress; }
            set { _senderAddress = value; }
        }
        private string _receiverAddress;

        public string ReceiverAddress
        {
            get { return _receiverAddress; }
            set { _receiverAddress = value; }
        }
        private int _customerId;

        public int CustomerId
        {
            get { return _customerId; }
            set { _customerId = value; }
        }
        private int _employeeId;

        public int EmployeeId
        {
            get { return _employeeId; }
            set { _employeeId = value; }
        }
        private string _currentLocation;

        public string CurrentLocation
        {
            get { return _currentLocation; }
            set { _currentLocation = value; }
        }
        private int _packageStatus;

        public int PackageStatus
        {
            get { return _packageStatus; }
            set { _packageStatus = value; }
        }
        public Package()
        {

        }
        public Package(int PackageId,DateTime AcceptDate,double PackageWeight,double Price,string SenderAddress,string ReceiverAddress,int CustomerId,int EmployeeId,string CurrentLocation,int PackageStatus)
        {
            this.PackageId = PackageId;
            this.AcceptDate = AcceptDate;
            this.PackageWeight = PackageWeight;
            this.Price = Price;
            this.SenderAddress = SenderAddress;
            this.ReceiverAddress = ReceiverAddress;
            this.CustomerId = CustomerId;
            this.EmployeeId = EmployeeId;
            this.CurrentLocation = CurrentLocation;
            this.PackageStatus = PackageStatus;

        }
        public Package(DateTime AcceptDate, double PackageWeight, double Price, string SenderAddress, string ReceiverAddress, int CustomerId, int EmployeeId, string CurrentLocation, int PackageStatus)
        {
            this.AcceptDate = AcceptDate;
            this.PackageWeight = PackageWeight;
            this.Price = Price;
            this.SenderAddress = SenderAddress;
            this.ReceiverAddress = ReceiverAddress;
            this.CustomerId = CustomerId;
            this.EmployeeId = EmployeeId;
            this.CurrentLocation = CurrentLocation;
            this.PackageStatus = PackageStatus;
        }
        public Package(string SenderAddress, string ReceiverAddress, int CustomerId)
        {         
            this.SenderAddress = SenderAddress;
            this.ReceiverAddress = ReceiverAddress;
            this.CustomerId = CustomerId;        
        }

      
        public override string ToString()
        {
            return "Package [PackageId=" + _packageId + ", AcceptDate=" + _acceptDate + ", PackageWeight=" + _packageWeight + ", Price=" + _price +
                   ", SenderAddress=" + _senderAddress + ", ReceiverAddress" + _receiverAddress +
                   ", CustomerId" + _customerId + ", EmployeeId" + _employeeId + ", CurrentLocation" + _currentLocation + ", PackageStatus" + _packageStatus + "]";

        }
        public override bool Equals(object obj)
        {
            if (this == obj)
                return true;
            if (obj == null)
                return false;
            if (GetType() != obj.GetType())
                return false;
            Package other = (Package)obj;
            if (_packageId != other._packageId)
                return false;
            return true;
        }
        public override int GetHashCode()
        {
            return base.GetHashCode();
        }
        
    }
}
