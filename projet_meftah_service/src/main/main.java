package main;

import server.Dao;
import javax.xml.ws.Endpoint;

public class main {

public static void main(String[] args) {
try {
Endpoint.publish("http://localhost:1981/ws/calcul", new Dao());
System.out.println("Fait...");
} catch (Exception e) {
System.out.println(e.getMessage());
}
}

}