<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark"  style="background-color:#343a40;">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house"></i>Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                
                <li class="nav-item"><a class="navbar-brand" href="client.jsp">Voir les rendez-vous</a></li>
            </ul>

            <form class="d-flex">
                <div class="dropdown">
                    <button class="btn btn-light dropdown-toggle" type="button"
                            id="dropdownMenuButton1" data-bs-toggle="dropdown"
                            aria-expanded="false">
                        <i class="fas fa-user-circle"></i> ${empObj.name }
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#">Editer
                            Profile</a></li>
                        <li><a class=" dropdown-item" href="../coiffeureLogout">Déconnecter</a></li>
                    </ul>
                </div>
            </form>
        </div>
    </div>
</nav>