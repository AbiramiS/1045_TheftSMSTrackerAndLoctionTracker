<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
    <title>Income calls</title>
 <script>
        window.history.forward(1);
</script>
</head>
<body>
    <h2 align="center"><span style="color:lightseagreen; ">Outgoing Message Logs</span></h2>
<%
      try {
         
         // String connectionURL = "jdbc:mysql://localhost:3306/cps";
          String connectionURL = "jdbc:mysql://instance38677.db.xeround.com:6615/cps";
          Connection connection = null;
          Statement statement = null;
          ResultSet rs = null;

          
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          connection = DriverManager.getConnection(connectionURL, "admin", "admin");
          statement = connection.createStatement();
          String QueryString = "SELECT * from ogmsg order by sno";
          rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" align="center">
    <TR>
         <TD><b>S.No</b></TD>
	     <TD><b>Receiver</b></TD>
         <TD><b>Content</b></TD>
         <TD><b>Time</b></TD> 
    <%
    while (rs.next()) {
    %>
    <TR>
        <TD><%=rs.getInt(1)%></TD>
     	<TD><%=rs.getString(2)%></TD>
        <TD><%=rs.getString(3)%></TD>
        <TD><%=rs.getString("timestamp")%></TD> 
    </TR>
    <%   }    %>
    <%
   
    rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
    %>
    
    <font size="+3" color="red"></b>
        <%
                out.println("Unable to connect to database.");
            }
        %></font>
    </TABLE>
</font>
</body>
</html>