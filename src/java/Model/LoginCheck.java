/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Controller.Controller;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author bramlaptop
 */
public class LoginCheck {

    public boolean login(String username, String password) {
	boolean check = false;
	Controller controller = new Controller();
	controller.Initialize();
	
	ArrayList<User> users = Controller.Instance().getUsers();
	
	try {
	String user = Controller.Instance().getUserByUsername(username).getUsername();
	



	System.out.println(user);
	if (!user.equals("")) {

	    User u = new User();
	    u.setPassword(password, false);


	    if (Controller.Instance().getUserByUsername(username).getPassword().equals(u.getPassword())) {
		check = true;
	    }

	}
	} catch(java.lang.NullPointerException npe){
	    System.out.println(npe);
	}
	System.out.println(check);
	return check;
    }
}
