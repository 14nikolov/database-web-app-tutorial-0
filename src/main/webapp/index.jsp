<!-- Redirects the user from the main Application Page to another page -->
<%
    String redirectURL = "http://localhost:8080/web-customer-tracker/customer/list";
    response.sendRedirect(redirectURL);
%>