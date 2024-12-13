
package newpackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



public class UserDatabase {
    
    private static final Logger LOGGER = Logger.getLogger(UserDatabase.class.getName());
    
    Connection con;
    
    public UserDatabase(Connection con){
        this.con = con;
    }
    
    public boolean saveUser(User user){
        boolean set = false;
        try{
            String query = "INSERT INTO usuarios(nombre,apellido,email,password) values(?,?,?,?)";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1,user.getName());
            pt.setString(2,user.getLastname());
            pt.setString(3,user.getEmail());
            pt.setString(4,user.getPassword());            
            pt.executeUpdate();
            set = true;
            
        }catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error en la consulta SQL", e);
            
        }catch(Exception e){
            LOGGER.log(Level.SEVERE, "Error inesperado", e);
        }
           return set;            
    }
}    
      
    
    

