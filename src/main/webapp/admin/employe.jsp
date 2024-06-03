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

             <div class="col-md-4 offset-md-0">
                 <div class="card paint-card">
                     <div class="card-body">
                         <p class="fs-3 text-center">Ajouter Coiffeure</p>
                         <c:if test="${not empty errorMsg}">
                             <p class="fs-3 text-center text-danger">${errorMsg}</p>
                             <c:remove var="errorMsg" scope="session" />
                         </c:if>
                         <c:if test="${not empty succMsg}">
                             <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
                             <c:remove var="succMsg" scope="session" />
                         </c:if>
                         <form action="../addEmploye" method="post">
                             <div class="mb-3">
                                 <label class="form-label">Nom Complete</label>
                                 <input type="text"
                                        required name="name"
                                        class="form-control">
                             </div>

                           
                             <div class="mb-3">
                                 <label class="form-label">Service</label>
                                 <select name="service"
                                         required class="form-control">
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
                                         required class="form-control">
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
                                         required class="form-control">
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
                                        required name="email" class="form-control">
                             </div>

                             <div class="mb-3">
                                 <label class="form-label">Tel</label>
                                 <input type="text"
                                        required name="tel" class="form-control">
                             </div>

                             <div class="mb-3">
                                 <label class="form-label">Password</label>
                                 <input required
                                        name="password" type="password" class="form-control" >
                             </div>

                             <button type="submit" class="btn btn-primary">Ajouter</button>
                         </form>
                     </div>
                 </div>

              </div>
              
                 <div class="col-md-8">
      <div class="card paint-card">
        <div class="card-body">
          <p class="fs-3 text-center">List des Coiffeure</p>
          <c:if test="${not empty errorMsg}">
            <p class="fs-3 text-center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
          </c:if>
          <c:if test="${not empty succMsg}">
            <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
            <c:remove var="succMsg" scope="session" />
          </c:if>
          <table class="table">
            <thead>
            <tr>
              <th scope="col">Nom Complete</th>
              <th scope="col">Service</th>
              <th scope="col">Salon</th>
              <th scope="col">Region</th>
              <th scope="col">Email</th>
              <th scope="col">Numéro Tel</th>
              <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>

	            <%
	            EmployeDao dao2=new EmployeDao(DBConnect.getConn());
	            List<Employe> list1=dao2.getAllEmploye();
	            for(Employe e:list1)
	            {%>
	            <tr>
	            <td><%=e.getName() %></td>
	            <td><%=e.getService() %></td>
	            <td><%=e.getSalon() %></td>
	            <td><%=e.getRegion() %></td>
	            <td><%=e.getEmail() %></td>
	            <td><%=e.getTel() %></td>
	            <td>
	            <a href="edit_coiffeure.jsp?id=<%=e.getId() %>" class="btn btn-sm btn-primary">Edit</a>
                <a href="../deleteCoiffeure?id=<%=e.getId() %>" class="btn btn-sm btn-danger">Delet</a>
	            </td>
	            </tr>
	            <%}
	            
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