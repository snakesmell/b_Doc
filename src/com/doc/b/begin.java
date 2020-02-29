package com.doc.b;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doc.a.Util;

/**
 * Servlet implementation class begin
 */
@WebServlet("/begin")
public class begin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public begin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		StringBuilder html=new StringBuilder();
		try {
			String path="D:/1.华高工作整理";
			File file = new File(path);
			List<File> list = Util.listDirectory(file);
			for (File file2 : list) {
				System.out.println(file2.getName());
				
				html.append(" <li  onclick=query(\""+path+"/"+file2.getName()+"\") class=\"layui-nav-item\"><a href=\"javascript:;\">"+file2.getName()+"</a></li>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("roadPanel", "'"+html.toString()+"'");
		request.getRequestDispatcher("/Show/c.jsp").forward(request,response);
		doGet(request, response);
	}

}
