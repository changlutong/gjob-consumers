package com.jk.util;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class FreemarkerUtil {
	
	public Template getTemplate(String name) {
		try {
		
			Configuration cfg = new Configuration();
			
			cfg.setEncoding(Locale.CHINA, "utf-8");

			
			cfg.setClassForTemplateLoading(this.getClass(),"../template");
			
			Template temp = cfg.getTemplate(name);
			return temp;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void print(String name,Map<String,Object> root) {
		try {
			
			Template temp = this.getTemplate(name);
			temp.process(root, new PrintWriter(System.out));
		} catch (TemplateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void fprint(String name,Map<String,Object> root,String outFile) {
		FileWriter out = null;
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		
		HttpSession session = request.getSession();
		String realPath = session.getServletContext().getRealPath("/createhtml");
		System.out.println(realPath);
		try {
			
			out = new FileWriter(new File(realPath+"\\"+outFile));
			Template temp = this.getTemplate(name);
//			
			temp.process(root, out);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		} finally {
			try {
				if(out!=null) out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
}