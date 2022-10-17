package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.notemaker.entity.Note;
import com.notemaker.helper.FactoryProvider;

public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateNoteServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id").trim());
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		
		Note note = s.get(Note.class, id);
		note.setTitle(title);
		note.setContent(content);
		long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
		note.setAddedDate(date);
		
		tx.commit();
		s.close();
		
		response.sendRedirect("ShowNote.jsp");
	}

}
