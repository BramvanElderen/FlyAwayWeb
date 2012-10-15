/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Controller.Controller;
import java.util.ArrayList;

/**
 *
 * @author LaptopFreek
 */
public class SchedulePlanner {
private Staff staff;

    public Staff getStaff() {
	return staff;
    }

    public void setStaff(Staff staff) {
	this.staff = staff;
    }


    public SchedulePlanner() {
    }

    public String getStaffName(){
	return staff.getName();
    }

    public ArrayList<Flight> getPlanning(String id) {
	User user = Controller.Instance().getUserByUsername(id);
	staff = user.getStaffAccount();
	ArrayList<Flight> flights = Controller.Instance().getScheduledFlights(user);
	
	return flights;
    }
}
