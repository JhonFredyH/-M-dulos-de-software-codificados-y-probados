
package newpackage;


public class User {
    int id;
    String name;
    String lastname;
    String email;
    String password;
    
    
    public User(){
        
    }
    
    public User(int id, String name, String lastname, String email, String password){
        this.id = id;
        this.name = name;
        this.lastname = lastname;
        this.email = email;
        this.password = password;
    }
    
    public User(String name, String lastname, String email, String password){
        this.name = name;
        this.lastname = lastname;
        this.email = email;
        this.password = password;
    }
    
    public User(String lastname, String email, String password){
        this.lastname = lastname;
        this.email = email;
        this.password = password;
    }
    
     public User(String email, String password){
        this.email = email;
        this.password = password;
    }
    
    
    
    public int getId(){
        return id;
    }
    
    public void setId(int id){
        this.id = id;
    }
    
    public String getName(){
        return name;
    }     
    
    public void setName(String name){
        this.name = name;
    } 
    
    public String getLastname(){
        return lastname;
    }     
    
    public void setLastname(String lastname){
        this.lastname = lastname;
    } 
    
    public String getEmail(){
        return email;
    }     
    
    public void setEmail(String email){
        this.email = email;
    } 
      
    
    public String getPassword(){
        return password;
    }
    
    public void setPassword(String password){
        this.password = password;
    }
    
       
    
}
