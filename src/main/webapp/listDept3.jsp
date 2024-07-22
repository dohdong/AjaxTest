<%@ page import="com.kosta.dao.DeptDAO" %>
<%@ page import="com.kosta.vo.DeptVO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="application/json; charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--[{"dno":"10","dname":"기획팀","dloc":"종각"},{"dno":"10","dname":"기획팀","dloc":"종각"}]--%>

<%
    Thread.sleep(3000);

    String data = "[";
    DeptDAO dao = new DeptDAO();
    ArrayList<DeptVO> list = dao.findAll();
    for (DeptVO d : list) {
        data += "{";
        data += "\"dno\":\"" + d.getDno() + "\",";
        data += "\"dname\":\"" + d.getDname() + "\",";
        data += "\"dloc\":\"" + d.getDloc() + "\",";
        data += "},";
    }
    data = data.substring(0, data.length() - 1);
    data += "]";
%>

<%= data %>

