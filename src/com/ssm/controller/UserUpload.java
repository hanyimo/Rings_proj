package com.ssm.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mysql.jdbc.StringUtils;
import com.ssm.pojo.User;

@WebServlet("/userupload")
public class UserUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer uid =null;
		String userName = null;
		String userAlice=null;
		String userSex=null;
		String userEmail = null;
		String userPhoto = null;
		System.out.println("牛逼");
		try {
			String realPath = getServletContext().getRealPath("statics/client/userupload");
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletContext servletContext = this.getServletConfig().getServletContext();
			File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
			factory.setRepository(repository);
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setSizeMax(2*1024*1024);	// 2M
			upload.setHeaderEncoding("UTF-8");
			List<FileItem> items = upload.parseRequest(request);
			Iterator<FileItem> iter = items.iterator();
			System.out.println("shide");
			while (iter.hasNext()) {
			    FileItem item = iter.next();
			    if (item.isFormField()) {
			    	System.out.println("111111");
			    	String name = item.getFieldName();
					String value = item.getString();
					if(name.equals("userName"))
									userName = new String(value.getBytes("ISO-8859-1"), "utf-8");
					else if(name.equals("userAlice")) 
									userAlice = new String(value.getBytes("ISO-8859-1"), "utf-8");
					else if(name.equals("uid")) 
									uid = Integer.valueOf(value);
					else if(name.equals("userSex")) 
									userSex = new String(value.getBytes("ISO-8859-1"), "utf-8");
					else if(name.equals("userEmail")) 
									userEmail = new String(value.getBytes("ISO-8859-1"), "utf-8");
			    } else {					
				        String fileName = item.getName();	
				        String contentType = item.getContentType();
				        if(contentType.equals("image/png") 
				        		|| contentType.equals("image/jpeg")
				        		|| contentType.equals("image/gif")) {
				        	String rand = UUID.randomUUID().toString();
				        	userPhoto = rand+fileName.substring(fileName.lastIndexOf("."));
					        File uploadedFile = new File(realPath,userPhoto);
					        item.write(uploadedFile);
					     }
					   }
				}
				System.out.println("nihao");
				//封装
				 User user = new User(uid,null,userName,userAlice,userEmail,userSex,userPhoto,null,null);
			     request.getSession().setAttribute("user",user);
			     response.sendRedirect("/Rings_proj/user/user_manage");
			       
				} catch (Exception e) {
					e.printStackTrace();
				}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
