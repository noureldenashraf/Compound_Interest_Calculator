package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(name = "MainServlet",urlPatterns = {"/","/main"})
public class MainServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("get done");
        getServletContext().getRequestDispatcher("/index.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("post done");
        String principal = req.getParameter("principal");
        String rate = req.getParameter("rate");
        String time = req.getParameter("time");
        String frequency = req.getParameter("frequency");
         if (principal == null || rate == null || time == null || frequency == null || //checking for null or blank inputs
                 principal.isBlank() || rate.isBlank() || time.isBlank() || frequency.isBlank() )
         {
             System.out.println("null");
            req.setAttribute("error","Error Missing Fields");
             getServletContext().getRequestDispatcher("/index.jsp").include(req,resp);
             req.removeAttribute("error");
         }
         else {
             System.out.println("not null");
             double result = Calculations.CalculateInterest(Double.parseDouble(principal),Double.parseDouble(rate),Integer.parseInt(time),Integer.parseInt(frequency));
             req.setAttribute("result", result);
             getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
         }
    }
}