
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("name");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Depuración: Mostrar valores en la consola del servidor
            System.out.println("Name: " + name);
            System.out.println("Last Name: " + lastname);
            System.out.println("Email: " + email);
            System.out.println("Password: " + password);

           
            User userModel = new User(name, lastname, email, password);
            
            
            UserDatabase regUser = new UserDatabase(ConnectionPro.getConnection());
            HttpSession session = request.getSession();

            
            if (regUser.saveUser(userModel)) {
                
                session.setAttribute("message", "Usuario registrado exitosamente en la base de Datos.");
                response.sendRedirect("registrationSuccess.jsp");
            } else {
                
                session.setAttribute("message", "Error: El usuario ya existe o ocurrió un problema.");
                response.sendRedirect("register.jsp"); 
                
            }

        } catch (Exception e) {
            e.printStackTrace();
            
            HttpSession session = request.getSession();
            session.setAttribute("message", "Ocurrió un error inesperado. Por favor, intente nuevamente.");
            response.sendRedirect("register.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
