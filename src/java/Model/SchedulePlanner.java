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


    public SchedulePlanner() {
    }

    public ArrayList<Flight> getPlanning(String id) {
	User user = Controller.Instance().getUserByUsername(id);
	ArrayList<Flight> flights = Controller.Instance().getScheduledFlights(user);

	return flights;
    }
}
