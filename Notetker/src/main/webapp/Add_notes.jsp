<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    <h1>Please fill your notes</h1>
    <br>
    <!--this is notes add Form  -->
    <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Note Title</label>
    <input required type="text" required="required" class="form-control" id="title" name="title" aria-describedby="emailHelp" placeholder="Enter here">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
    <textarea required id="content" name="content" placeholder="Enter your content here" class="form-control" style="height:300px;"></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add Note</button>
  </div>
</form>
    </div>
</body>
</html>