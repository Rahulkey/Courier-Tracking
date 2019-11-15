function ValidateWeight() {
    var packageWeight = document.getElementById("txt_packageWeight").value;

  
    
    if (packageWeight == "") {
      
        document.getElementById("Label2").innerText = "Please Enter Package Weight";
        document.getElementById("txt_packageWeight").focus();
        return false;
    }

    if (packageWeight < 50) {
        
        document.getElementById("Label2").innerText = "Package Weight can not be less than 50 gm";
        document.getElementById("txt_packageWeight").focus();
        return false;
    }

    if (packageWeight > 2000) {
        
        document.getElementById("Label2").innerText = "Package Weight can not be greater than 2000 gm";
        document.getElementById("txt_packageWeight").focus();
        return false;
    }

}

function ValidateModifyPackage() {
    var acceptDate = document.getElementById("txt_acceptDate").value;
    var packageWeight = document.getElementById("txt_packageWeight").value;
    var price = document.getElementById("txt_price").value;
    var senderAddress = document.getElementById("txt_senderAddress").value;  
    var receiverAddress = document.getElementById("txt_receiverAddress").value;
  //  var employeeId = document.getElementById("txt_employeeId").value;
    var cat = document.getElementById("cat").value;
    var pla = document.getElementById("pla").value;

    if (cat == "") {
        document.getElementById("Label2").innerText = "Delivery Status is required";       
        return false;
    }
    if (pla == "") {
        document.getElementById("Label2").innerText = "Delivery Location is required";    
        return false;
    }


    if (acceptDate == "") {
        document.getElementById("Label2").innerText = "Accept Date is required";        
        document.getElementById("txt_acceptDate").focus();
        return false;
    }



    if (packageWeight == "") {
        
        document.getElementById("Label2").innerText = "Package Weight is required";
        document.getElementById("txt_packageWeight").focus();
        return false;
    }

    var packageWeight = document.getElementById("txt_packageWeight").value;



    if (packageWeight == "") {

        document.getElementById("Label2").innerText = "Please Enter Package Weight";
        document.getElementById("txt_packageWeight").focus();
        return false;
    }

    if (packageWeight < 50) {

        document.getElementById("Label2").innerText = "Package Weight can not be less than 50 gm";
        document.getElementById("txt_packageWeight").focus();
        return false;
    }

    if (packageWeight > 2000) {

        document.getElementById("Label2").innerText = "Package Weight can not be greater than 2000 gm";
        document.getElementById("txt_packageWeight").focus();
        return false;
    }

    if (price == "") {
       
        document.getElementById("Label2").innerText = "Price is required";
        document.getElementById("txt_price").focus();
        return false;
    }

    if (senderAddress == "") {
    
        document.getElementById("Label2").innerText = "Sender Address is required";
        document.getElementById("txt_senderAddress").focus();
        return false;
    }
    if (receiverAddress == "") {
    
        document.getElementById("Label2").innerText = "Receiver Address is required";
        document.getElementById("txt_receiverAddress").focus();
        return false;
    }
    //if (employeeId == "") {
        
    //    document.getElementById("Label2").innerText = "Employee Id is required";
    //    document.getElementById("txt_employeeId").focus();
    //    return false;
    //}

}

