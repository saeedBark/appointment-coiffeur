<%@ page import="dao.EmployeDao" %>
<%@ page import="entity.Employe" %>
<%@ page import="dao.AppointmentDao" %>
<%@ page import="entity.Appointment" %>
<%@ page import="java.util.List" %>
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
<%@include file="../comp/allcss.jsp"%>
<style type="text/css">
        .paint-card{
            box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
        }
    </style>
    
<style type="text/css">
    .paint-card {
      box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
    }

    .backImg {
      background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
      url("../img/br.jpg");
      height: 25vh;
      width: 100%;
      background-size: cover;
      background-repeat: no-repeat;
    }
  </style>

</head>
<body>
	<c:if test="${empty empObj}">
		<c:redirect url="../employe_login.jsp"></c:redirect>
	</c:if>
	
<%@include file="navbar.jsp"%>
<div class="container-fulid backImg p-5">
  <p class="text-center fs-2 text-white"></p>
</div>

<div class="container p-3">
  <div class="row">

    <div class="col-md-6 offset-md-3">
      <div class="card paint-card">
        <div class="card-body">
          <p class="text-center fs-4">Commentaire</p>

          <%
            int id = Integer.parseInt(request.getParameter("id"));
            AppointmentDao dao=new AppointmentDao(DBConnect.getConn());

            Appointment ap = dao.getAllAppointmentById(id);
          %>
          <form class="row" action="../updateStatus" method="post">
            <div class="col-md-6">
              <label>Nom client</label> <input type="text" readonly
                                                 value="<%=ap.getNom()%>" class="form-control">
            </div>

            <div class="col-md-6">
              <label>Tel</label> <input type="text" value="<%=ap.getTel()%>"
                                        readonly class="form-control">
            </div>          
            <div class="col-md-12">
              <br> <label>Commentaire</label>
              <textarea required name="comm" class="form-control" row="1"
                        cols=""></textarea>
            </div>

            <input type="hidden" name="id" value="<%=ap.getId()%>"> <input
                  type="hidden" name="did" value="<%=ap.getCoiffId()%>">

            <button class=" mt-3 btn btn-primary col-md-6 offset-md-3">OK</button>

          </form>

        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>