<%@ page import="dao.EmployeDao" %>
<%@ page import="entity.Employe" %>
<%@ page import="dao.AppointmentDao" %>
<%@ page import="entity.Appointment" %>
<%@ page import="java.util.List" %>
<%@page import="db.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="comp/allcss.jsp"%>
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
<div class="container p-3">
			<c:if test="${not empty errorMsg}">
            <p class="fs-4 text-center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
          </c:if>
          <c:if test="${not empty succMsg}">
            <p class=" fs-4 text-center text-success">${succMsg}</p>
            <c:remove var="succMsg" scope="session" />
          </c:if>
  <div class="row">
    <div class="col-md-9">
      <div class="card paint-card">
        <div class="card-body">
          <p class="fs-4 fw-bold text-center text-success">List de 
            rendez-vous</p>
          <table class="table">
            <thead>
            <tr>
              <th scope="col">Nom</th>
              <th scope="col">Service</th>
              <th scope="col">Date</th>
              <th scope="col">Heure</th>
              <th scope="col">Nom Coiffeure</th>
              <th scope="col">Payer par</th>
              <th scope="col">Statut</th>

            </tr>
            </thead>
            <tbody>
            <%
            AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
            EmployeDao dao2=new EmployeDao(DBConnect.getConn());
            List<Appointment> list=dao.getAllAppointment();
            for (Appointment ap:list){
            	Employe e = dao2.getAllEmployeById(ap.getCoiffId());
            
            
            
            %>

            <tr>
              <th><%=ap.getNom()%></th>
              <td><%=ap.getService()%></td>
              <td><%=ap.getDate()  %></td>
              <td><%=ap.getHeure()  %></td>
              <td><%=e.getName()  %></td>
              <td><%=ap.getPayer_par() %></td>
              <td>
              	<% if("OK".equals(ap.getStatus())) {%>
              		<a  href="#" class="btn btn-sm btn-warning">OK</a>
    		  	<%}else{%>
    		  
    		  	<%=ap.getStatus() %>
      			  
      		   <%}
     		  
      		    %>
              
             </td>
           
            </tr>
           
			 <%}
	            
	          %>

            </tbody>
          </table>

        </div>
      </div>
    </div>

    <div class="col-md-3 p-3">
      <img alt="" src="img/ba.jpg">
    </div>
  </div>
</div>


</body>
</html>