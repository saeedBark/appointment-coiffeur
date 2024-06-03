

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<%@include file="comp/allcss.jsp"%>
</head>
<body>

<%@include file="comp/navbar.jsp"%>



	<section>
	
	<!-- Start Slider -->
	
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
		    <div class="carousel-indicators">
		        <button type="button" data-bs-target="#carouselExampleIndicators"
		                data-bs-slide-to="0" class="active"
		                aria-current="true" aria-label="Slide 1"></button>
		        <button type="button" data-bs-target="#carouselExampleIndicators"
		                data-bs-slide-to="1" aria-label="Slide 2"></button>
		        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		    </div>
		    <div class="carousel-inner">
		        <div class="carousel-item active">
		            <img src="img/Design.jpg" class="d-block w-100" alt="..." height="500px">
		        </div>
		        <div class="carousel-item">
		            <img src="img/D3.jpg" class="d-block w-100" alt="..." height="500px">
		        </div>
		        <div class="carousel-item">
		            <img src="img/D1.jpg" class="d-block w-100" alt="..." height="500px">
		        </div>
		    </div>
		    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
		            data-bs-slide="prev">
		        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Previous</span>
		    </button>
		    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
		            data-bs-slide="next">
		        <span class="carousel-control-next-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Next</span>
		    </button>
		</div>

<!-- Start Catagory Module -->
<div class="container">
    <div class="row">
        <p class="text-center fs-4">Bienvenue dans notre Salon</p>
        
        <div class="col-md-2">
           
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N1.jpg" class="w-100 h-100 rounded-circle" alt="Electronics">
                </div>
           
        </div>
        
        <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N13.jpg" class="w-100 h-100 rounded-circle" alt="Beauty">
                </div>
            
        </div>
        
        <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N3.jpg" class="w-100 h-100 rounded-circle" alt="Clothes">
                </div>
           
        </div>
        
        <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N4.jpg" class="w-100 h-100 rounded-circle" alt="Laptop">
                </div>
           
        </div>
        
        <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N5.jpg" class="w-100 h-100 rounded-circle" alt="Mobile">
                </div>

        </div>
        
        <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N6.jpg" class="w-100 h-100 rounded-circle" alt="Grocery">
                </div>
            
        </div>
        
         <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N7.jpg" class="w-100 h-100 rounded-circle" alt="Grocery">
                </div>
            
        </div>
        
        <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N8.jpg" class="w-100 h-100 rounded-circle" alt="Grocery">
                </div>
            
        </div>
        
        <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N14.jpg" class="w-100 h-100 rounded-circle" alt="Grocery">
                </div>
            
        </div>
        
         <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N9.jpg" class="w-100 h-100 rounded-circle" alt="Grocery">
                </div>
            
        </div>
        
        <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N11.jpg" class="w-100 h-100 rounded-circle" alt="Grocery">
                </div>
            
        </div>
        
        <div class="col-md-2">
            
                <div class="card-body text-center" style="width: 200px; height: 200px; overflow: hidden;">
                    <img src="img/N12.jpg" class="w-100 h-100 rounded-circle" alt="Grocery">
                </div>
            
        </div>
        
       
    </div>
</div>

<!-- End Catagory Module -->

	</section>

<%@include file="comp/footer.jsp"%>

</body>
</html>