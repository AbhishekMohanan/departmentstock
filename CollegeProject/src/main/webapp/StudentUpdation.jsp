<%@page import="BeanPackage.MoreBeanClass"%>
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
<title>Student Details Updation</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<Style>
body {
    background: rgb(99, 39, 120)
}

.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8
}

.profile-button {
    background: rgb(99, 39, 120);
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #682773
}

.profile-button:focus {
    background: #682773;
    box-shadow: none
}

.profile-button:active {
    background: #682773;
    box-shadow: none
}

.back:hover {
    color: #682773;
    cursor: pointer
}

.labels {
    font-size: 11px
}

.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8
}

</Style>


</head>
<body>
<form method="post" action="?">
<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
          <% 
            
             while(resultset.next())
    	       {
            	 
            	 %> 
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://nehrucolleges.org/images/slider/international-conference.jpg"><span class="font-weight-bold"><%=resultset.getString(1)%></span><span mailto:class="text-black-50"><%=resultset.getString(2)%></span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h3 class="text-right"> <ul> Profile Settings</ul> </h3>
                </div>
                
              
                <div class="row mt-2">
                 
                    <div class="col-md-6"><label class="labels"></label><input type="number"  name="studentid" value="<%=resultset.getString(1)%>" class="form-control" placeholder=""  required readonly ></div>
                     <div class="form-group">
                       <%
	   }
     }
     %>                              <h4> Students College Details</h4>
     
      <%
	
      MoreBeanClass moreBeanClass = new MoreBeanClass();
       if(request.getParameter("update")!=null)
     {  String studentid = request.getParameter("studentid");
         int studentId = Integer.parseInt(studentid);
	     String degree = request.getParameter("degree");
         String branch = request.getParameter("branch");
         String curentYear = request.getParameter("year");
         String registrationNumber = request.getParameter("rnumber");
         String fatherName = request.getParameter("fathername");
         String fatherWork = request.getParameter("fatherwork");
         String fatherMobile = request.getParameter("fathermobile");
         String motherName = request.getParameter("mothername");
         String motherWork = request.getParameter("motherwork");
         String motherMobile = request.getParameter("mothermobile");
         String houseName = request.getParameter("housename");
         String landMark = request.getParameter("landmark");
         String city = request.getParameter("city");
         String district = request.getParameter("district");
         String state = request.getParameter("state");
         String country = request.getParameter("country");
         String pincode = request.getParameter("pincode");
         String gender = request.getParameter("gender");
         String dateofbirth = request.getParameter("dateofbirth");
         
         moreBeanClass.setStudentid(studentId);
         moreBeanClass.setDegree(degree);
         moreBeanClass.setBranch(branch);
         moreBeanClass.setCurentYear(curentYear);
         moreBeanClass.setRegistratioNumber(registrationNumber);
         moreBeanClass.setFatherName(fatherName);
         moreBeanClass.setFatherMobile(fatherMobile);
         moreBeanClass.setFatherWork(fatherWork);
         moreBeanClass.setMotherName(motherName);
         moreBeanClass.setMotherMobile(motherMobile);
         moreBeanClass.setMotherWork(motherWork);
         moreBeanClass.setLandMark(landMark);
         moreBeanClass.setHouseName(houseName);
         moreBeanClass.setCity(city);
         moreBeanClass.setDistrict(district);
         moreBeanClass.setState(state);
         moreBeanClass.setCountry(country);
         moreBeanClass.setPincode(pincode);
         moreBeanClass.setDateofBirth(dateofbirth);
         moreBeanClass.setGender(gender);
   
        
        
         int result = logicClass.registerRecords(moreBeanClass);
         
                  
     }


%>
   
                                        </div>
                                        <div class="col-md-12">
                                            <select class="form-control" name="degree">
                                                <option class="hidden"  selected disabled>Select Degree</option>
                                                <option>BE</option>
                                                <option>ME</option>
                                              
                                            </select>
                                        </div>
                                          <br> <br> <br>
                                         <div class="col-md-12">
                                            <select class="form-control" name="branch">
                                                <option class="hidden"  selected disabled>Select Branch</option>
                                                <option>Computer Science Engineering</option>
                                                <option>Mechanical Engineering</option>
                                                <option>Electrical and Electronics Engineering</option>
                                                <option>Electronics and Communications Engineering</option>
                                                <option>Civil Engineering</option>
                                                <option>Aeronautical Engineering</option>
                                            </select>
                                        </div>
                                        <br> <br> <br>
                                        <div class="col-md-12">
                                            <select class="form-control" name="year">
                                                <option class="hidden"  selected disabled>Select Year of Studying</option>
                                                <option>1st year</option>
                                                <option>2nd year</option>
                                                <option>3rd year</option>
                                                <option>4rd year</option>
                                         
                                            </select>
                                        </div>
                                        
                                        
                 <div class="col-md-12"><label class="labels">Registration Number</label><input type="number" name="rnumber" class="form-control" placeholder="Enter Registration Number" value=""></div>
                </div>
                <br>
                 <h5> Students Parents Details</h5> 
                <div class="row mt-3">
                   
                    <div class="col-md-12"><label class="labels">Father Name</label><input type="text" name="fathername"class="form-control" placeholder="Enter Father Name" value=""></div>
                    <div class="col-md-12"><label class="labels">Father Occupation</label><input type="text"name="fathermobile" class="form-control" placeholder="Enter Father Occupation" value=""></div>
                    <div class="col-md-12"><label class="labels">Father Mobile Number</label><input type="number"name="fatherwork" class="form-control" placeholder="Enter Father Mobile" value=""></div>
                    <div class="col-md-12"><label class="labels">Mother Name</label><input type="text"name="mothername" class="form-control" placeholder="Enter Mother Name" value=""></div>
                    <div class="col-md-12"><label class="labels">Mother occupation</label><input type="text"name="mothername" class="form-control" placeholder="Enter Mother Occupation" value=""></div>
                    <div class="col-md-12"><label class="labels">Mother Mobile Number</label><input type="text" name="mothername" class="form-control" placeholder="Enter Mother Mobile" value=""></div>
                    
                </div>
                <br>
              
                <h5> Students Residential Details</h3>
                <div class="row mt-3">
                 <div class="col-md-6"><label class="labels">House Name</label><input type="text" name="housename" class="form-control" placeholder="Enter House Name" value=""></div>
                  <div class="col-md-6"><label class="labels">Land Mark</label><input type="text" name="landmark" class="form-control" placeholder="Enter Landmark" value=""></div>
                    <div class="col-md-6"><label class="labels">City</label><input type="text" name="city" class="form-control" placeholder="Enter City" value=""></div>
                    <div class="col-md-6"><label class="labels">District</label><input type="text"  name="district" class="form-control" value="" placeholder="Enter District"></div>
                     <div class="col-md-6"><label class="labels">State</label><input type="text"  name="state" class="form-control" placeholder="Enter State" value=""></div>
                    <div class="col-md-6"><label class="labels">Country</label><input type="text"  name="country" class="form-control" value="" placeholder="Enter Country"></div>
                     <div class="col-md-6"><label class="labels">Pincode</label><input type="number"  name="pincode" class="form-control" placeholder="Enter Pincode" value=""></div>
                    
                </div>
               
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience"><span> <b>Personal Details</b></span><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;</span></div><br>
              <div class="maxl">
                                                <label class="radio inline"> Gender &nbsp; &nbsp; &nbsp; &nbsp;
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> Male </span> 
                                                </label>&nbsp; &nbsp;
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                            <br>
                                            <div class="col-md-12">
                                        <input placeholder="Date of Birth" name="dateofbirth" class="textbox-n" type="text" onfocus="(this.type='date')" id="date">
                                        </div> <br>
                        <button type="submit" name ="update" class="btn btn-primary btn-block mb-4"> Update </button>
                     
             
                      
            </div>
        </div>
         
       
    </div>
</div>
 </form> 
</body>
</html>