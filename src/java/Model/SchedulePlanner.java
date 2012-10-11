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

    private User u;

    public SchedulePlanner() {
    }

    public ArrayList<Flight> getPlanning(String id) {
	User user = Controller.Instance().getUserByUsername(id);
	//ArrayList<Flight> flights = Controller.Instance().getFlights();
	ArrayList<Flight> flights = Controller.Instance().getScheduledFlights(user);

//        u = Controller.Instance().getUserByUsername(id);
//        ArrayList<Flight> tempFlights = Controller.Instance().getFlights();
//        ArrayList<Flight> flights = null;
//        
//        for (int i = 0; i < tempFlights.size(); i++) {
//            if(tempFlights.get(i).getPilot().getName().equals(u.getUsername())){
//                flights.add(tempFlights.get(i));
//            }
//        }

	return flights;
    }
}
