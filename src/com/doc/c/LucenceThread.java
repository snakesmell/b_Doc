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
import com.doc.fileReader.DomReader;

public class LucenceThread implements Runnable{
	String path="";//文档根目录
	public LucenceThread(String path) {
		// TODO Auto-generated constructor stub
		this.path=path;
	}
	@Override
	public void run() {
		while(true){
			try {
				System.out.println("lucence begin ...");
				List<String> listFileName=new ArrayList<String>();
	        	List<String> listFilePath=new ArrayList<String>();
	        	MineUtil.listDirectoryAll(new File(path),listFileName,listFilePath);
				System.out.println("listFileName:"+listFileName);
				System.out.println("listFilePath:"+listFilePath);
				
				Object[] x1 = listFileName.toArray();
				Object[] x2 = listFilePath.toArray();
				
				String lucencep=DomReader.domReader(Common.xmlLucence);
				new Indexer().index(lucencep,x1,x2);
				
				Thread.sleep(Integer.parseInt(DomReader.domReader(Common.xmlLucenceSleep)));//延迟时长
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
