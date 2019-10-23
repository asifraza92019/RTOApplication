<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


  
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
     <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"> </script>
	 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
    <script>
  
  
  
  $(function() {
	    
	    $( "#createDate" ).datepicker({
	        changeMonth: true,
	        changeYear: true
	      });
	    
	    $( "#updateDate" ).datepicker({
	        changeMonth: true,
	        changeYear: true
	      });

	    $('form[id="vehicleDetails"]').validate({
			rules : {
			
				vechileType : 'required',
				manufacturingYear : 'required',
				vehicleBrand  : 'required',
				createDate : 'required',
				updateDate : 'requied'
				
			},
			messages : {
			
				vechileType : 'please choose your vehicle type',
				manufacturingYear: 'select vehicle manufacturing year',
				vehicleBrand : 'enter your  vehicle brand',
				createDate : 'enter created date',
				updateDate : 'enter updated date'
				
			},
			submitHandler : function(form) {
				form.submit();
			}
		});
	});
  
  </script>

 
  <style>
       .error {
	color: #FF0000
      }
      
      </style>
      





</head>
<body>

 <h1>this is vehicle detail registration form </h1>
 
 <form:form method ="post"  action="/SBFormApp/vehicledetail/savevehicledetails" modelAttribute="vehicleDetails" id="vehicleDetails">
  
   <table align= "center">
     <tr>
      <td>Vehicle Type</td>
      <td>
      <form:select path="vechileType">
      <form:option value="2"/>Two-Wheeler
      <form:option value ="3-wheeler"/>Three-wheeler
      <form:option value ="4-wheeler"/>Four-wheeler
      <form:option value="8-wheeler"/>Eight-wheeler
      <form:option value="10-wheeler"/>Ten-wheeler
      <form:option value="16-wheeler"/>Sixteen-wheeler
      
      
      </form:select>
      
      
      
      </td>
     </tr>
   
     <tr>
     <td>Manufacturing Year</td>
     <td>
      <form:input path ="manufacturingYear"/>
     </td>
     
     </tr>
   
   <tr>
      <td>Vehicle Brand</td>
   <td>
    <form:input path ="vehicleBrand"/>
   </td>
   </tr>
   
   <tr>
    <td>Created Date</td>
    <td><form:input path="createDate" id="createDate"/></td>
   </tr>
   
   <tr>
    <td>Updated Date</td>
    <td><form:input path="updateDate" id="updateDate"/></td>
   </tr>
   
   
    <tr>
    <td > <a href ="#">Previous</a></td>
    <td>
     <input type="submit" value ="Register">
    </td>
    </tr>
   
   
   </table>
 
 
 </form:form>
 
  
 
</body>
</html>