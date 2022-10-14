<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="BeanPackage.BeanClass" %>
    <%@page import="LogicPackage.LogicClass" %> 
    <%@page import="Connection.ConnectionClass" %>
    
    
   
       
      <% 

      BeanClass beanClass = new BeanClass(); 
      LogicClass logicClass = LogicClass.getObjLazyMethod();
      ResultSet resultset;
      
     if(session.getAttribute("id")!=null){
    	 String studentid = session.getAttribute("id").toString();
    	 int studentId = Integer.parseInt(studentid);
    	  resultset = logicClass.viewupdate(studentId);
     
    	  %> 	
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Password</title>

   
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
         <style>
    .background-radial-gradient {
      background-color: hsl(218, 41%, 15%);
      background-image: radial-gradient(650px circle at 0% 0%,
          hsl(218, 41%, 35%) 15%,
          hsl(218, 41%, 30%) 35%,
          hsl(218, 41%, 20%) 75%,
          hsl(218, 41%, 19%) 80%,
          transparent 100%),
        radial-gradient(1250px circle at 100% 100%,
          hsl(218, 41%, 45%) 15%,
          hsl(218, 41%, 30%) 35%,
          hsl(218, 41%, 20%) 75%,
          hsl(218, 41%, 19%) 80%,
          transparent 100%);
    }

    #radius-shape-1 {
      height: 220px;
      width: 220px;
      top: -60px;
      left: -130px;
      background: radial-gradient(#44006b, #ad1fff);
      overflow: hidden;
    }

    #radius-shape-2 {
      border-radius: 38% 62% 63% 37% / 70% 33% 67% 30%;
      bottom: -60px;
      right: -110px;
      width: 300px;
      height: 300px;
      background: radial-gradient(#44006b, #ad1fff);
      overflow: hidden;
    }

    .bg-glass {
      background-color: hsla(0, 0%, 100%, 0.9) !important;
      backdrop-filter: saturate(200%) blur(25px);
    }
  </style>
        
</head>
<body>


<section class="background-radial-gradient overflow-hidden">
 
  <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
    <div class="row gx-lg-5 align-items-center mb-5">
      <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
        <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
          Change your temporary password  <br />
          <span style="color: hsl(218, 81%, 75%)">and create your own password</span>
        </h1>
        <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
         
        </p>
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0 position-relative">
        <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
        <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

        <div class="card bg-glass">
          <div class="card-body px-4 py-5 px-md-5">
            <form>
             <% 
            
             while(resultset.next())
    	       {
            	 
            	 %> 
              <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
           <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="number" value = "<%=resultset.getString(1)%>" name="studentid" id="form3Example1" class="form-control" required  readonly/>
                    <label class="form-label" for="form3Example1"></label>
                  
                </div>
                </div>
                
                   	<%
		                  }
		               }
     
     
    
     if(request.getParameter("update")!=null)
     {   String studentid = session.getAttribute("id").toString();
	     int studentId = Integer.parseInt(studentid);
	     resultset = logicClass.viewupdate(studentId);
         String studentName = request.getParameter("studentname");
         String email = request.getParameter("email");
         String studentPassword = request.getParameter("studentpassword");
         String confirmPassword = request.getParameter("confirmpassword");
         String mobile = request.getParameter("mobile");
         beanClass.setStudentId(studentId);
         beanClass.setStudentName(studentName);
         beanClass.setEmail(email);
         beanClass.setStudentPassword(studentPassword);
         beanClass.setConfirmPassword(confirmPassword);
         beanClass.setMobile(mobile);
         int result = logicClass.updateRecords(beanClass);
         
                  
     }
     

%>
   
     
                     
                
               <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" value = "" name="studentname" id="form3Example2" class="form-control" required />
                    <label class="form-label" for="form3Example2">Student Name</label>
                  </div>
              </div>


              <!-- Email input -->
              <div class="form-outline mb-4">
                <input type="email" name="email"  id="form3Example3" class="form-control" required/>
                <label class="form-label" for="form3Example3">Email address</label>
              </div>

              <!-- Password input -->
              <div class="form-outline mb-4">
                <input type="password" name="studentpassword" id="form3Example4" class="form-control" required/>
                <label class="form-label" for="form3Example4">New Password</label>
              </div>
              
               <div class="form-outline mb-4">
                <input type="password" name="confirmpassword" id="form3Example4" class="form-control" required/>
                <label class="form-label" for="form3Example4">Conform New Password</label>
              </div>
                 <div class="form-outline mb-4">
                <input type="number" name="number" id="form3Example4" class="form-control" required/>
                <label class="form-label" for="form3Example4">Mobile Number</label>
              </div>
              
              

              

              <!-- Submit button -->
              <button type="submit" name ="update" class="btn btn-primary btn-block mb-4">
             Update
              </button>
              	
              

              <!-- Register buttons -->
              <div class="text-center">
                <p> Have an account?</p><a href="Userpage.jsp"><em>Profile </em> </a>
               
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>