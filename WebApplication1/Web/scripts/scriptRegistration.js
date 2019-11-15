function ValidateRegister() {
    var firstName = document.getElementById("txt_firstName").value;
    

    var lastName = document.getElementById("txt_lastName").value;



    var password = document.getElementById("txt_password").value;

    var emailId = document.getElementById("txt_emailId").value;
    var phonenumbercheck = /^\d{10}$/;
    var phoneNumber = document.getElementById("txt_phoneNumber").value;
    var permanentAddress = document.getElementById("txt_permanentAddress").value;
    var currentAddress = document.getElementById("txt_currentAddress").value;
    var emailcheck = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    var regex = /^[a-zA-Z]{2,30}$/;

    if (firstName == "") {
       
        document.getElementById("Label1").innerText = "First Name required";
        document.getElementById("txt_firstName").focus();
        return false;
    }

    if (!(firstName.match(regex)))
    {

        document.getElementById("Label1").innerText = "Check your First Name ";
        document.getElementById("txt_firstName").focus();
        return false;
    }
    if (!(lastName.match(regex))) {

        document.getElementById("Label1").innerText = "Check your Last Name ";
        document.getElementById("txt_lastName").focus();
        return false;
    }
    if (password == "") {
       
        document.getElementById("Label1").innerText = "Password required";
        document.getElementById("txt_password").focus();
        return false;
    }
    if (emailId == "") {
      
        document.getElementById("Label1").innerText = "Email ID required";
        document.getElementById("txt_emailId").focus();
        return false;
    }

    if (!(emailId.match(emailcheck))) {
       
        document.getElementById("Label1").innerText = "Check your Email ID !";
        document.getElementById("txt_emailId").focus();
        return false;
    }
    if (!(phoneNumber.match(phonenumbercheck))) {
       
        document.getElementById("Label1").innerText = "Phone number should have 10 digits";
        document.getElementById("txt_phoneNumber").focus();
        return false;
    }
    if (permanentAddress == "") {
  
        document.getElementById("Label1").innerText = "Permanent Address required";
        document.getElementById("txt_permanentAddress").focus();
        return false;
    }
    if (currentAddress == "") {
        document.getElementById("Label1").innerText = "Current Address required";
        document.getElementById("txt_currentAddress").focus();
        return false;
    }



}



function ValidateModifyStaff() {
    var firstName = document.getElementById("txt_firstName").value;
    var emailId = document.getElementById("txt_emailId").value;    
   
    var phonenumbercheck = /^\d{10}$/;
    var salary = document.getElementById("txt_salary").value;
    var phoneNumber = document.getElementById("txt_phoneNumber").value;
    
    var emailcheck = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    if (firstName == "") {
        document.getElementById("Label1").innerText = "First Name required";
        
        document.getElementById("txt_firstName").focus();
        return false;
    }

    if (emailId == "") {
       
        document.getElementById("Label1").innerText = "Email ID required";
        document.getElementById("txt_emailId").focus();
        return false;
    }

    if (!(emailId.match(emailcheck))) {
      
        document.getElementById("Label1").innerText = "Check your Email ID !";
        document.getElementById("txt_emailId").focus();
        return false;
    }
    if (!(phoneNumber.match(phonenumbercheck))) {
      
        document.getElementById("Label1").innerText = "Phone number should have 10 digits";
        document.getElementById("txt_phoneNumber").focus();
        return false;
    }
    if (salary == "") {
        
        document.getElementById("Label1").innerText = "Please Enter Salary";
        document.getElementById("txt_salary").focus();
        return false;

    }
    if (isNaN(salary)) {
      
        document.getElementById("Label1").innerText = "Salary has to be in numbers ";
        document.getElementById("txt_salary").focus();
        return false;
        
    }



}
function ValidateModifyPackage() {
    var acceptDate = document.getElementById("txt_acceptDate").value;
    var packageWeight = document.getElementById("txt_packageWeight").value;
    var price = document.getElementById("txt_price").value;
    var senderAddress = document.getElementById("txt_senderAddress").value;
    var currentLocation = document.getElementById("txt_currentLocation").value;
    
    var receiverAddress = document.getElementById("txt_receiverAddress").value;
    var employeeId = document.getElementById("txt_employeeId").value;
    if (currentLocation == "")
    {
        alert("Current Location is required");
        document.getElementById("txt_currentLocation").focus();
        return false;
    }

    if (acceptDate == "") {
        alert("Accept Date is required");
        document.getElementById("txt_acceptDate").focus();
        return false;
    }



    if (packageWeight == "") {
        alert("Package Weight is required");

        document.getElementById("txt_packageWeight").focus();
        return false;
    }
    if (price == "") {
        alert("Price is required");

        document.getElementById("txt_price").focus();
        return false;
    }

    if (senderAddress == "") {
        alert("Sender Address is required");

        document.getElementById("txt_senderAddress").focus();
        return false;
    }
    if (receiverAddress == "") {
        alert("Receiver Address is required");

        document.getElementById("txt_receiverAddress").focus();
        return false;
    }
    if (employeeId == "") {
        alert("employee Id is required");

        document.getElementById("txt_employeeId").focus();
        return false;        
    }

}

