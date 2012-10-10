/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author LaptopFreek
 */
public class SchedulePlanner {
    
    private User u;

    public SchedulePlanner() {
        
    }
    
    public ArrayList<Flight> getPlanning(String id){
        u = Controller.Controller.Instance().getUserByUsername(id);
        ArrayList<Flight> tempFlights = Controller.Controller.Instance().getFlights();
        ArrayList<Flight> flights = null;
        
        for (int i = 0; i < tempFlights.size(); i++) {
            if(tempFlights.get(i).getPilot().getName().equals(u.getUsername())){
                flights.add(tempFlights.get(i));
            }
        }
        
        return flights;
    }
    
}
