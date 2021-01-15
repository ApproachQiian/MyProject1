<%@ page import="com.neusoft.web.click" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    /**
     * 生成图片
     * 调用click().getRes方法
     */
    String genImg = click.getRes(); //接收python程序返回的图片地址
    System.out.println(genImg);//输出图片地址到控制台
    response.getWriter().write(genImg);//把字符串写到前端
%>