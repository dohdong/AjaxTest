<%@ page import="com.kosta.dao.DeptDAO" %>
<%@ page import="com.kosta.vo.DeptVO" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024-07-22
  Time: AM 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1" width="80%">
    <%
        DeptDAO dao = new DeptDAO();
        ArrayList<DeptVO> list = dao.findAll();
        for (DeptVO d : list) {
            %>
    <tr>
        <td><%=d.getDno()%></td>
        <td><%=d.getDname()%></td>
        <td><%=d.getDloc()%></td>
    </tr>
            <%
        }
    %>
    </table>
</body>
</html>
