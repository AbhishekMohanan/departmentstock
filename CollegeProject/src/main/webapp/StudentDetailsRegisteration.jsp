<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
<style type="text/css">
.register{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}

</style>

</head>
<body>

<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h2>Welcome</h2>
                        <p>Add your personal details for college database maintenance.</p>
                        <input type="submit" name="" value="Profile"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                  
                        <div class="tab-content" id="myTabContent">
                               
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="row register-form">
                                    <div class="col-md-6"> 
                                    
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" value="" name ="studentid" readonly required/>
                                        </div>
                                      
                                        <div class="form-group">
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
                                        </div>
                                         <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Select Branch</option>
                                                <option>Computer Science Engineering</option>
                                                <option>Mechanical Engineering</option>
                                                <option>Electrical and Electronics Engineering</option>
                                                <option>Electronics and Communications Engineering</option>
                                                <option>Civil Engineering</option>
                                                <option>Aeronautical Engineering</option>
                                            </select>
                                        </div>
                                        
                                          <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Select Year of Studying</option>
                                                <option>1st year</option>
                                                <option>2nd year</option>
                                                <option>3rd year</option>
                                                <option>4rd year</option>
                                         
                                            </select>
                                        </div>
                                          <div class="form-group">
                                        <input placeholder="Date of Birth" class="textbox-n" type="text" onfocus="(this.type='date')" id="date">
                                        </div>
                                           <div class="form-group">
                                        <input placeholder="Accademic year" class="textbox-n" type="text" onfocus="(this.type='date')" id="date">
                                        </div>
                                         <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Registration Number *" value="" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Registration Number *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="fathername" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Father Name" value="" />
                                        </div>
                                           <div class="form-group">
                                            <input type="text" name="fatherwork" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Father occupation" value="" />
                                        </div>
                                           <div class="form-group">
                                            <input type="text" name="fathermobile" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Father Mobile" value="" />
                                        </div>
                                        
                                      
                            </div>
                            <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <h3  class="register-heading">Apply as a Hirer</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="number" class="form-control" placeholder="Registration Number *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" maxlength="10" minlength="10" class="form-control" placeholder="Phone *" value="" />
                                        </div>


                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Confirm Password *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Please select your Sequrity Question</option>
                                                <option>What is your Birthdate?</option>
                                                <option>What is Your old Phone Number</option>
                                                <option>What is your Pet Name?</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="`Answer *" value="" />
                                        </div>
                                        <input type="submit" class="btnRegister"  value="Register"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


</body>
</html>