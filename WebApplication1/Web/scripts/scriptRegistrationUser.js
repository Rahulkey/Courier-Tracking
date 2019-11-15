function ValidateRegister() {
    var firstName = document.getElementById("txt_firstName").value;

    var lastName = document.getElementById("txt_lastName").value;

    var emailId = document.getElementById("txt_emailId").value;
    var phonenumbercheck = /^\d{10}$/;
    var pincodecheck = /^\d{6}$/;
    var phoneNumber = document.getElementById("txt_phoneNumber").value;
    var senderAddress = document.getElementById("txt_senderAddress").value;
    var receiverAddress = document.getElementById("txt_receiverAddress").value;
    var emailcheck = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    var senderPincode = document.getElementById("txt_senderPincode").value;
    var receiverPincode = document.getElementById("txt_receiverPincode").value;
    
    if (firstName == "") {

        document.getElementById("Label5").innerText = "First Name required";
        document.getElementById("txt_firstName").focus();
        return false;
    }


    var regex = /^[a-zA-Z]{2,30}$/;

    if (!(firstName.match(regex))) {

        document.getElementById("Label5").innerText = "Check your First Name ";
        document.getElementById("txt_firstName").focus();
        return false;
    }
    if (!(lastName.match(regex))) {

        document.getElementById("Label5").innerText = "Check your Last Name ";
        document.getElementById("txt_lastName").focus();
        return false;
    }
    
    if (emailId == "") {

        document.getElementById("Label5").innerText = "Email ID required";
        document.getElementById("txt_emailId").focus();
        return false;
    }
    if (!(emailId.match(emailcheck))) {
        document.getElementById("Label5").innerText = "Check your Email ID !";
       
        document.getElementById("txt_emailId").focus();
        return false;
    }
    if (!(phoneNumber.match(phonenumbercheck))) {


        document.getElementById("Label5").innerText = "Phone number should have 10 digits";      
        document.getElementById("txt_phoneNumber").focus();
        return false;
    }
    if (senderAddress == "") {
        document.getElementById("Label5").innerText = "Sender Address required";
      

        document.getElementById("txt_senderAddress").focus();
        return false;
    }
    if (!(senderPincode.match(pincodecheck))) {
        document.getElementById("Label5").innerText = "Pincode should have 6 digits";

        document.getElementById("txt_senderPincode").focus();
        return false;
    }
    
   
   
    if (!(receiverPincode.match(pincodecheck))) {
        document.getElementById("Label5").innerText = "Pincode should have 6 digits";
        document.getElementById("txt_receiverPincode").focus();
        return false;
    }

    

       
    if (receiverAddress == "") {
    
        document.getElementById("Label5").innerText = "Receiver Address required";
        document.getElementById("txt_receiverAddress").focus();
        return false;
    }



}

function ValidatePincode() {
    var pincodecheck = /^\d{6}$/;
    var senderPincode = document.getElementById("txt_senderPincode").value;
    if (!(senderPincode.match(pincodecheck))) {
        document.getElementById("Label5").innerText = "Sender address pincode should have 6 digits";
     

        document.getElementById("txt_senderPincode").focus();
        return false;
    }

}
function ValidatePincode1()
{
    var receiverPincode = document.getElementById("txt_receiverPincode").value;
    
    if (!(receiverPincode.match(pincodecheck))) {
     
        document.getElementById("Label5").innerText = "Receiver address pincode should have 6 digits";
        document.getElementById("txt_receiverPincode").focus();
        return false;
    }

  
}

function ValidatePackageId() {
    
    var packageId = document.getElementById("txt_packageId").value;
    if (packageId == "") {       
        document.getElementById("Label8").innerText = "Please provide Package Id ";
        return false;
    }


}