<%@ page import="com.kosta.vo.DeptVO"%><%@ page import="com.kosta.dao.DeptDAO"%><%@ page import="com.kosta.vo.MessageVO"%><%@ page import="com.google.gson.Gson"%><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024-07-22
  Time: AM 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="application/json;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("UTF-8");
    int dno = Integer.parseInt(request.getParameter("dno"));

    DeptDAO dao = new DeptDAO();
    int re = dao.delete(dno);

    MessageVO m = new MessageVO();
    m.setMsg(re+"");
    Gson gson = new Gson();
%>

<%= gson.toJson(m) %>
