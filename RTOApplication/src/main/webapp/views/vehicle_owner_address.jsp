<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
    
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
	
	
	    $('form[id="vehicleOwnerAddress"]').validate({
			rules : {
			
				houseNo : 'required',
				streetName : 'required',	
				city : 'required',
				zipCode : 'required',
				createDate : 'required',
				updateDate : 'required'
				
			},
			messages : {
			
				houseNo : 'house numnber required',
				streetName : 'street name required',
				city: 'choose your city',
				zipCode: 'zipcode required',
				createDate: 'enter created date',
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

<h1>Vehicle Owner Address Form</h1>
<form:form method ="post" action ="/SBFormApp/vehicleowneraddress/savevehicleowneraddress" modelAttribute="vehicleOwnerAddress" id ="vehicleOwnerAddress">
 
    <table align ="center">
     <tr>
      <td>House No</td>
      <td><form:input path="houseNo"/></td>
     </tr>
     
     <tr>
      <td>Streat </td>
      <td><form:input path ="streetName"/></td>
     </tr>
     
      <tr>
       <td>City</td>
       <td>
       <form:select path ="city">
         <form:option value="Alaska">Alaska</form:option>
         <form:option value="Texas">Texas</</form:option>
         <form:option value="Chico">Chico</form:option> 
         <form:option value="Eureka">Eureka</form:option>
         <form:option value="Fresno">Fresno</form:option> 
          
       </form:select>
       </td>
      </tr>
    
    <tr>
    <td>Zip Code</td>
    <td><form:input path="zipCode"/></td>
    </tr>
    
    
    <tr>
    <td>Created Date</td>
    <td><form:input path ="createDate" id ="createDate"/></td>
    </tr>
    
    <tr>
    <td>Updated Date</td>
    <td><form:input path ="updateDate" id ="updateDate"/></td>
    </tr>
    
    
    
    
    
    <tr>
    
      <td><a href ="#" >Previous</a></td>
     
     <td><input type="submit" value ="Next"></td>
    
    
    </tr>
    
    
    </table>


</form:form>



</body>
</html>