
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class AddStudentServlet extends HttpServlet {
    

    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
         // Obtiene los parámetros del formulario enviados por GET
        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String birthdate = request.getParameter("birthdate");
        String grade = request.getParameter("grade");

        // Imprimir los valores recibidos para verificar
        System.out.println("Nombre: " + name);
        System.out.println("Apellido: " + lastname);
        System.out.println("Email: " + email);
        System.out.println("Teléfono: " + phone);
        System.out.println("Dirección: " + address);
        System.out.println("Fecha de Nacimiento: " + birthdate);
        System.out.println("Grado: " + grade);

        // Crear respuesta para confirmar que los datos fueron recibidos correctamente
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h2>Datos del Estudiante Recibidos:</h2>");
        out.println("<p>Nombre: " + name + "</p>");
        out.println("<p>Apellido: " + lastname + "</p>");
        out.println("<p>Email: " + email + "</p>");
        out.println("<p>Teléfono: " + phone + "</p>");
        out.println("<p>Dirección: " + address + "</p>");
        out.println("<p>Fecha de Nacimiento: " + birthdate + "</p>");
        out.println("<p>Grado: " + grade + "</p>");
        out.println("</body></html>");
    
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
