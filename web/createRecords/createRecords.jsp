    <%-- start web service invocation --%><hr/>
    <%
    try {
	com.htasia.testing.WebServiceToPlayAround_Service service = new com.htasia.testing.WebServiceToPlayAround_Service();
	com.htasia.testing.WebServiceToPlayAround port = service.getWebServiceToPlayAroundPort();
	 // TODO initialize WS operation arguments here
	String username = request.getParameter("username");
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String age = request.getParameter("age");
	String password = request.getParameter("password");
        
     System.out.println(username);
 
	port.addRecord(username, firstName, lastName, Integer.parseInt(age), Integer.parseInt(password));
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
