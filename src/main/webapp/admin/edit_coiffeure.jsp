<%@ page import="dao.EmployeDao" %>
<%@ page import="entity.Employe" %>
<%@ page import="dao.ServiceDao" %>
<%@ page import="dao.SalonDao" %>
<%@ page import="dao.RegionDao" %>
<%@ page import="entity.Service" %>
<%@ page import="entity.Salon" %>
<%@ page import="entity.Region" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Employe" %>
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
</head>
<body>
<%@include file="navbar.jsp" %>


     <div class="container-fluid p-3">
         <div class="row">

             <div class="col-md-4 offset-md-4">
                 <div class="card paint-card">
                     <div class="card-body">
                         <p class="fs-3 text-center">Edit Coiffeure</p>
                         <c:if test="${not empty errorMsg}">
                             <p class="fs-3 text-center text-danger">${errorMsg}</p>
                             <c:remove var="errorMsg" scope="session" />
                         </c:if>
                         <c:if test="${not empty succMsg}">
                             <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
                             <c:remove var="succMsg" scope="session" />
                         </c:if>
                         
                         
                         <% 
                         int id=Integer.parseInt(request.getParameter("id"));
                         EmployeDao dao2=new EmployeDao(DBConnect.getConn());
                         Employe e=dao2.getAllEmployeById(id);
                         %>
                         
                         <form action="../updateEmploye"  method="post">
                             <div class="mb-3">
                                 <label class="form-label">Nom Complete</label>
                                 <input type="text"
                                        required name="name"
                                        class="form-control" value="<%=e.getName()%>">
                                        
                                        
                                     
                             </div>

                           
                             <div class="mb-3">
                                 <label class="form-label">Service</label>
                                 <select name="service"
                                         required class="form-control" value="<%=e.getService()%>">
                                 <option>--select--</option>
                                 
                                 
                                 <%
                                     ServiceDao dao = new ServiceDao(DBConnect.getConn());
                                     List<Service> list2 = dao.geAllServ();
                                     for (Service s : list2) {
                                 %>
                                 <option><%=s.getServiceName()%></option>
                                 <%
                                     }
                                 %>



                             </select>
                             </div>
                             
                             
                             <div class="mb-3">
                                 <label class="form-label">Salon</label>
                                 <select name="salon" 
                                         required class="form-control" value="<%=e.getSalon()%>">
                                 <option>--select--</option>
                                 
                                 
                                 <%
                                     SalonDao dao4 = new SalonDao(DBConnect.getConn());
                                     List<Salon> list5 = dao4.geAllSalon();
                                     for (Salon s  : list5) {
                                 %>
                                 <option><%=s.getSalonName()%></option>
                                 <%
                                     }
                                 %>



                             </select>
                            </div>
                             
                             
                             <div class="mb-3">
                                 <label class="form-label">Region</label>
                                 <select name="region"
                                         required class="form-control" value="<%=e.getRegion()%>">
                                 <option>--select--</option>
                                 
                                 
                                 <%
                                     RegionDao dao3 = new RegionDao(DBConnect.getConn());
                                     List<Region> list = dao3.geAllRegion();
                                     for (Region r  : list) {
                                 %>
                                 <option><%=r.getRegionName()%></option>
                                 <%
                                     }
                                 %>



                             </select>
                            </div>
                             

                             <div class="mb-3">
                                 <label class="form-label">Email</label>
                                 <input type="text"
                                        required name="email" class="form-control" value="<%=e.getEmail()%>">
                             </div>

                             <div class="mb-3">
                                 <label class="form-label">Tel</label>
                                 <input type="text"
                                        required name="tel" class="form-control" value="<%=e.getTel()%>">
                             </div>

                             <div class="mb-3">
                                 <label class="form-label">Password</label>
                                 <input required
                                        name="password" type="password" class="form-control" value="<%=e.getPassword()%>">
                             </div>
                             
                             <input type="hidden" name="id" value="<%=e.getId()%>">
                             

                             <button type="submit" class="btn btn-primary col-md-12">Edit</button>
                         </form>
                     </div>
                 </div>

              </div>
              
 

  </div>
</div>

    

 
</body>
</html>