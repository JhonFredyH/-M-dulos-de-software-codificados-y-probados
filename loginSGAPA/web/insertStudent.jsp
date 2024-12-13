<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>Resultado del Registro</title>
</head>
<body>

    <%
        // Recuperando los datos del formulario
        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String birthdate = request.getParameter("birthdate");
        String grade = request.getParameter("grade");

        // Realizando la conexión con la base de datos y el INSERT
        Connection con = null;
        PreparedStatement ps = null;
        String url = "jdbc:mysql://localhost:3306/loginsgapa";  // Cambiar si el puerto es diferente
        String user = "root";  
        String password = "";  
        String sql = "INSERT INTO students (name, lastname, email, phone, address, birthdate, grade) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {
            // Establecer conexión
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
            ps = con.prepareStatement(sql);

            // Setear los valores en el PreparedStatement
            ps.setString(1, name);
            ps.setString(2, lastname);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.setString(6, birthdate);
            ps.setString(7, grade);

            // Ejecutar la inserción
            int rowsInserted = ps.executeUpdate();

            if (rowsInserted > 0) {
                out.println("<h2>Datos del estudiante insertados correctamente.</h2>");
            } else {
                out.println("<h2>No se insertaron los datos en la base de datos.</h2>");
            }
        } catch (SQLException e) {
            out.println("<h2>Error SQL: " + e.getMessage() + "</h2>");
        } catch (Exception e) {
            out.println("<h2>Error general: " + e.getMessage() + "</h2>");
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    %>

</body>
</html>
