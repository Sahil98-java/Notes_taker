package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.factoryhelper.FactoryProvider;


public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public deleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(request.getParameter("note_id"));
			Session s=FactoryProvider.getFactory().openSession();
			Note note=s.get(Note.class, id);
			Transaction t=s.beginTransaction();
			s.delete(note);
			t.commit();
			s.close();
			response.sendRedirect("all_notes.jsp");
			 
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	
	

}
