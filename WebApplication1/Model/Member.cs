using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Member
    {
        private int _userId;

        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }

        private string _firstName;

        public string FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
        private string _lastName;

        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }
        private string _gender;

        public string Gender
        {
            get { return _gender; }
            set { _gender = value; }
        }
        private string _emailId;

        public string EmailId
        {
            get { return _emailId; }
            set { _emailId = value; }
        }
        private long _phoneNumber;

        public long PhoneNumber
        {
            get { return _phoneNumber; }
            set { _phoneNumber = value; }
        }
        private string _password;

        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }
        private double _salary;

        public double Salary
        {
            get { return _salary; }
            set { _salary = value; }
        }
        private string _permanentAddress;

        public string PermanentAddress
        {
            get { return _permanentAddress; }
            set { _permanentAddress = value; }
        }

        private string _currentAddress;

        public string CurrentAddress
        {
            get { return _currentAddress; }
            set { _currentAddress = value; }
        }

        private char _loginType;

        public char LoginType
        {
            get { return _loginType; }
            set { _loginType = value; }
        }
        private int _approval;

        public int Approval
        {
            get { return _approval; }
            set { _approval = value; }
        }

        public Member()
        {

        }

        public Member(string FirstName, string LastName, string Gender, string EmailId, long PhoneNumber, string Password, double Salary, string PermanentAddress, string CurrentAddress, char LoginType, int Approval)
        {
          
            this.FirstName=FirstName;
            this.LastName = LastName;
            this.Gender=Gender;
            this.EmailId=EmailId;
            this.PhoneNumber=PhoneNumber;
            this.Password=Password;
            this.Salary=Salary;
            this.PermanentAddress=PermanentAddress;
            this.CurrentAddress=CurrentAddress;
            this.LoginType=LoginType;
            this.Approval=Approval;
        }
        public Member(int UserId, string FirstName, string LastName, string Gender, string EmailId, long PhoneNumber, string Password, double Salary, string PermanentAddress, string CurrentAddress, char LoginType, int Approval)
        {
            this.UserId = UserId;
            this.FirstName = FirstName;
            this.LastName = LastName;
            this.Gender = Gender;
            this.EmailId = EmailId;
            this.PhoneNumber = PhoneNumber;
            this.Password = Password;
            this.Salary = Salary;
            this.PermanentAddress = PermanentAddress;
            this.CurrentAddress = CurrentAddress;
            this.LoginType = LoginType;
            this.Approval = Approval;
        }
        public Member(string FirstName, string LastName, string EmailId, long PhoneNumber, char LoginType)
        {
            this.FirstName = FirstName;
            this.LastName = LastName;
            this.EmailId = EmailId;
            this.PhoneNumber = PhoneNumber;            
            this.LoginType = LoginType;            
        }



        public override string ToString()
        {
            return "Member [UserId= " + _userId + ", FirstName= " + _firstName + ", LastName= " + _lastName + ", Gender= " + _gender +
                   ", EmailId= " + _emailId + ", PhoneNumber= " + _phoneNumber +
                   ", Password= " + _password + ", Salary= " + _salary + ", PermanentAddress= " + _permanentAddress + ", CurrentAddress= " + _currentAddress + ", LoginType= " + _loginType +
                   ", Approval= " + _approval + "]";

        }
        public override bool Equals(object obj)
        {
            if (this == obj)
                return true;
            if (obj == null)
                return false;
            if (GetType() != obj.GetType())
                return false;
            Member other = (Member)obj;
            if (_userId != other._userId)
                return false;
            return true;
        }
        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

    
    }
}
