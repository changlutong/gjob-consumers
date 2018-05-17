package com.jk.util;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;





public class My {
	

      public   static String  ww(CommonsMultipartFile  photo ,HttpServletRequest request){
		
    	  //获得原始文件名
		  String or = photo.getOriginalFilename();
		  
		//  System.out.println(or); 
		 
		 //获得新的文件名
		String cur = System.currentTimeMillis()+"";
		// System.out.println(cur);事件毫秒值为文件名
		
		//截取文件名的后缀名
		 int las = or.lastIndexOf(".");
		 String su = or.substring(las);
		// System.out.println(su);文件后缀名
		 
		 //拼接成新的文件名
		    String str = cur+su;
		   // System.out.println(str);新的文件名
		    
		//转存
		    String realPath = request.getSession().getServletContext().getRealPath("/");
		   // System.out.println(realPath);绝对路径
		    
		    
		  File  ff=new File(realPath+"//upload"); 
		  if (!ff.exists()) {
			ff.mkdirs();
		}
		 
		  try {
			photo.transferTo( new File(ff+"//"+str));
			
			
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		  return str;
      }
      
      
      
      public  static ResponseEntity<byte [] >    xiaFile(String   imgname,HttpServletRequest  request){
  		
  		
  		//获得绝对路径
  		  String   relPath=	request.getSession().getServletContext().getRealPath("")+"/upload/"+ imgname;
  		  
  		  //设置下载的响应信息
  		  HttpHeaders    httpHeaders=new HttpHeaders();
  		  
  		  //设置下载的文件类型
  		  httpHeaders.setContentType(MediaType.APPLICATION_OCTET_STREAM);
  		  
  		  //设置下的文件名
  		  httpHeaders.setContentDispositionFormData("attachment",imgname  );
  		  
  			//将文件转为  二进制数组
  		  byte[] fileByte=null;
  		try {
  			fileByte = FileUtils.readFileToByteArray(new  File(relPath ) );
  			
  		} catch (IOException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		}
  		  
  			
  	      return  new   ResponseEntity<byte[]>(fileByte,httpHeaders,HttpStatus.CREATED);
  		
  	}
       
}
