/** 
 * <pre>项目名称:ssm-jobs 
 * 文件名称:Mail.java 
 * 包名:com.jk.model 
 * 创建日期:2018年3月28日下午9:21:28 
 * Copyright (c) 2018, lxm_man@163.com All Rights Reserved.</pre> 
 */  
package com.jk.model;

import java.io.Serializable;
import java.util.Map;

/** 
 * <pre>项目名称：ssm-jobs    
 * 类名称：Mail    
 * 类描述：    
 * 创建人：袁康 1056079234@qq.com
 * 创建时间：2018年3月28日 下午9:21:28    
 * 修改人：袁康 1056079234@qq.com    
 * 修改时间：2018年3月28日 下午9:21:28    
 * 修改备注：       
 * @version </pre>    
 */
public class Mail implements Serializable{
	
	
	 private static final long serialVersionUID = 2682497595963575293L;
	// 服务器地址 
	  private String host;
	  // 发件人的邮箱 
	  private String sender; 
	  // 发件人昵称 
	  private String name; 
	  // 账号 
	  private String username; 
	  // 密码 
	  private String password; 
	  // 收件人的邮箱 
	  private String receiver;
	  // 收件人的名称
	  private String receiverName;
	  // 收件人的邮箱(key)和名称(value)
	  private Map<String, String> to;
	  // 抄送人的邮箱(key)和名称(value)
	  private Map<String, String> cc;
	  // 秘密抄送人的邮箱(key)和名称(value)
	  private Map<String, String> bcc;
	  // 主题 
	  private String subject; 
	  // 信息(支持HTML)
	  private String message;
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public Map<String, String> getTo() {
		return to;
	}
	public void setTo(Map<String, String> to) {
		this.to = to;
	}
	public Map<String, String> getCc() {
		return cc;
	}
	public void setCc(Map<String, String> cc) {
		this.cc = cc;
	}
	public Map<String, String> getBcc() {
		return bcc;
	}
	public void setBcc(Map<String, String> bcc) {
		this.bcc = bcc;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	/* (non-Javadoc)    
	 * @see java.lang.Object#toString()    
	 */
	@Override
	public String toString() {
		return "Mail [host=" + host + ", sender=" + sender + ", name=" + name + ", username=" + username + ", password="
				+ password + ", receiver=" + receiver + ", receiverName=" + receiverName + ", to=" + to + ", cc=" + cc
				+ ", bcc=" + bcc + ", subject=" + subject + ", message=" + message + "]";
	}
	 
	
	

	
	
	

}
