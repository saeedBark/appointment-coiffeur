<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
		<div class="container-fluid p-4" style="background-color:#343a40;">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<form>
						<div class="input-group">
							<input type="text" class="form-control" name="ch">
							<button class="btn btn-light text-dark ms-3 col-md-2">
							<i class="fa-solid fa-magnifying-glass"></i>Search</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		
		<div class="container-fluid mt-1">
			<div class="row">
				<div class="col-md-2 p-0">
					<div class="card shadow-sm p-0 mb-5 bg-body-tertiary rounded">
					<div class="card-body">
					<div class="list-group">
						  <a href="#" class="list-group-item list-group-item-action active" style="background-color:#343a40;" aria-current="true">
						    Service
						  </a>
						  <a href="#" class="list-group-item list-group-item-action">Coiffure</a>
						  <a href="#" class="list-group-item list-group-item-action">Douche</a>
						  <a href="#" class="list-group-item list-group-item-action">Coupe de cheveux</a>
						  
					</div>
					</div>
					</div>
									
				</div>
				<div class="col-md-10">
					<div class="card shadow-sm p-3 mb-5 bg-body-tertiary rounded">
						<div class="card-body">
							<p class="fs-3 text-center">Service</p>
							<div class="row">
								<div class="col-md-3">
									<div class="card">
										<div class="card-body text-center">
											<img  src="img/D2.jpg" width="100%" height="150px">
											<p class="fs-5 text-center">Coiffure</p>
											<div class="row text-center">
												<p class="fs-6 fw-bold">&#8377; 500
												<span class="fs-6 text-success">20% off</span>
												</p>
												<a href="#" class="btn btn-dark col-md-8 offset-md-2" style="background-color:#343a40;">View Details</a>
											</div>
										</div>
									</div>
								</div>
								
								<!-- TODO : Remove after backend implement -->
								
								<div class="col-md-3">
									<div class="card">
										<div class="card-body text-center">
											<img  src="img/m1.jpg" width="100%" height="150px">
											<p class="fs-5 text-center">Douche</p>
											<div class="row text-center">
												<p class="fs-6 fw-bold">&#8377; 500
												<span class="fs-6 text-success">20% off</span>
												</p>
												<a class="btn btn-dark col-md-8 offset-md-2" style="background-color:#343a40;">View Details</a>
											</div>
										</div>
									</div>
								</div>
								
								
								<div class="col-md-3">
									<div class="card">
										<div class="card-body text-center">
											<img  src="img/m3.jpg" width="100%" height="150px">
											<p class="fs-5 text-center">Mask</p>
											<div class="row text-center">
												<p class="fs-6 fw-bold">&#8377; 500
												<span class="fs-6 text-success">20% off</span>
												</p>
												<a class="btn btn-dark col-md-8 offset-md-2" style="background-color:#343a40;">View Details</a>
											</div>
										</div>
									</div>
								</div>
								
								<div class="col-md-3">
									<div class="card">
										<div class="card-body text-center">
											<img  src="img/m4.jpg" width="100%" height="150px">
											<p class="fs-5 text-center">Message du corps</p>
											<div class="row text-center">
												<p class="fs-6 fw-bold">&#8377; 500
												<span class="fs-6 text-success">20% off</span>
												</p>
												<a class="btn btn-dark col-md-8 offset-md-2" style="background-color:#343a40;">View Details</a>
											</div>
										</div>
									</div>
								</div>
								
								<!-- End -->
						</div>
						
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	
	
	</section>

<%@include file="comp/footer.jsp"%>
</body>
</html>