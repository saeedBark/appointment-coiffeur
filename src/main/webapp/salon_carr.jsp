<%@ page import="dao.EmployeDao" %>
<%@ page import="entity.Employe" %>
<%@ page import="dao.ServiceDao" %>
<%@ page import="entity.Service" %>
<%@ page import="java.util.List" %>
<%@page import="db.DBConnect" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
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

<div class="container p-5">
    <p class="text-center fs-3">Les Salon dans Carravour</p>   
    
     <c:if test="${not empty errorMsg}">
            <p class="fs-4 text-center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
          </c:if>
          <c:if test="${not empty succMsg}">
            <p class=" fs-4 text-center text-success">${succMsg}</p>
            <c:remove var="succMsg" scope="session" />
          </c:if>

    <div class="row">
        <div class="col-md-4">
            <div class="card paint-card " data-bs-toggle="modal"
                 data-bs-target="#example">
                <div class="card-body text-center">
                    <i class="fa-solid fa-shop fa-3x"></i><br>
                    <p class="fs-4 text-center">
                        Salon <br>Rim
                    </p>
                </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card paint-card " data-bs-toggle="modal"
                 data-bs-target="#example1">
                <div class="card-body text-center">
                    <i class="fa-solid fa-shop fa-3x"></i><br>
                    <p class="fs-4 text-center">
                        Salon <br>Ahmed
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 ">

            <div class="card paint-card " data-bs-toggle="modal"
                 data-bs-target="#example2">
                <div class="card-body text-center">
                    <i class="fa-solid fa-shop fa-3x"></i><br>
                    <p class="fs-4 text-center">
                        Salon <br>Didi
                    </p>
                </div>
            </div>

        </div>
        
        <div class="col-md-4 mt-2">

            <div class="card paint-card " data-bs-toggle="modal"
                 data-bs-target="#example3">
                <div class="card-body text-center">
                    <i class="fa-solid fa-shop fa-3x"></i><br>
                    <p class="fs-4 text-center">
                        Salon <br>Naser
                    </p>
                </div>
            </div>

        </div>
        
    </div>
</div>


<div class="modal fade" id="example" tabindex="-1"
     aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">PRENDRE RENDEZ-VOUS</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="col-md-12">
      <div class="card paint-card">
        <div class="card-body">
       
       
          <form class="row g-3" action="addAppointement" method="post">

           

            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Service</label> <select
                    required class="form-control" name="service">
              <option value="">Choisir Service</option>
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

            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Nom</label> <input
                    required type="text" class="form-control" name="nom">
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Date de
                rendez-vous</label> <input type="date" class="form-control" required
                                    name="date">
            </div>
            
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Heure</label> <select
                    required class="form-control" name="heure">
              <option value="">--select--</option>
              	<option value="9:00 AM">9:00 AM</option>
              	<option value="10:00 AM">10:00 AM</option>		
              	<option value="11:00 AM">11:00 AM</option>	
              	<option value="12:00 AM">12:00 AM</option>	
              	<option value="18:00 PM">18:00 PM</option>	
              	<option value="19:00 PM">19:00 PM</option>
              	<option value="20:00 PM">20:00 PM</option>
              	<option value="21:00 PM">21:00 PM</option>
              	<option value="22:00 PM">22:00 PM</option>
              	<option value="23:00 PM">23:00 PM</option>
              	<option value="00:00 PM">00:00 PM</option>
              						</select>
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Email</label> <input
                    required type="email" class="form-control" name="email">
            </div>
            
             <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Numero Tel</label> <input
                    required type="text" class="form-control" name="tel">
            </div>
            
            
            <div class="col-md-6">
              <label for="inputPassword4" class="form-label">Coiffeure</label> <select
                    required class="form-control" name="coiffId">
              <option value="">Choisir Coiffeure</option>
              
              
              <%
              
              EmployeDao dao1 = new EmployeDao(DBConnect.getConn());
              List<Employe> list = dao1.getAllEmploye();
              for(Employe e : list){
             %>
            	<option value="<%=e.getId() %>"><%=e.getName() %> (<%=e.getSalon()%>) </option>
            	
              <% 
              }
              %>
               
              
              </select>
            </div>
            


            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Payer par</label> <select
                    required class="form-control" name="payer_par">
              <option value="">Choisir application</option>
              <option value="Bankily">Bankily</option>
              <option value="Sedad">Sedad</option>
                <option value="Masrivi">Masrivi</option>
                  </select>
            </div>  
            
            <div class="col-md-12">
              <label>Address si vous avez que le coiffeure deplace chez vous</label>
              <textarea required name="address" class="form-control" rows="1"
                        cols=""></textarea>
            </div>          
              <div class="form-group">
                   <button type="submit" class="btn btn-primary col-md-12">Ajouter</button>
                   </div>
            
          </form>
        </div>
      </div>
    </div>
        </div>
    </div>
</div>

<div class="modal fade" id="example1" tabindex="-1"
     aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">PRENDRE RENDEZ-VOUS</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="col-md-12">
      <div class="card paint-card">
        <div class="card-body">
       
       
          <form class="row g-3" action="addAppointement" method="post">

           

            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Service</label> <select
                    required class="form-control" name="service">
              <option value="">Choisir Service</option>
               <%
                ServiceDao dao2 = new ServiceDao(DBConnect.getConn());
                List<Service> list3 = dao2.geAllServ();
                for (Service s : list3) {
                %>
                <option><%=s.getServiceName()%></option>
               <%
                 }
               %>
              </select>
            </div>

            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Nom</label> <input
                    required type="text" class="form-control" name="nom">
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Date de
                rendez-vous</label> <input type="date" class="form-control" required
                                    name="date">
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Heure</label> <select
                    required class="form-control" name="heure">
              <option value="">--select--</option>
              	<option value="9:00 AM">9:00 AM</option>
              	<option value="10:00 AM">10:00 AM</option>		
              	<option value="11:00 AM">11:00 AM</option>	
              	<option value="12:00 AM">12:00 AM</option>	
              	<option value="18:00 PM">18:00 PM</option>	
              	<option value="19:00 PM">19:00 PM</option>
              	<option value="20:00 PM">20:00 PM</option>
              	<option value="21:00 PM">21:00 PM</option>
              	<option value="22:00 PM">22:00 PM</option>
              	<option value="23:00 PM">23:00 PM</option>
              	<option value="00:00 PM">00:00 PM</option>
              						</select>
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Email</label> <input
                    required type="email" class="form-control" name="email">
            </div>

             <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Numero Tel</label> <input
                    required type="text" class="form-control" name="tel">
            </div>
            
            
            <div class="col-md-6">
              <label for="inputPassword4" class="form-label">Coiffeure</label> <select
                    required class="form-control" name="coiffId">
              <option value="">Choisir Coiffeure</option>
              
              
              <%
              
              EmployeDao dao3 = new EmployeDao(DBConnect.getConn());
              List<Employe> list1 = dao3.getAllEmploye();
              for(Employe e : list1){
             %>
            	<option value="<%=e.getId() %>"><%=e.getName() %> (<%=e.getSalon()%>) </option>
            	
              <% 
              }
              %>
               
              
              </select>
            </div>
            


            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Payer par</label> <select
                    required class="form-control" name="payer_par">
              <option value="">Choisir application</option>
              <option value="Bankily">Bankily</option>
              <option value="Sedad">Sedad</option>
                <option value="Masrivi">Masrivi</option>
                  </select>
            </div> 
            
            <div class="col-md-12">
              <label>Address si vous avez que le coiffeure deplace chez vous</label>
              <textarea required name="address" class="form-control" rows="1"
                        cols=""></textarea>
            </div>
                       
              <div class="form-group">
                   <button type="submit" class="btn btn-primary col-md-12">Ajouter</button>
                   </div>
            
          </form>
        </div>
      </div>
    </div>

        </div>
    </div>
</div>



<div class="modal fade" id="example2" tabindex="-1"
     aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">PRENDRE RENDEZ-VOUS</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="col-md-12">
      <div class="card paint-card">
        <div class="card-body">
       
       
          <form class="row g-3" action="addAppointement" method="post">

           

            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Service</label> <select
                    required class="form-control" name="service">
              <option value="">Choisir Service</option>
               <%
                ServiceDao dao4 = new ServiceDao(DBConnect.getConn());
                List<Service> list4 = dao4.geAllServ();
                for (Service s : list4) {
                %>
                <option><%=s.getServiceName()%></option>
               <%
                 }
               %>
              </select>
            </div>

            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Nom</label> <input
                    required type="text" class="form-control" name="nom">
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Date de
                rendez-vous</label> <input type="date" class="form-control" required
                                    name="date">
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Heure</label> <select
                    required class="form-control" name="heure">
              <option value="">--select--</option>
              	<option value="9:00 AM">9:00 AM</option>
              	<option value="10:00 AM">10:00 AM</option>		
              	<option value="11:00 AM">11:00 AM</option>	
              	<option value="12:00 AM">12:00 AM</option>	
              	<option value="18:00 PM">18:00 PM</option>	
              	<option value="19:00 PM">19:00 PM</option>
              	<option value="20:00 PM">20:00 PM</option>
              	<option value="21:00 PM">21:00 PM</option>
              	<option value="22:00 PM">22:00 PM</option>
              	<option value="23:00 PM">23:00 PM</option>
              	<option value="00:00 PM">00:00 PM</option>
              						</select>
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Email</label> <input
                    required type="email" class="form-control" name="email">
            </div>

           

             <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Numero Tel</label> <input
                    required type="text" class="form-control" name="tel">
            </div>
            
            
            <div class="col-md-6">
              <label for="inputPassword4" class="form-label">Coiffeure</label> <select
                    required class="form-control" name="coiffId">
              <option value="">Choisir Coiffeure</option>
              
              
              <%
              
              EmployeDao dao5 = new EmployeDao(DBConnect.getConn());
              List<Employe> list5 = dao5.getAllEmploye();
              for(Employe e : list5){
             %>
            	<option value="<%=e.getId() %>"><%=e.getName() %> (<%=e.getSalon()%>) </option>
            	
              <% 
              }
              %>
               
              
              </select>
            </div>
            


            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Payer par</label> <select
                    required class="form-control" name="payer_par">
              <option value="">Choisir application</option>
              <option value="Bankily">Bankily</option>
              <option value="Sedad">Sedad</option>
                <option value="Masrivi">Masrivi</option>
                  </select>
            </div> 
            
            
            <div class="col-md-12">
              <label>Address si vous avez que le coiifeure deplace chez vous</label>
              <textarea required name="address" class="form-control" rows="1"
                        cols=""></textarea>
            </div>
                       
              <div class="form-group">
                   <button type="submit" class="btn btn-primary col-md-12">Ajouter</button>
                   </div>
            
          </form>
        </div>
      </div>
    </div>
        </div>
    </div>
</div>



<div class="modal fade" id="example3" tabindex="-1"
     aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">PRENDRE RENDEZ-VOUS</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="col-md-12">
      <div class="card paint-card">
        <div class="card-body">
       
       
          <form class="row g-3" action="addAppointement" method="post">

           

            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Service</label> <select
                    required class="form-control" name="service">
              <option value="">Choisir Service</option>
               <%
                ServiceDao dao6 = new ServiceDao(DBConnect.getConn());
                List<Service> list6 = dao6.geAllServ();
                for (Service s : list6) {
                %>
                <option><%=s.getServiceName()%></option>
               <%
                 }
               %>
              </select>
            </div>

            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Nom</label> <input
                    required type="text" class="form-control" name="nom">
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Date de
                rendez-vous</label> <input type="date" class="form-control" required
                                    name="date">
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Heure</label> <select
                    required class="form-control" name="heure">
              <option value="">--select--</option>
              	<option value="9:00 AM">9:00 AM</option>
              	<option value="10:00 AM">10:00 AM</option>		
              	<option value="11:00 AM">11:00 AM</option>	
              	<option value="12:00 AM">12:00 AM</option>	
              	<option value="18:00 PM">18:00 PM</option>	
              	<option value="19:00 PM">19:00 PM</option>
              	<option value="20:00 PM">20:00 PM</option>
              	<option value="21:00 PM">21:00 PM</option>
              	<option value="22:00 PM">22:00 PM</option>
              	<option value="23:00 PM">23:00 PM</option>
              	<option value="00:00 PM">00:00 PM</option>
              						</select>
            </div>
            
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Email</label> <input
                    required type="email" class="form-control" name="email">
            </div>

             <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Numero Tel</label> <input
                    required type="text" class="form-control" name="tel">
            </div>
            
            
            <div class="col-md-6">
              <label for="inputPassword4" class="form-label">Coiffeure</label> <select
                    required class="form-control" name="coiffId">
              <option value="">Choisir Coiffeure</option>
              
              
              <%
              
              EmployeDao dao7 = new EmployeDao(DBConnect.getConn());
              List<Employe> list7 = dao7.getAllEmploye();
              for(Employe e : list7){
             %>
            	<option value="<%=e.getId() %>"><%=e.getName() %> (<%=e.getSalon()%>) </option>
            	
              <% 
              }
              %>
               
              
              </select>
            </div>
            


            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Payer par</label> <select
                    required class="form-control" name="payer_par">
              <option value="">Choisir application</option>
              <option value="Bankily">Bankily</option>
              <option value="Sedad">Sedad</option>
                <option value="Masrivi">Masrivi</option>
                  </select>
            </div> 
            
            <div class="col-md-12">
              <label>Address si vous avez que le coiffeure deplace chez vous</label>
              <textarea required name="address" class="form-control" rows="1"
                        cols=""></textarea>
            </div>
                       
              <div class="form-group">
                   <button type="submit" class="btn btn-primary col-md-12">Ajouter</button>
                   </div>
            
          </form>
        </div>
      </div>
    </div>

        </div>
    </div>
</div>

<%@include file="comp/footer.jsp"%>
</body>
</html>