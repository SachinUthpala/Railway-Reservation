<!-- this index age is use to run the programme -->
<%
	if(session.getAttribute("name")== null){
		response.sendRedirect("Home/home.jsp");
	}
%>