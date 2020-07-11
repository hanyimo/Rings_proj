package com.ssm.controller;

import java.io.File;
import java.io.IOException;

import java.util.Date;
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
import com.ssm.pojo.Category;
import com.ssm.pojo.goods;

@WebServlet("/server/editgoods")
public class ServerFileUploadByAlterController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 声明变量，用于获取前端数据
		String goodsName = null,goodsCode = null,
		material = null,goodsDesc=null,goodsPhoto = null;
		Category category=null;
		Double goodsPrice = null;
		Integer gid=null;
		try {
			String realPath = getServletContext().getRealPath("statics/file");
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletContext servletContext = this.getServletConfig().getServletContext();
			File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
			factory.setRepository(repository);
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setSizeMax(2*1024*1024);	// 2M
			upload.setHeaderEncoding("UTF-8");
			List<FileItem> items = upload.parseRequest(request);
			Iterator<FileItem> iter = items.iterator();
			while (iter.hasNext()) {
			    FileItem item = iter.next();
			    if (item.isFormField()) {
			    	String name = item.getFieldName();
					String value = item.getString();
					if(name.equals("goodsName")) {
								if(StringUtils.isNullOrEmpty(value))
									goodsName = null;
								else
									goodsName = new String(value.getBytes("ISO-8859-1"), "utf-8");
							}
							else if(name.equals("goodsCode")) {
								if(StringUtils.isNullOrEmpty(value))
									goodsCode = null;
								else
									goodsCode = new String(value.getBytes("ISO-8859-1"), "utf-8");
							}
							else if(name.equals("material")) {
								if(StringUtils.isNullOrEmpty(value))
									material = null;
								else
									material = new String(value.getBytes("ISO-8859-1"), "utf-8");
							}
							else if(name.equals("goodsPrice")) {
								if(StringUtils.isNullOrEmpty(value))
									goodsPrice = null;
								else
									goodsPrice =Double.valueOf(value);
							}
							else if(name.equals("category")) {
								category = new Category();
								if(StringUtils.isNullOrEmpty(value)) 
									category.setCategoryId(null);
								else 
									category.setCategoryId(Integer.valueOf(value));
							}
							else if(name.equals("gid")){
								if(StringUtils.isNullOrEmpty(value)) {
									request.getRequestDispatcher("/Rings_proj/server/Editgoods?gid="+gid).forward(request, response);
									return;
								}
								gid = Integer.valueOf(value);
							}
							else {
								if(StringUtils.isNullOrEmpty(value))
									goodsDesc = null;
								else
									goodsDesc = new String(value.getBytes("ISO-8859-1"), "utf-8");
							}
					    } else {					
					        String fileName = item.getName();	
					        String contentType = item.getContentType();
					        if(contentType.equals("image/png") 
					        		|| contentType.equals("image/jpeg")
					        		|| contentType.equals("image/gif")) {
					        	String rand = UUID.randomUUID().toString();
					        	goodsPhoto = rand+fileName.substring(fileName.lastIndexOf("."));
						        File uploadedFile = new File(realPath,goodsPhoto);
						        item.write(uploadedFile);
						     }
					        else {// 没有上传图片
								goodsPhoto=null;
							}
					    }
					}
				//封装
			     goods goodss = new goods(gid,goodsName,goodsDesc,
			        		goodsPrice,goodsPhoto,category,null,new Date(),1,null,null,null,goodsCode,material);
			     request.getSession().setAttribute("goodss",goodss);
			     System.out.println(goodss.getGoodsName()+goodss.getGoodsCode()+goodss.getGoodsPrice()+goodss.getGoodsPhoto()+goodss.getCategory().getCategoryId());
			     response.sendRedirect("/Rings_proj/server/edit_goodss");
			       
				} catch (Exception e) {
					e.printStackTrace();
				}
	}
}
