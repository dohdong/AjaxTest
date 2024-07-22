<%@ page import="com.kosta.dao.DeptDAO" %>
<%@ page import="com.kosta.vo.DeptVO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="application/json; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.google.gson.Gson" %>

<%
//    Thread.sleep(5000);

    DeptDAO dao = new DeptDAO();
    ArrayList<DeptVO> list = dao.findAll();
    Gson gson = new Gson();
    String data = gson.toJson(list);
%>

<%= data %>

