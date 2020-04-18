package com.doc.c;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import com.doc.a.Common;
import com.doc.a.MineUtil;

public class LucenceThread implements Runnable{
	String path="";//文档根目录
	HttpServletRequest request=null;
	public LucenceThread(String path,HttpServletRequest request) {
		// TODO Auto-generated constructor stub
		this.path=path;
		this.request=request;
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
//		String path="D://flyedt";
    	try {
    		List<String> listFileName=new ArrayList<String>();
        	List<String> listFilePath=new ArrayList<String>();
        	MineUtil.listDirectoryAll(new File(path),listFileName,listFilePath);
			System.out.println("listFileName:"+listFileName);
			System.out.println("listFilePath:"+listFilePath);
			
			Object[] x1 = listFileName.toArray();
			Object[] x2 = listFilePath.toArray();
			
			Properties prop2 = new Properties();
			InputStream in2 = this.getClass().getClassLoader().getResourceAsStream("config.properties");
			prop2.load(in2);
			String lucencep = prop2.getProperty(Common.LucencePath);
			new Indexer().index(lucencep,x1,x2);
			
			request.getServletContext().setAttribute(Common.LucenceUpdateTime, new Date());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
