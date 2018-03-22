<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/mychat?user=root&password=india@123");
PreparedStatement st=cn.prepareStatement("select * from chat order by id desc");
ResultSet rs=st.executeQuery();
String s="";
while(rs.next())
{
	s=s+rs.getString(1)+"-->"+rs.getString(2)+"-->"+rs.getString(3)+";";	
}
cn.close();
out.println(s);


%>