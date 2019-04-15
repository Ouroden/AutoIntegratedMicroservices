package cw.netkernel.services;

import org.json.JSONObject;

import org.netkernel.layer0.nkf.INKFRequestContext;
import org.netkernel.layer0.nkf.NKFException;
import org.netkernel.module.standard.endpoint.StandardAccessorImpl;
import tools.LoaderAnalyzer;
import java.net.URL;
import java.net.URLConnection;
import java.io.*;
import java.util.*;

public class Main extends StandardAccessorImpl {

    @Override
	public void onSource(INKFRequestContext context) throws Exception {
		String p = context.getThisRequest().getArgumentValue("param");

		String nasa = context.source("res:/cw-netkernel/nasa" + p, String.class);
//		String nasa = "After sunset this gorgeous full moon rose over Brno city in the Czech Republic on July 20, 2016";

		ArrayList<int[]> array = LoaderAnalyzer.findProperNames(nasa);
		String out = "";

		for (int i=0; i<array.size(); i++) {
			int begin = array.get(i)[0];
			int end = array.get(i)[1];
			String word = nasa.substring(begin, end);
		 	String wordWithUnderscore = word.replaceAll(" ", "_");

		 	out += "<a href=\"https://en.wikipedia.org/wiki/" + wordWithUnderscore + "\">" + word + "</a>" + "\n";
		}


//		String res = context.source("res:/cw-netkernel/wikimedia/query", String.class);
		context.createResponseFrom(out);
	}
}
