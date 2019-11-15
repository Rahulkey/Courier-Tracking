function Validate() {

    var UserID = document.getElementById("txt_userId").value;
    var Password = document.getElementById("txt_password").value;
    if (UserID == "") {
        //alert("UserID is required");
        document.getElementById("Label1").innerText = "UserID is required";
        return false;
    }
    if (isNaN(UserID)) {
        //alert("Check your UserID !")
        document.getElementById("Label1").innerText = "Check your UserID !";
        document.getElementById("txt_userId").focus();
        return false;
    }
    if (Password == "") {
       // alert("Password is required");
        document.getElementById("Label1").innerText = "Password is required";
        return false;
    }


}


function validatePassword() {

    var UserID = document.getElementById("txt_userId").value;
    var emailId = document.getElementById("txt_emailId").value;
    if (UserID == "") {
        document.getElementById("Label2").innerText = "UserID is required";
     
        return false;
    }
    if (isNaN(UserID)) {
     
        document.getElementById("Label2").innerText = "Check your UserID !";
        document.getElementById("txt_userId").focus();
        return false;
    }
    if (emailId == "") {
        document.getElementById("Label2").innerText = "EmailId is required";
        return false;
    }


}

function homePage() {
    var trackId = document.getElementById("track_Id").value;
    if (trackId == "") {
        alert("Track Id is required");
        return false;
    }
    if (isNaN(trackId)) {
        alert("Check your Track Id !");        
        return false;
    }


}