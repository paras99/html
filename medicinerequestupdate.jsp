<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="springcore" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<%@taglib uri="http://www.springframework.org/tags/form" prefix="springform" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link type="text/css" rel="stylesheet" href="<c:url value="stylesheet/home.css" />" />



<script> 

function alphaOnly(event) {
	  var key = event.keyCode;
	  return ((key >= 65 && key <= 90) || key == 8||(key >= 97 && key <= 122));
	};

	function numberOnly(event)
	{
		  var charCode = event.keyCode;
	   if (charCode > 31 && (charCode < 48 || charCode > 57)) {
	        return false;
	    }
	    return true;
	}

	function alphaSpecific(event) {
	  var key = event.keyCode;
	  return ((key == 65 || key == 67) || (key == 97 || key==99));
	}


function validit(event)                                    
{ 
           
    var mdess = document.getElementById("medicine_description").value;    
    var cff = document.getElementById("cure_for").value;  
    var pff =  document.getElementById("prescribed_for").value;  
    var mcc = document.getElementById("manufacturing_company").value;  
    var doss = document.getElementById("dosage").value;  
    var qtyy = document.getElementById("quantity").value; 
    
 if (mdess == ""|| mdess==null)                               
    { 
       alert("Please enter your description."); 
        
        return false; 
    } 
       
    else if (cff== ""|| cff ==null)                                   
    { 
       alert("Please enter a cure for."); 
       
        return false; 
    } 
   
    
    else   if (pff == ""|| pff ==null)                           
    { 
       alert("Please enter your prescribed for ."); 
       
        return false; 
    } 
   
    else if (mcc == ""|| mcc ==null)                        
    { 
      alert("Please enter your manufacturing  company"); 
        
        return false; 
    }
    else   if (doss == ""||doss ==null)                        
    { 
        alert("Please enter your dossage"); 
       
        return false; 
    } 
    else  if (qtyy == ""|| qtyy ==null)                        
    { 
       alert("Please enter your quantity"); 
       
        return false; 
    } 
    else
    return true; 
}</script> 






<style>
body {
	background: url(images/back10.jpg) no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

.split {
	height : 100%;
	position: fixed;
	z-index: 1;
	top: 10;
	overflow-x: hidden;
	padding-top: 10px;
}

/* Control the left side */
.left {
	width: 80%;
	font-size : 30px;
	text-shadow: 1px 1px #FF0000;
}

/* Control the right side */
.right {
	width: 80%;
	right: 30%;
}

/* If you want the content centered horizontally and vertically */
.centered {
	position: absolute;
	top: 40%;
	left : 70%;
	transform: translate(-50%, -50%);
	text-align: center;
}

.centered img {
  width: 150px;
  border-radius: 50%;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="<c:url value='back1.jpg' />">

<springform:form modelAttribute="medicine" name="RegForm"  method="get" action="addMedicineData.htm" >

<body>

<div class="dropdown" id="rights">

    
    <a href="#">Logout</a>
   

</div>
   
 
<br><br>
<div  class="dropdown" id="right">
<a class="font" >Request</a>
<div  class="dropdown-content">
    <a href="#">Add Request </a>
    <a href="#">Response</a>
   

</div>
</div>
<div  class="dropdown" id="right">
<a class="font">Stocks</a>
<div class="dropdown-content">
    <a href="branchadmindetails.htm">Update Stock</a>
   

</div>
</div>
<div id="right" class="dropdown" >
<a class="font">Medicines</a>
<div  class="dropdown-content">
    <a href="#">Add Medicine</a>
    <a href="#">Update Medicine</a>
   

</div>
</div>

<div id="right" class="dropdown "  >
  <a class="font">Branch Admin</a>
  <div class="dropdown-content">
    <a href="#">Available BA</a>
    <a href="#">Create New</a>
    <a href="#">Edit/Update</a>
</div>
</div>

<div class="outer-div"><div class="inner-div">
</div></div>


<div class="split lefts">
   
    <table cellspacing="10">
<tr>
<td class="fonts" >Request ID :<c:out value="${medicineRequest.requestId}"/></td>
</tr>
<tr>
<tr>
<td class="fonts" >ID :<c:out value="${medicineRequest.branchAdminId}"/></td>
</tr>
<tr>
<td class="fonts" >Date Of Request:<c:out value="${medicineRequest.requestDate}"/></td>
</tr>
</table>
<div class="buttom listh">
<table>
</tr>
<tr>
<td><c:out value="${medicineRequest.otherInfo}"/></td>
</tr>

<springform:form modelAttribute="medicineRequest" method="post" action="approvestatusrequest.htm">
<tr>
<td><springform:label path="adminRemarks">Remarks:</springform:label>
<td><springform:textarea path="adminRemarks"/>
</tr>
<tr>

<td><c:out value="${message}"/></td>
</tr>
</springform:form>
<springform:form modelAttribute="medicineRequest" method="post" action="rejectstatusrequest.htm">
<tr>

</tr>
</springform:form>
<div >
<input class="listh" type="Submit" value="Approve"/>
<input class="listh" type="Submit" value="Reject"/>
</div>
</table>
</div>
  </div>
<div class=" split righter">
  

<table cellspacing="20">



<tr>
<th class="listh"> MedicineId </th><th class="listh">  Quantity </th>
</tr>
<tr>
<td align="center" class="fonts breaking"><c:out value="${medicineRequest.medicine1Id}"/></td>
<td align="center" class="fonts breaking"><c:out value="${medicineRequest.quantity1}"/></td>
</tr>
<tr>
<td align="center" class="fonts breaking"><c:out value="${medicineRequest.medicine2Id}"/></td>
<td align="center" class="fonts breaking"><c:out value="${medicineRequest.quantity2}"/></td>
</tr>
<tr>
<td align="center" class="fonts breaking"><c:out value="${medicineRequest.medicine3Id}"/></td>
<td align="center" class="fonts breaking"><c:out value="${medicineRequest.quantity3}"/></td>
</tr>
<tr>
<td align="center" class="fonts breaking"><c:out value="${medicineRequest.medicine4Id}"/></td>
<td align="center" class="fonts breaking"><c:out value="${medicineRequest.quantity4}"/></td>
</tr>
<tr>
<td align="center" class="fonts breaking"><c:out value="${medicineRequest.medicine5Id}"/></td>
<td align="center" class="fonts breaking"><c:out value="${medicineRequest.quantity5}"/></td>
</tr>

</table>
  </div>



</springform:form>
<div id="footer">
</div>
</body>
</html>