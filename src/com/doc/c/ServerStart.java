package com.doc.c;

import com.doc.a.Common;
import com.doc.fileReader.DomReader;

public final class ServerStart {
	static{
		System.out.println(111);
		//new Thread(new LucenceThread(DomReader.domReader(Common.xmlRoot))).start();
	}
	public ServerStart() {
		// TODO Auto-generated constructor stub
	}
}
