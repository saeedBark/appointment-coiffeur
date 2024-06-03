<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Page</title>
<%@include file="comp/allcss.jsp"%>
</head>
<body>

<%@include file="comp/navbar.jsp"%>


	<section>
		<div class="container mt-2 p-5">
			<div class="row">
				<div class="col-md-6 p-6">
					<img  src="img/br2.jpg" width="100%" height="400px">
				</div>
					
				<div class="col-md-6  p-5">
					<div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
						<div class="card-header">
							<p class="fs-4 text-center">Admin Login</p>
							<c:if test="${not empty sucMsg}">
                        		<p class="text-center text-success fs-3">${sucMsg}</p>
                        		<c:remove var="sucMsg" scope="session"></c:remove>
                    		</c:if>
                    		<c:if test="${not empty errorMsg}">
                        		<p class="text-center text-danger fs-3">${errorMsg}</p>
                        		<c:remove var="errorMsg" scope="session"></c:remove>
                    		</c:if>
						</div>
						<div class="card-body">
							<form action="adminLogin"  method="post">
								<div class="mb-3">
									<label class="form-label">Email</label> <input 
									class="form-control" name="email" type="email">
								</div>
								<div class="mb-3">
									<label class="form-label">Password</label> <input 
									class="form-control" name="password" type="password">
								</div>
								<button type="submit"
									class="btn text-white col-md-12" style="background-color:#343a40;">Login</button>
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