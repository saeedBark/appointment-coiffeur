
<%@page import="db.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="comp/allcss.jsp"%>
</head>
<body>

<%@include file="comp/navbar.jsp"%>

	<section>
		<div class="container p-3">
			<div class="row">
				<div class="col-md-6 p-6">
					<img  src="img/br3.jpg" width="100%" height="400px">
				</div>
					
				<div class="col-md-6  p-5">
					<div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
						<div class="card-header">
							<p class="fs-4 text-center">Client Register</p>
							<c:if test="${not empty succMsg}">
                        		<p class="text-center text-success fs-3">${succMsg}</p>
                        		<c:remove var="succMsg" scope="session"></c:remove>
                    		</c:if>
                    		<c:if test="${not empty errorMsg}">
                        		<p class="text-center text-danger fs-3">${errorMsg}</p>
                        		<c:remove var="errorMsg" scope="session"></c:remove>
                    		</c:if>
						</div>
						<div class="card-body">
							<form action="client_register" method="post">
							<div class="mb-3">
									<label class="form-label">Nom Complete</label> <input 
									class="form-control" name="nom" type="text">
								</div>
							
								<div class="mb-3">
									<label class="form-label">Email</label> <input 
									class="form-control" name="email" type="text">
								</div>
								<div class="mb-3">
									<label class="form-label">Tel</label> <input 
									class="form-control" name="tel" type="text">
								</div>
								<button type="submit"
									class="btn text-white col-md-12" style="background-color:#343a40;">Register</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</section>
<%@include file="comp/footer.jsp"%>


</body>
</html>