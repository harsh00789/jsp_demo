package jspmvc;

public class BeanAsModel {
private String name , password;

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}



public BeanAsModel(String name, String password) {
	super();
	this.name = name;
	this.password = password;
}

public BeanAsModel() {
	super();
}

@Override
public String toString() {
	return "BeanAsModel [name=" + name + ", password=" + password + "]";
}
	

public Boolean validate() {
	
	if(password.equals("admin123")) {
		
		return true;
	}
	else {
		return false;
	}
}
	
}
