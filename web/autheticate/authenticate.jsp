
 
<%-- start web service invocation --%>
    <%
    try {
	com.htasia.testing.WebServiceToPlayAround_Service service = new com.htasia.testing.WebServiceToPlayAround_Service();
	com.htasia.testing.WebServiceToPlayAround port = service.getWebServiceToPlayAroundPort();
	 // TODO initialize WS operation arguments here
	java.lang.String username =request.getParameter("username");
	String password = request.getParameter("password");
	// TODO process result here
	String result = port.verify(username,Integer.parseInt(password));
       
     
        %><h1>Information about <%=username%></h1><%
        %><table border="1"><%
            %><th>User Information</th><%
            %><tr><td>Last name: <%=result%></td></tr><%    
            %><tr><td>First name: <%=result%></td </tr><%
            %><tr><td>Age: <%=result%></td> </tr><%
        %></table><% 
            
       
    } catch (Exception ex) {
	// TODO handle custom exceptions here
        ex.printStackTrace();
      out.println("null");
    }
    %>
    <%-- end web service invocation --%>
