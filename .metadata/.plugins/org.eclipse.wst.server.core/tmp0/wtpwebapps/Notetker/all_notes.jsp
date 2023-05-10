<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.factoryhelper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes: Notes Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%><br>
		<h1>All Notes:</h1>
		<div class="row">
		<div class="col-12">
		
		<%
    Session s=FactoryProvider.getFactory().openSession();
     Query q=s.createQuery("from Note");
     SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
    
    List <Note> list=q.list();
     for(Note n:list)
     { 
     
    	 
    	 String strDate= formatter.format(n.getAddedDate());
     %>
    	
   <div class="card mt-3" >
  <img class="card-img-top m-4 mx-auto" style="max-width:80px;" src="image/notes.png" alt="Card image cap">
  <div class="card-body px-5">
    <h5 class="card-title"><%=n.getTitle()%></h5>
    <p class="card-text"><%=n.getContent()%></p>
    <p class="card-text"><b class="text-primary"><%=strDate%></b></p>
    <div class="container text-center mt-2">
    <a href="deleteServlet?note_id=<%=n.getId()%>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%=n.getId()%>" class="btn btn-primary">Update</a>
    </div>
  </div>
</div>
  </div>
</div>
    <% 
     }
    s.close();
    
    
    %>
		</div>
		</div>
		
	</div>
</body>
</html>