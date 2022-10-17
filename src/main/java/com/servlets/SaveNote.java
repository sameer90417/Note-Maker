package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.notemaker.entity.Note;
import com.notemaker.helper.FactoryProvider;


public class SaveNote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SaveNote() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			long millis = System.currentTimeMillis();
            java.sql.Date date = new java.sql.Date(millis);
            
			Note note = new Note(title, content, date);
			
//			hibernate save
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			
			session.save(note);
			
			tx.commit();
			session.close();
			
			response.sendRedirect("ShowNote.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
