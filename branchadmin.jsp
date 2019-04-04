<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="springcore" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<%@taglib uri="http://www.springframework.org/tags/form" prefix="springform" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link type="text/css" rel="stylesheet" href="<c:url value="stylesheet/home.css" />" />


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
	right: 20%;
}

/* If you want the content centered horizontally and vertically */
.centered {
	position: absolute;
	top: 30%;
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

<springform:form modelAttribute="medicine" method="get" action="createbranchadmin.htm">
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
<div class=" split rights">
  
  <table cellspacing="3" cellpadding="5">
<tr>
<th class="listh"> BranchAdminID</th><th class="listh">  FirstName  </th><th class="listh"> LastName </th><th cellspacing="2" class="listh">  BranchName </th><th class="listh">  ContactNo  </th> 
<th class="listh">  EmailId  </th> 
</tr>
<tr>
</tr>
<tr>
</tr>
<c:forEach items="${branchAdminList}" var="branchAdmin">
<c:url var = "detailsLink" value="branchAdminDetails.htm">
  <c:param name="branchAdminId" value="${branchAdmin.branchAdminId}"></c:param>
  </c:url>
  
<tr class="listd">
<td align="center"><a class="listd"  href="${detailsLink}">${branchAdmin.branchAdminId}</a></td>

<td  align="center"><c:out value="${branchAdmin.branchAdminFirstName}"/></td>

<td  align="center"><c:out value="${branchAdmin.branchAdminLastName}"/></td>

<td  align="center"><c:out value="${branchAdmin.branchName}"/></td>

<td  align="center"><c:out value="${branchAdmin.branchAdminContactNo}"/></td>
<td  align="center"><c:out value="${branchAdmin.branchAdminEmailId}"/></td>

</tr>
</c:forEach>

<tr>
<td>
</td>
<td>

</td>
<td  align="center">


</tr>
</table>
<form action="createbranchadmin.htm" method="get" >
<input class="listd" type="submit" value="Create Branch Admin"/>
</form>
</div>


  




</springform:form>

</body>
</html>