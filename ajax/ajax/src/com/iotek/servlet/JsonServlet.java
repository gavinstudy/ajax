package com.iotek.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;


public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/x-json"); //������Ӧ����json��ʽ
		PrintWriter out=response.getWriter();
		String userName=request.getParameter("username");
		System.out.println("doget=="+userName);
		JSONObject jb=new JSONObject();
		if("liayin".equals(userName)){
			jb.put("uname", "�ȱ�ע��");
		}else{
			jb.put("uname", "����ʹ��");
		}
		System.out.println(jb.toString());
		out.println(jb);    //����ͻ��������;
		out.flush();
		out.close();
	}

}
