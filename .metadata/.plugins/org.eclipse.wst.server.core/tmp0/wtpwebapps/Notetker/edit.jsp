<%@page import="com.entities.Note"%>
<%@page import="com.factoryhelper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Screen</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<h1>Edit Notes</h1>
<div>
<% 
 int id=Integer.parseInt(request.getParameter("note_id"));
Session s=FactoryProvider.getFactory().openSession();
Note note=s.get(Note.class, id);
%>
<form action="UpdateServlet" method="post">
<input type="hidden" name="id" value="<%= note.getId()%>">
  <div class="form-group">
    <label for="exampleInputEmail1">Note Title</label>
    <input required type="text" required="required" value="<%=note.getTitle()%>" class="form-control" id="title" name="title" aria-describedby="emailHelp" placeholder="Enter here">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
    <textarea required id="content" name="content"  placeholder="Enter your content here" class="form-control" style="height:300px;"><%=note.getContent()%></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Update Note</button>
  </div>
</form>

</div>
</body>
</html>