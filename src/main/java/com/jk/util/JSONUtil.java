package com.jk.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;

public class JSONUtil {
	
	public  static   String   toJson(Object  obj){
		
		 JSONObject.DEFFAULT_DATE_FORMAT="yyyy-MM-dd";
		 
		return  JSON.toJSONString(obj,SerializerFeature.WriteDateUseDateFormat);
	}

}
