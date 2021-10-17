package entity;

import java.util.ArrayList;
import java.util.List;

public class Order {
    private String size;
    private String crust;
    private String sauce;
    private ArrayList<String> toppings;
    private String address;

    public Order(String size, String crust, String sauce, ArrayList<String> toppings, String address) {
        this.size = size;
        this.crust = crust;
        this.sauce = sauce;
        this.toppings = toppings;
        this.address = address;
    }

    public Order() {

    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getCrust() {
        return crust;
    }

    public void setCrust(String crust) {
        this.crust = crust;
    }

    public String getSauce() {
        return sauce;
    }

    public void setSauce(String sauce) {
        this.sauce = sauce;
    }

    public ArrayList<String> getToppings() {
        return toppings;
    }

    public void setToppings(ArrayList<String> toppings) {
        this.toppings = toppings;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
