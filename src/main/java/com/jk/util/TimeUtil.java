package com.jk.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.SimpleTimeZone;


/**
 * Copyright © 2017 金科教育. All rights reserved.<br>
 * 类: TimeUtil <br>
 * 描述: TODO <br>
 * 作者: Teacher song<br>
 * 时间: 2017-4-7 上午10:49:47<br>
 */
public class TimeUtil {

	/**
	 * 
	 * Copyright © 2017 金科教育. All rights reserved.<br>
	 * 方法: mongoDate <br>
	 * 描述: mongo时间转换 <br>
	 * 作者: Teacher song<br>
	 * 时间: 2017-4-7 上午11:10:03<br>
	 * @param date
	 * @return
	 */
	public static Date mongoDateAdd(Date date){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String format2 = format.format(date);
		format.setCalendar(new GregorianCalendar(new SimpleTimeZone(0, "GMT"))); 
		try {
			Date parse = format.parse(format2);
			return parse;
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}
	public static Date mongoDateDel(Date date){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String format2 = format.format(date);
		format.setCalendar(new GregorianCalendar(new SimpleTimeZone(0, "GMT"))); 
		try {
			Date parse = format.parse(format2);
			return parse;
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 
	 * Copyright © 2017 金科教育. All rights reserved.<br>
	 * 方法: dateTostr <br>
	 * 描述: 时间转字符串 <br>
	 * 作者: Teacher song<br>
	 * 时间: 2017-4-7 上午11:10:19<br>
	 * @param date
	 * @param format
	 * @return
	 */
	public static String dateTostr(Date date,String format){
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		String format2 = sdf.format(date);
		return format2;
	}
	
	/**
	 * 
	 * Copyright © 2017 金科教育. All rights reserved.<br>
	 * 方法: strTodate <br>
	 * 描述: 字符串转时间 <br>
	 * 作者: Teacher song<br>
	 * 时间: 2017-4-7 上午11:10:33<br>
	 * @param date
	 * @param format
	 * @return
	 */
	public static Date strTodate(String date,String format){
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		try {
			return sdf.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}
}
