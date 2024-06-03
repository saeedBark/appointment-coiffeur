<%@ page import="dao.EmployeDao" %>
<%@ page import="entity.Employe" %>
<%@ page import="dao.AppointmentDao" %>
<%@ page import="entity.Appointment" %>
<%@ page import="java.util.List" %>
<%@page import="db.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


	<c:if test="${empty empObj}">
		<c:redirect url="../employe_login.jsp"></c:redirect>
	</c:if>
	
<%@include file="navbar.jsp"%>
<div class="container p-3">
    <div class="row">

        <div class="col-md-12">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="fs-3 text-center">Patient Details</p>
                    <c:if test="${not empty errorMsg}">
                        <p class="fs-4 text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session" />
                    </c:if>
                    <c:if test="${not empty succMsg}">
                        <p class=" fs-4 text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session" />
                    </c:if>

                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Nom</th>
                            <th scope="col">Service</th>
                            <th scope="col">Date</th>
                            <th scope="col">Heure</th>
                            <th scope="col">Email</th>
                            <th scope="col">Tel</th>
                            <th scope="col">Payer</th>
                            <th scope="col">Address</th>
                            <th scope="col">Satuts</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                        Employe e=(Employe)session.getAttribute("empObj");
                        AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
                        List<Appointment> list=dao.getAllAppointmentByCoiffeureLogin(e.getId());
                        for(Appointment ap:list){
                         %>
                         
                        <tr>
                            <th><%=ap.getNom() %></th>
                            <td><%=ap.getService() %></td>
                            <td><%=ap.getDate() %></td>
                            <td><%=ap.getHeure() %></td>
                            <td><%=ap.getEmail() %></td>
                            <td><%=ap.getTel() %></td>
                            <td><%=ap.getPayer_par() %></td>
                            <td><%=ap.getAddress() %></td>
                            <td><%=ap.getStatus() %></td>
                            <td>
                            
                            <%
                            if("ok".equals(ap.getStatus()))
                            {%>
                             <a  href="comment.jsp?id=<%=ap.getId() %>" class="btn btn-success btn-sm">Comment</a>                         	
                            	
                            <%}else  {%>
                            	
                            	<a  href="#" class="btn btn-success btn-sm disabled">Comment</a>
                            	
                            <%}
                            %>
                            
                               
                            </td>
                        </tr>
                       
                         
                        <%
                        	
                        }
                        
                        %>
                       

                        </tbody>
                    </table>

                </div>
            </div>
        </div>

    </div>
</div>


</body>
</html>