import entity.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String name = "Pizza Order";


            Order order = new Order("size", "crust", "sauce", "toppings", "address");
            request.setAttribute("order", order);

            request.getRequestDispatcher("pizza-order.jsp").forward(request, response);
            System.out.println(order);
        }
    }

