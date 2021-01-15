<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.OutputStream" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String imagepath = request.getParameter("imagepath");
    InputStream is = new FileInputStream(new File(imagepath));
    OutputStream os = response.getOutputStream();
    byte[] bytes = new byte[1024];
    int len = 0;
    while((len = is.read(bytes)) > 0){
        os.write(bytes, 0, len);
    }
    is.close();
    os.close();
%>
1