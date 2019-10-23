<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta charset="utf-8">
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
	    $( "#datepicker" ).datepicker({
	        changeMonth: true,
	        changeYear: true
	      });
	    
	    
	    $( "#createDate" ).datepicker({
	        changeMonth: true,
	        changeYear: true
	      });
	    
	    $( "#updateDate" ).datepicker({
	        changeMonth: true,
	        changeYear: true
	      });
	    
	    
	    $('[data-type="ssno-number"]').keyup(function() {
	    	  var value = $(this).val();
	    	  value = value.replace(/\D/g, "").split(/(?:([\d]{4}))/g).filter(s => s.length > 0).join("-");
	    	  $(this).val(value);
	    	});

	    	$('[data-type="ssno-number"]').on("change, blur", function() {
	    	  var value = $(this).val();
	    	  var maxLength = $(this).attr("maxLength");
	    	  if (value.length != maxLength) {
	    	    $(this).addClass("highlight-error");
	    	  } else {
	    	    $(this).removeClass("highlight-error");
	    	  }
	    	});
	    
	    
	   

	    $('form[id="vehicleOwner"]').validate({
			rules : {
			
				firstName : 'required',
				lastName : 'required',
				gender : 'required',
				email : {
					required : true,
					email : true
				},
				phoneNumber : 'required',
				dateOfBirth : 'required',
				ssno  : 'required',
				createDate : 'required',
				updateDate : 'required'
				
			},
			messages : {
			
				firstName : 'please enter your first name',
				lastName : 'please enter your last name',
				gender : 'select your gender',
				email : 'enter your email address',
				phoneNumber: 'enter your mobile number',
				dateOfBirth: 'enter your date of birth',
				ssno : 'enter your ssno',
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
      
      
      .highlight-error {
       border-color: red;
   }
      </style>
      


</head>
<body>

 
      <h1>This is vehicle owner details from</h1>                    

  <div class= "container">
  
     <form:form method = "post" action="/SBFormApp/vehicleownerdetails/vehicleownerdetails" modelAttribute="vehicleOwnerDetails" id ="vehicleOwner">
          <table  align ="center">
          <tr>
            <td>First Name</td>
            <td><form:input path ="firstName"/></td>
          </tr>
          <tr>
            <td>Last Name</td>
            <td><form:input path ="lastName"/></td>
          </tr>
          
          <tr>
           <td>Gender</td>
           <td><form:radiobutton path="gender"/>Male</td>
           <td><form:radiobutton path="gender"/>Female</td>
           
          </tr>
          
          
          <tr>
            <td>Email</td>
            <td><form:input path ="email"/></td>
          </tr>
          
           <tr>
            <td>Phone Number</td>
            <td><form:input path ="phoneNumber"/></td>
          </tr>
          
           <tr>
            <td>Date Of Birth</td>
            <td><form:input path ="dateOfBirth" id="datepicker"/></td>
          </tr>
          
           <tr>
            <td>SSNO</td>
            <td><form:input path ="ssno" data-type="ssno-number" maxLength="14"/></td>
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
            <td><input type="submit" value ="Next"></td>
          </tr>
          
          
          </table>
               
     </form:form>
  
  </div>
 
</body>
</html>