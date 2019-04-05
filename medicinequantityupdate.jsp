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

<springform:form modelAttribute="updateMedicine" method="get" action="updatemedicinequantity1.htm">
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


<div class="split lefti">
   
    
  </div>
<div class=" split righti">
  

<table cellspacing="20">


<tr>
<td class="fonts  breaking">MedicineId <c:out value="${updateMedicine.medicineId}"/></td>
</tr>



<tr>
<td class="fonts breaking"><springform:label  class="fonts"   path="quantity">Quantity:</springform:label>
<td class="fonts breaking"><springform:input  id="qty" path="quantity" name="cf" onkeypress=" return numberOnly(event) "  /></td>
</tr>


<tr>


<td><input class="listd" type="submit"  value="Edit" onclick="return validit(event)" ></td>

</tr>
</table>
  </div>
</body>


</springform:form>

</body>
</html>