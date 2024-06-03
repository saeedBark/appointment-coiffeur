<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#343a40;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house"></i>Home</a>
    
    
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="service.jsp">Service</a>
        </li>
        
        
       <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="rendez_vous.jsp">Rendez-vous</a>
        </li>
        
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="voir_rendez_vous.jsp">Voir les Rendez-vous</a>
        </li>

      </ul>
      
    
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
      <c:if test="${ empty clientObj }">
      
    	<li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-right-to-bracket"></i>Admin</a>
        </li>
        
        
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="employe_login.jsp">Coiffeure</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="client_login.jsp">Client</a>
        </li>
	</c:if>

  
        
        
        <c:if test="${not empty clientObj }">
    		
        	<li class="nav-item">
          		<a class="nav-link active" aria-current="page" href="#">voir les rendez-vous</a>
        	</li>
		
		
			<div class="dropdown">
			  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
			    <i class="fa-solid fa-user"></i> ${clientObj.fullname}
			  </button>
			  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
			    <li><a class="dropdown-item" href="#">Change password</a></li>
			    <li><a class="dropdown-item" href="clientLogout">Déconnecter</a></li>
			    
			  </ul>
			</div>
	 </c:if>
      </ul>

    </div>
  </div>
</nav>


<!-- 

	
	<nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-cart-shopping"></i>Ecom Store</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/"><i class="fa-solid fa-house"></i>HOME</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/products">product</a>
        </li>
        
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Category
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>

      </ul>
      
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/login"><i class="fa-solid fa-right-to-bracket"></i>LOGIN</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/register">REGISTER</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">ADMIN</a>
        </li>
        


      </ul>

    </div>
  </div>
</nav>
	
	

 -->