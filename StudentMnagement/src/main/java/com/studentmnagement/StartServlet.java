package com.studentmnagement;



import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;



@WebServlet("/StartServlet")   // IMPORTANT

public class StartServlet extends HttpServlet {



    protected void doGet(HttpServletRequest request, HttpServletResponse response)

            throws ServletException, IOException {



        response.setContentType("text/html");

        response.getWriter().println("<h1>Hello fahim! 🚀 Servlet is Working!</h1>");

    }

}