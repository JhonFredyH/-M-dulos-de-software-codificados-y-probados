package newpackage;

import java.sql.Connection;

public class TestConnection {
    public static void main(String[] args) {
        try {
            // Llamamos al método de conexión
            Connection con = ConnectionPro.getConnection();

            // Comprobamos si la conexión es válida
            if (con != null) {
                System.out.println("Conexión exitosa a la base de datos.");
            } else {
                System.out.println("No se pudo establecer la conexión a la base de datos.");
            }

        } catch (Exception e) {
            // Imprimimos cualquier error encontrado
            System.out.println("Error al conectar con la base de datos:");
            e.printStackTrace();
        }
    }
}
