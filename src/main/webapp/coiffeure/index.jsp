<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../comp/allcss.jsp"%>
<style type="text/css">
        .paint-card{
            box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
        }
    </style>

</head>
<body>

	<c:if test="${empty empObj}">
		<c:redirect url="../employe_login.jsp"></c:redirect>
	</c:if>
	
<%@include file="navbar.jsp"%>


<div class="container p-5">
    <p class="text-center fs-3">Tableau de bord de coiffeure</p>   
    <div class="row">
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center ">
                    <i class="fa-solid fa-user fa-3x"></i><br>
                    <p class="fs-4 text-center">
                     Coiffeure<br>45
                    </p>
                </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <i class="fas fa-user-circle fa-3x"></i><br>
                    <p class="fs-4 text-center">
                         Client<br>23
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <i class="fa-solid fa-calendar-check fa-3x"></i><br>
                    <p class="fs-4 text-center">
                      TOTAL RENDEZ-VOUS<br>34
                    </p>
                </div>
            </div>
        </div>
        
    </div>
</div>




</body>
</html>