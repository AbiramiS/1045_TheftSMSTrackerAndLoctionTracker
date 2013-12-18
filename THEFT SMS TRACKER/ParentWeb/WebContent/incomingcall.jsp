<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
    <title>Income calls</title>
    <style>
        body{
            
            background-position: center;
            background-position: inherit;
                
        }
       
    </style>
  <script>
        javascript:window.history.forward(1);
</script>
</head>
<body  border='0'>
    <h2 align="center"><span style="color:lightseagreen; ">Incoming Call Logs</span></h2>
<%
     
      try {
         
          String connectionURL = "jdbc:mysql://instance38677.db.xeround.com:6615/cps";
          Connection connection = null;
          Statement statement = null;
          ResultSet rs = null;

          
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          connection = DriverManager.getConnection(connectionURL, "admin", "admin");
          statement = connection.createStatement();
          String QueryString = "SELECT * from incall order by sno";
          rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" align="center">
    <TR>
         <TD><b>S.NO</b></TD>
        <TD><b>Caller</b></TD>
        <TD><b>Duration(sec)</b></TD>
        <TD><b>Time</b></TD>
    
    <%
    while (rs.next()) {
    %>
    <TR>
        <TD><%=rs.getInt(1)%></TD>
        <TD><%=rs.getString(2)%></TD>
        <TD><%=rs.getString(3)%></TD>
        <TD><%=rs.getString(4)%></TD>
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