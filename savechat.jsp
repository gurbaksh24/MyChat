<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/mychat?user=root&password=india@123");
PreparedStatement st=cn.prepareStatement("insert into chat(sender,msg) values(?,?)");
st.setString(1, request.getParameter("sender"));
st.setString(2, request.getParameter("msg"));
st.executeUpdate();
cn.close();
out.println("Message Sent");


%>