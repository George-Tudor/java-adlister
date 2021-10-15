import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/contacts")
public class ContactsIndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // pass the string "George" to the view
        String name = "George";
        request.setAttribute("name", name);
        request.getRequestDispatcher("contacts.jsp").forward(request, response);
    }
}

