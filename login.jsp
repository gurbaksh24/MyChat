<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/mychat?user=root&password=india@123");
PreparedStatement st=cn.prepareStatement("select * from users where uid=? and pass=?");
st.setString(1, request.getParameter("uid"));
st.setString(2, request.getParameter("pass"));
ResultSet rs=st.executeQuery();
String s="";
if(rs.next())
{
	s="valid";	
}
else
	s="invalid";
cn.close();
out.println(s);


%>