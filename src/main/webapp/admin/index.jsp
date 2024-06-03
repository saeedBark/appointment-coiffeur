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
<%@include file="navbar.jsp" %>

<c:if test="${ empty adminObj }">
    <c:redirect url="../admin_login.jsp"></c:redirect>
</c:if>

<div class="container p-5">
    <p class="text-center fs-3">Tableau de bord d'administrateur</p>   
    <c:if test="${not empty errorMsg}">
        <p class="fs-3 text-center text-danger">${errorMsg}</p>
        <c:remove var="errorMsg" scope="session" />
    </c:if>
    <c:if test="${not empty succMsg}">
        <div class="fs-3 text-center text-primary" role="alert">${succMsg}</div>
        <c:remove var="succMsg" scope="session" />
    </c:if>
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
        
        <div class="col-md-4 mt-2">

            <div class="card paint-card " data-bs-toggle="modal"
                 data-bs-target="#example">
                <div class="card-body text-center">
                    <i class="fa-solid fa-shop fa-3x"></i><br>
                    <p class="fs-4 text-center">
                        Salon <br>23
                    </p>
                </div>
            </div>

        </div>
        

        <div class="col-md-4 mt-2">

            <div class="card paint-card " data-bs-toggle="modal"
                 data-bs-target="#exampleModal">
                <div class="card-body text-center">
                    <i class="far fa-calendar-check fa-3x"></i><br>
                    <p class="fs-4 text-center">
                        Srevice <br>23
                    </p>
                </div>
            </div>

        </div>
        
        <div class="col-md-4 mt-2">

            <div class="card paint-card " data-bs-toggle="modal"
                 data-bs-target="#example1">
                <div class="card-body text-center">
                    <i class="fa-solid fa-location-dot fa-3x"></i><br>
                    <p class="fs-4 text-center">
                        Region <br>23
                    </p>
                </div>
            </div>

        </div>

    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1"
     aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Titre Modal</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
               <form action="../addService" method="post">
                   <div class="form-group">
                       <label>Enterz le nom de Service </label>
                       <input type="text" name="servName" class="form-control">
                   </div>
                   <div class="text-center mt-3">
                   <button type="submit" class="btn btn-primary">Ajouter</button>
                   </div>
               </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">fermer</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="example" tabindex="-1"
     aria-labelledby="example" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Titre Modal</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
               <form action="../addSalon" method="post">
                   <div class="form-group">
                       <label>Enterz le nom de salon </label>
                       <input type="text" name="salonName" class="form-control">
                   </div>
                   <div class="text-center mt-3">
                   <button type="submit" class="btn btn-primary">Ajouter</button>
                   </div>
               </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">fermer</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="example1" tabindex="-1"
     aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Titre Modal</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
               <form action="../addRegion" method="post">
                   <div class="form-group">
                       <label>Enterz le nom de Region </label>
                       <input type="text" name="regionName" class="form-control">
                   </div>
                   <div class="text-center mt-3">
                   <button type="submit" class="btn btn-primary">Ajouter</button>
                   </div>
               </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">fermer</button>
            </div>
        </div>
    </div>
</div>


</body>
</html>