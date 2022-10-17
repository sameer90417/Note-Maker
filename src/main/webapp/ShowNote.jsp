<%@page import="com.notemaker.entity.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.notemaker.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NoteTaker</title>
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/Style.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@700&family=Source+Sans+Pro:wght@600&display=swap"
	rel="stylesheet">
	
	<style type="text/css">
		    .showbtns{
		    	border-radius: 10px;
                padding: 5px 10px;
                font-size: 14px;
		    }
		    
		    .card-text{
		        text-align: justify;
		    }
		    
		    .card-title{
		    
		    	 color: #005997;

		    }
	</style>

</head>

<body style="background-color: #d9d9d9;">

	<!--Starting navbar-->

	<nav class="navbar sticky-top navbar-expand-lg shadow"
		style="background-color: #99d5ff;">
		<div class="container">
			<div class="container-fluid">
				<i class="fa fa-file-text"
					style="font-size: 25px; margin-right: 2px;"></i> <a
					class="navbar-brand logo-head"
					style="font-family: 'Gemunu Libre', sans-serif; font-size: 25px;"
					href="index.jsp">NoteTaker</a>
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul style="font-family: Verdana, Geneva, Tahoma, sans-serif;"
					class="navbar-nav me-auto mb-2 mb-lg-0">

					<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="CreateTable.jsp">Create_Note</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="ShowNote.jsp">Show_Notes</a></li>

				</ul>
			</div>

		</div>
	</nav>

	<!--Ending navbar-->

	<div class="container">
		<div class="row">
			<%
			Session session2 = FactoryProvider.getFactory().openSession();

			Query q = session2.createQuery("from Note");
			List<Note> list = q.list();

			for (Note note : list) {
			%>


			<div class="col-md-4">
				<div class="card mt-5 shadow" style="width: 18rem;">
					<img class="m-4 mx-auto" src="images/notes.png" width="60px" hieght="60px" alt="notes_img">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text p-2"><%=note.getContent()%></p>
						<b class="text-primary" ><%=note.getAddedDate() %></b>
						<div class="container text-center mt-4" >
						   <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger showbtns">Delete</a> 
						   <a href="UpdateNote.jsp?note_id=<%=note.getId() %>" class="btn btn-primary showbtns">Update</a>
						</div>
					</div>
				</div>
			</div>

			<%
			}

			session2.close();
			%>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>

</html>