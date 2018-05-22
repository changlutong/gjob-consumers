package com.jk.util;

import static org.apache.http.util.EntityUtils.getContentCharSet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.log4j.Logger;

/**
 * httpClient 工具类
 */
public class HttpClient {
    private static Logger logger = Logger.getLogger(HttpClient.class);


    private static PoolingHttpClientConnectionManager httpClientConnectionManager;
    /**
     * 初始化
     */
    private static void init(){
        if(httpClientConnectionManager == null){
            httpClientConnectionManager = new PoolingHttpClientConnectionManager();
            httpClientConnectionManager.setMaxTotal(50);
        }
    }

    /**
     * post请求
     * @param url   请求地址
     * @param params 请求参数
     * @return 返回json字符串
     */
    public static String post(String url,Map params){
        logger.debug(String.format("请求参数 url{0},params{1}",url,params.toString()) );
        init();
        CloseableHttpClient httpClient = HttpClients.createDefault();
        try {
            HttpPost httpPost = new HttpPost(url);
            ArrayList arrayList = covertParams2NVPS(params);
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList));
            CloseableHttpResponse response = httpClient.execute(httpPost);
            if(response.getStatusLine().getStatusCode() == 200){
                HttpEntity entity = response.getEntity();
                String result = getResponseString(entity);
                logger.debug(String.format("响应信息：{0}",result));
                return result;
            }else{
                logger.error("请求状态错误，错误码"+":"+response.getStatusLine().getStatusCode());
                return null;
            }
        } catch (IOException e) {
            e.printStackTrace();
            logger.error("httpClient的Post请求异常",e);
        }
        return "";
    }

    /**
     * get请求
     * @param url 请求url
     * @param params 请求参数
     * @return 返回json字符串
     */
    public static String get(String url, Map params){
        logger.debug(String.format("请求参数 url{0},params{1}",url,params.toString()) );
        init();
        CloseableHttpClient httpClient = HttpClients.createDefault();
        try {
            URIBuilder uriBuilder = new URIBuilder();
            uriBuilder.setPath(url);
            ArrayList<NameValuePair> arrayList = covertParams2NVPS(params);
            uriBuilder.setParameters(arrayList);
            HttpGet httpGet = new HttpGet(uriBuilder.build());
            CloseableHttpResponse execute = httpClient.execute(httpGet);
            HttpEntity entity = execute.getEntity();
            if(execute.getStatusLine().getStatusCode() == 200){
                String responseString = getResponseString(entity);

                logger.debug(String.format("响应信息：{0}",responseString));
                return responseString;
            }else {
                logger.error("请求状态错误，错误码"+":"+execute.getStatusLine().getStatusCode());
                return null;
            }
        } catch (Exception e) {
            logger.error("httpClient请求出错，异常：{}",e);
            return null;
        }
    }
    private static ArrayList<NameValuePair> covertParams2NVPS(Map<String, Object> params) {
        ArrayList<NameValuePair> pairs = new ArrayList<NameValuePair>();
        for (Map.Entry<String, Object> param : params.entrySet()) {
            pairs.add(new BasicNameValuePair(param.getKey(), String.valueOf(param.getValue())));
        }
        return pairs;
    }

    /**
     * 返回响应正文(无乱码)
     * @param
     * @return
     */
    public static String getResponseString(HttpEntity entity) throws IOException {
        StringBuilder result = new StringBuilder();//响应正文
        if (entity != null) {
            String charset = getContentCharSet(entity);
            InputStream instream = entity.getContent();
            BufferedReader br = new BufferedReader(new InputStreamReader(
                    instream,"utf-8"));
            String temp = "";
            while ((temp = br.readLine()) != null) {
                result.append(temp+"\n");
            }
        }
        return result.toString();
    }
    public static String togetString(String userphone) throws IOException {
        String url= "https://api.miaodiyun.com/20150822/industrySMS/sendSMS";
        HashMap<String, Object> params = new HashMap<String, Object>();
        params.put("accountSid","c5103631f57e4490bdb1125e4db93335");
        params.put("templateid","222943297");
        int random = (int)((Math.random()* 1000000)+100000);
        params.put("param",random+"");
        params.put("to",userphone);
        params.put("timestamp",TimeUtil.dateTostr(new Date(),"yyyyMMddHHmmss"));
        params.put("sig",Md5Util.getMd532(params.get("accountSid").toString()+"497e7c9c375a4ffba02db08031d123ae"+params.get("timestamp").toString()));
        String s = HttpClient.post(url, params);
        System.out.println(s);
        return random+"";

    }


}
