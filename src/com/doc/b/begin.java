package com.doc.b;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doc.a.MineUtil;
import com.doc.c.Indexer;
import com.doc.c.LucenceThread;

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
			String path=request.getParameter("url");
			String pw=request.getParameter("password");
			Properties prop2 = new Properties();
			InputStream in2 = this.getClass().getClassLoader().getResourceAsStream("config.properties");
			prop2.load(in2);
			if(!prop2.getProperty("pw").equals(pw)){//登录失败返回主页
				 request.getRequestDispatcher("/Login").forward(request,response);
				 return;
			}
//			String path="D:/1.华高工作整理";
			File file = new File(path);
			List<File> list = MineUtil.listDirectory(file);
			for (File file2 : list) {
				if(file2.isDirectory()){//判断是否是文件夹
//					System.out.println(file2.getName());
					html.append(" <li  onclick=query(\""+path+"/"+file2.getName()+"\") class=\"layui-nav-item\"><a href=\"javascript:;\">"+file2.getName()+"</a></li>");
				}
			}
			new Thread(new LucenceThread(path,request)).start();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("roadPanel", "'"+html.toString()+"'");
		request.getRequestDispatcher("/Show/c.jsp").forward(request,response);
		doGet(request, response);
	}
}
