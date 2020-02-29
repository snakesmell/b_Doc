package com.doc.a;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Util {
	/*
     * 查找一级目录文件夹文件
     */
    public static List<File> listDirectory(File dir)throws IOException {
        if(!dir.exists())
            throw new IllegalArgumentException("目录："+dir+"不存在.");
        if(!dir.isDirectory()){
            throw new IllegalArgumentException(dir+"不是目录。");
        }
        File[] files=dir.listFiles();
        List<File> list=new ArrayList<File>();
        if(files!=null&&files.length>0){
            for(File file:files){
                if(file.isDirectory()){
                	System.out.println(file);
                	list.add(file);
                }
                else{
//                    System.out.println(file);
                }
            }
        }
        return list;
    }
    
    /**
     * 查看文件夹下的所有文件夹
     * @param dir
     * @return
     * @throws IOException
     */
    public static Map<String,List<File>> listDirectoryView(File dir)throws IOException {
        if(!dir.exists())
            throw new IllegalArgumentException("目录："+dir+"不存在.");
        if(!dir.isDirectory()){
            throw new IllegalArgumentException(dir+"不是目录。");
        }
        File[] files=dir.listFiles();
        Map<String,List<File>> map=new HashMap<String,List<File>>();
        List<File> list1=new ArrayList<File>();
        List<File> list2=new ArrayList<File>();
        if(files!=null&&files.length>0){
            for(File file:files){
            	if(file.isDirectory()){
//                	System.out.println(file);
                	list1.add(file);
                }
                else{
                	list2.add(file);
//                    System.out.println(file);
                }
            }
        }
        map.put(Common.Directory, list1);
        map.put(Common.File, list2);
        return map;
    }	
    /**
     * 遍历所有文件
     * @param dir
     * @throws IOException
     */
    public static void listDirectoryAll(File dir)throws IOException {
        if(!dir.exists())
            throw new IllegalArgumentException("目录："+dir+"不存在.");
        if(!dir.isDirectory()){
            throw new IllegalArgumentException(dir+"不是目录。");
        }
        /*String[] filenames=dir.list();//返回的是字符串数组 直接子的名称 不包含子目录
        for(String string:filenames){
            System.out.println(dir+"\\"+string);
        }*/
        //如果要遍历子目录下的内容就需要构造File对象做递归操作，File提供了直接返回File对象的API
        File[] files=dir.listFiles();
        //for(File file:files){
            //System.out.println(file);
        List<File> list=new ArrayList<File>();
        if(files!=null&&files.length>0){
            for(File file:files){
                if(file.isDirectory()){
                	list.add(file);
                	System.out.println(file);
                    //递归
                    listDirectory(file);
                }
                else{
                    System.out.println(file);
                }
            }
        }
    }
    
    public static void main(String[] args) {
    	File file = new File("D:/1.华高工作整理");
    	try {
			List<File> list = listDirectory(file);
			for (File file2 : list) {
				System.out.println(file2.getName());
				
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	/*File file = new File("D:/1.华高工作整理");
    	try {
			Map<String, List<File>> map = listDirectoryView(file);
			System.out.println(map);
			List list=map.get(Common.Directory);
			System.out.println(list);
			map = listDirectoryView(new File(String.valueOf(list.get(0))));
			
			
			
			System.out.println(map);
//			map = listDirectoryView(file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
    	
    	
    	/**
    	File file = new File("D:/1.华高工作整理");
    	try {
			List<File> list = listDirectory(file);
//			System.out.println(list);
			Map<String, List<File>> map = listDirectoryView(list.get(0));
			System.out.println(map.get(Common.Directory));
			System.out.println(map.get(Common.File));
			
			System.out.println(listDirectoryView(map.get(Common.Directory).get(0)));
		} catch (IOException e) {
			e.printStackTrace();
		}
    	**/
    	
	}
}
