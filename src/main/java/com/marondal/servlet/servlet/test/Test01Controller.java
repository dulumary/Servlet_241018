package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// Response Header
		// character encoding 
		// character set
		response.setCharacterEncoding("utf-8");
		// 데이터 타입 MIME
		response.setContentType("text/plain");
		
		// Response body
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		
		String dateString = formatter.format(now);
		
//		오늘의 날짜는 2021년 5월 20일
		
		out.println("오늘의 날짜는 " + dateString);
		
		
	}

}
