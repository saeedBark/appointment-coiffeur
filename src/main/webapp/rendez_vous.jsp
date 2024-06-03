<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="comp/allcss.jsp"%>

    <style type="text/css">
        .point-card{
            box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
        }
    </style>
  <style type="text/css">
    .paint-card {
      box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
    }

    .backImg {
      background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
      url("img/br.jpg");
      height: 25vh;
      width: 100%;
      background-size: cover;
      background-repeat: no-repeat;
    }
  </style>

</head>
<body>

<%@include file="comp/navbar.jsp"%>

<div class="container-fulid backImg p-5">
  <p class="text-center fs-2 text-white"></p>
</div>

<div class="container-fluid p-4" style="background-color:#343a40;">
	<div class="row">
		<div class="col-md-8 offset-md-2">
			<form>
				<div class="input-group">
					<select
                    required class="form-control" name="#">
              		<option value="">Choisir le region </option>
              		</select>
					<a href="#" class="btn btn-light text-dark ms-3 col-md-2">
					<i class="fa-solid fa-magnifying-glass"></i>Search</a>
				</div>
			</form>
		</div>
	</div>
</div>
<div class="container p-3">
    <p class="text-center fs-2">Choisir votre region </p>
         <c:if test="${not empty errorMsg}">
            <p class="fs-4 text-center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
          </c:if>
          <c:if test="${not empty succMsg}">
            <p class=" fs-4 text-center text-success">${succMsg}</p>
            <c:remove var="succMsg" scope="session" />
          </c:if>
            <div class="row">
                <div class="col-md-4">
                    <div class="card point-card">
                        <div class="card-body text-center">
											<img  src="img/D2.jpg" width="100%" height="150px">
											<p class="fs-5 text-center">Tevrak Zeina</p>
											<div class="row text-center">
												
												<a href="salon_tvr.jsp" class="btn btn-dark col-md-8 offset-md-2" style="background-color:#343a40;">View Details</a>
											</div>
										</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card point-card">
                        <div class="card-body text-center">
											<img  src="img/D2.jpg" width="100%" height="150px">
											<p class="fs-5 text-center">Carravour</p>
											<div class="row text-center">
												
												<a href="salon_carr.jsp" class="btn btn-dark col-md-8 offset-md-2" style="background-color:#343a40;">View Details</a>
											</div>
										</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card point-card">
                       <div class="card-body text-center">
											<img  src="img/D2.jpg" width="100%" height="150px">
											<p class="fs-5 text-center ">Premiere</p>
											<div class="row text-center">
												
												<a href="salon_pre.jsp" class="btn btn-dark col-md-8 offset-md-2" style="background-color:#343a40;">View Details</a>
											</div>
										</div>
                    </div>
                </div>
                <div  class="col-md-4 mt-2">
                    <div class="card point-card">
                        <div class="card-body text-center">
											<img  src="img/D2.jpg" width="100%" height="150px">
											<p class="fs-5 text-center">leKsar</p>
											<div class="row text-center">
												
												<a href="salon_leksar.jsp" class="btn btn-dark col-md-8 offset-md-2" style="background-color:#343a40;">View Details</a>
							</div>
						</div>
                    </div>
                </div>
                <div  class="col-md-4 mt-2">
                    <div class="card point-card">
                        <div class="card-body text-center">
											<img  src="img/D2.jpg" width="100%" height="150px">
											<p class="fs-5 text-center">Teyaret</p>
											<div class="row text-center">
												
												<a href="salon_teyart.jsp" class="btn btn-dark col-md-8 offset-md-2" style="background-color:#343a40;">View Details</a>
							</div>
						</div>
                    </div>
                </div>
                
                <div  class="col-md-4 mt-2">
                    <div class="card point-card">
                        <div class="card-body text-center">
											<img  src="img/D2.jpg" width="100%" height="150px">
											<p class="fs-5 text-center">Arafat</p>
											<div class="row text-center">
												
												<a href="salon_arrafat.jsp" class="btn btn-dark col-md-8 offset-md-2" style="background-color:#343a40;">View Details</a>
							</div>
						</div>
                    </div>
                </div>
                
            </div>
        </div>
        
   



<%@include file="comp/footer.jsp"%>
</body>
</html>