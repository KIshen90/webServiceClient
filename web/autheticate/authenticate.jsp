
    <%@page import="com.htasia.testing.Userinfo"%>
<%-- start web service invocation --%>
    <%
    try {
	com.htasia.testing.WebServiceToPlayAround_Service service = new com.htasia.testing.WebServiceToPlayAround_Service();
	com.htasia.testing.WebServiceToPlayAround port = service.getWebServiceToPlayAroundPort();
	 // TODO initialize WS operation arguments here
	java.lang.String username =request.getParameter("username");
	String password = request.getParameter("password");
	// TODO process result here
	Userinfo result = port.verify(username,Integer.parseInt(password));
        String first_name = result.getFirstName();
        String last_name = result.getLastName();
        int age = result.getAge();
     
        %><h1>Information about <%=username%></h1><%
        %><table border="1"><%
            %><th>User Information</th><%
            %><tr><td>Last name: <%=last_name%></td></tr><%    
            %><tr><td>First name: <%=first_name%></td </tr><%
            %><tr><td>Age: <%=age%></td> </tr><%
        %></table><% 
            
       
    } catch (Exception ex) {
	// TODO handle custom exceptions here
        ex.printStackTrace();
      out.println("null");
    }
    %>
    <%-- end web service invocation --%>
