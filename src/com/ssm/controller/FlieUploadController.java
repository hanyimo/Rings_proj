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
import com.ssm.pojo.Design;
import com.ssm.pojo.User;


@WebServlet("/design/add_design")
public class FlieUploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		try {
			// 声明接收数据的变量
			Integer uid = null;
			String dPhoto = null;
			String dlink = null;
			Date dCreateDate = new Date();
			String dname = null;
			String dMessage = null;
			// 获取上传文件的目录(这里表示上传文件的目录为statics/client/upload)
			String realPath = getServletContext().getRealPath("statics/client/upload");
			// 为基于磁盘的文件项创建DiskFileItemFactory对象
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 配置存储库（配置文件上传的临时存放位置）
			ServletContext servletContext = this.getServletConfig().getServletContext();
			File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
			factory.setRepository(repository);
			// 创建新的文件上载处理程序
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 设置总请求大小约束（字节）
			upload.setSizeMax(100 * 1024 * 1024); // 100M 1byte=8bit 1kb=1024byte 1M=1024kb
			// 设置保存文件的编码方式，
			upload.setHeaderEncoding("UTF-8");
			// 分析请求，把请求参数封装成FileItem类的对象，放入List中(相当于ArrayList)
			List<FileItem> items = upload.parseRequest(request);
			// 遍历list，分别处理每个上传参数
			Iterator<FileItem> iter = items.iterator();
			while (iter.hasNext()) {
				FileItem item = iter.next();// 得到当前项，类型为FileItem
				if (item.isFormField()) { // 批判内容是否是普通文本(非文件内容)
					String name = item.getFieldName();// 获取参数名称 userId
					String value = item.getString();// 获取值
					if(StringUtils.isNullOrEmpty(value)) {
						request.getSession().setAttribute("error","上传失败");
						request.getRequestDispatcher("/design/designup").forward(request, response);
						return;
					}
					if(name.equals("dname"))
						dname = new String(value.getBytes("ISO-8859-1"),"utf-8");
					else if(name.equals("dlink"))
						dlink = new String(value.getBytes("ISO-8859-1"),"utf-8");
					else if(name.equals("dMessage"))
						dMessage = new String(value.getBytes("ISO-8859-1"),"utf-8");
					else
						dPhoto = new String(value.getBytes("ISO-8859-1"),"utf-8");
				} else { // 上传的文件数据
					String fileName = item.getName(); // 获取文件名
					String contentType = item.getContentType();// 获取文件的MIME类型
					// 只能上传的是图片
					if(contentType.equals("image/png") 
							|| contentType.equals("image/gif")
							|| contentType.equals("image/jpeg")) {
						String rand = UUID.randomUUID().toString();// 获取一个UUID值
						// 上传文件(包含了上传目录和文件名称)
						dPhoto = rand + fileName;
						File uploadedFile = new File(realPath, dPhoto);
						item.write(uploadedFile);// 把文件保存到上传目录
					}
					else {// 上传的不是图片
						request.getSession().setAttribute("error","只能上传图片");
						request.getRequestDispatcher("/design/designup").forward(request, response);
						return;
					}
				}
			}
			//设置uid(session获取)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
			 uid = ((User)request.getSession().getAttribute("loginer")).getUid();
			// 把对应的内容封装为Design对象
			Design design = new Design(uid, dPhoto, dlink, dCreateDate, dname, dMessage);
			request.getSession().setAttribute("design",design);
			System.out.println(design.getUid()+design.getDname()+design.getdMessage());
			// 跳转到desginup页面
			response.sendRedirect("/Rings_proj/design/designupto");
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
