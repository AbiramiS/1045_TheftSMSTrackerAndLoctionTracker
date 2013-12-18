<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
    <title>Income calls</title>
 <script>
        window.history.forward(1);
</script>
</head>
<body >
<h2 align="center"><span style="color:lightseagreen; ">Location Details</span></h2>
<%
      try {
         
          String connectionURL = "jdbc:mysql://instance38677.db.xeround.com:6615/cps";
          Connection connection = null;
          Statement statement = null;
          ResultSet rs = null;

          
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          connection = DriverManager.getConnection(connectionURL, "admin", "admin");
          statement = connection.createStatement();
          String QueryString = "SELECT * from location order by sno";
          rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" align="center">
    <TR>
        <TD><b>sno</b></TD>
        <TD><b>Latitude</b></TD>
        <TD><b>Longitude</b></TD>
        <TD><b>timestamp</b></TD>
    <%
    while (rs.next()) {
    %>
    <TR>
        <TD><%=rs.getString(1)%></TD>
        <TD><%=rs.getString(2)%></TD>
        <TD><%=rs.getString(3)%></TD>
        <TD><%=rs.getString("timestamp")%></TD>
    </TR>
    <%   }   
   
    rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
    
    
    
        
                out.println("Unable to connect to database.");
            }
        %>
    </TABLE>

</body>
</html>