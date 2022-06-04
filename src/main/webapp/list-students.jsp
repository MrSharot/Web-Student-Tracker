<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Student Tracker App</title>
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>



<body>
	<div id="wrapper"> 
		<div id="header">
			<h2>ShaRot's University</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
			<!-- put new button: Add Student -->
			
			<input type="button" value="Add Student" 
			onclick="window.location.href='add-student-form.jsp'; return false;"
			class="add-student-button"
			/>
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
					
				</tr>
				<c:forEach var="tempStudents" items="${STUDENT_LIST}">
					
					<!-- setting up a link for each student -->
					<c:url var="tempLink" value="StudentControllerServlet">
						<c:param name="command" value="LOAD"/>
						<c:param name="studentId" value="${tempStudents.id}"/>
					
					</c:url>
					
					<!-- setting up a delete link for each student -->
					<c:url var="deleteLink" value="StudentControllerServlet">
						<c:param name="command" value="DELETE"/>
						<c:param name="studentId" value="${tempStudents.id}"/>
					
					</c:url>
					
					<tr>
						<td>${tempStudents.firstName}</td>
						<td>${tempStudents.lastName}</td>
						<td>${tempStudents.email}</td>
						<td>
							<a href="${tempLink}">Update</a>
							 | 
							<a href="${deleteLink}"
							onclick="if(!(confirm('Are you sure you want to delete this data?'))) return false">
							Delete</a>
						
						</td>
					
					</tr>
				
				</c:forEach>
					
				
			
			</table>
		
		</div>
	</div>
	
	




</body>

</html>

