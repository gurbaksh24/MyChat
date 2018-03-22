<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/mychat?user=root&password=india@123");
PreparedStatement st=cn.prepareStatement("insert into users values(?,?,?)");
st.setString(1, request.getParameter("uid"));
st.setString(2, request.getParameter("pass"));
st.setString(3, request.getParameter("uname"));
st.executeUpdate();
cn.close();
out.println("Data Saved");


%>