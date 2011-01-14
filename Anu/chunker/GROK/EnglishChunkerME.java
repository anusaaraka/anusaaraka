///////////////////////////////////////////////////////////////////////////////
// Copyright (C) 2002 Joerg Tiedemann
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//////////////////////////////////////////////////////////////////////////////

package opennlp.grok.preprocess.chunk;

import java.io.*;
import java.util.zip.*;
import opennlp.common.english.*;
import opennlp.maxent.*;
import opennlp.maxent.io.*;

import java.util.*;
import opennlp.common.util.*;


/**
 * A shallow parser for English
 * (based on POSTaggerME)
 *
 * @author      Joerg Tiedemann
 * @version     $Revision: 1.2 $, $Date: 2002/11/08 17:57:10 $
 */

public class EnglishChunkerME extends ChunkerME {
    private static final String modelFile = "data/EnglishChunker.bin";
	

    /**
     * No-arg constructor which loads the English chunker model
     * transparently.
     */

    public EnglishChunkerME() {
	super(getModel(modelFile),
	      new ChunkerContextGenerator(new BasicEnglishAffixes()));

	_useClosedClassTagsFilter = true;
	_closedClassTagsFilter = new EnglishClosedClassTags();
    }


    private static MaxentModel getModel(String name) {
	try {
	    return
                new BinaryGISModelReader(
                    new DataInputStream(
		//	new GZIPInputStream(
			    new BufferedInputStream(
            EnglishChunkerME.class.getResourceAsStream(name)))).getModel();
            //EnglishChunkerME.class.getResourceAsStream(name))))).getModel();
	} catch (IOException E) { E.printStackTrace(); return null; }
    }

    public static ArrayList convertInputLine(String s) {
	ArrayList tokens = new ArrayList();
	StringTokenizer st = new StringTokenizer(s);
	while(st.hasMoreTokens()) {
	    tokens.add(st.nextToken());
	}
	return tokens;
    }

    /*
     *    public String tag(String line) {
     *
     *	String result = "";
     *	ArrayList p = convertInputLine(line);
     *	List words = (List)p;
     *	List tags = bestSequence(words);
     *	int c=0;
     *	for(Iterator t=tags.iterator(); t.hasNext(); c++) {
     *	    String tag = (String)t.next();
     *	    result=result+words.get(c)+"/"+tag+" ";
     *	}
     *	return result;
     *    }
    */



    /**
     * <p>Chunks a string passed in on the command line.
     *
     */

/*    public static void main(String[] args) throws IOException {

	//	System.out.println(new EnglishPOSTaggerME().tag(args[0]));
	long startChunkTime = System.currentTimeMillis();
	EnglishChunkerME chunker = new EnglishChunkerME();
	System.out.println("Chunker Instantiated in "+
    (double)(System.currentTimeMillis() - startChunkTime)/1000 + " Seconds");
	File f = new File(args[1]);
	BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f)));
	String input="",output="";
	while((input = br.readLine())!=null) {
		//output  = output + input ;
		if(args[0].equals("-test")) {
			output = output + chunker.tag(input) + "\n";
		}
		else {
			TrainEval.run(args,new EnglishChunkerME());
		}
	}
	br.close();
	long endChunkTime = System.currentTimeMillis();
	System.out.println("Chunking finished in "+
	             (double)(endChunkTime-startChunkTime)/1000 +" Seconds..");
	
    OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream(args[2]));
	osw.write(output,0,output.length());
	osw.close();
					

/*	if (args[0].equals("-test")) {
	//    System.out.println(new EnglishChunkerME().tag(args[1]));
	      System.out.println(new EnglishChunkerME().tag(f.toString()));
	} 
	else {
	    TrainEval.run(args, new EnglishChunkerME());
	}
    }*/

/*
 * Modified for displaying Program Statistics if the second argument is -verbose
 */
    public static void main(String[] args) throws IOException {
		// Flag to determine whether to display program Statistics or not (Added). 
		 boolean verbose=false;
		File f;
		OutputStreamWriter osw;
		EnglishChunkerME chunker;
		if(args[1].equalsIgnoreCase("-verbose")) {
			verbose=true;
		}
		long startChunkTime=0;
		if(verbose) {
			startChunkTime = System.currentTimeMillis();
			chunker = new EnglishChunkerME();
			System.out.println("Chunker Loaded in "+
			(double)(System.currentTimeMillis() - startChunkTime)/1000 + " Seconds");
			f = new File(args[2]);
		}
		else {
			 chunker = new EnglishChunkerME();
			 f = new File(args[1]);
		}
		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f)));
		String input="",output="";
		while((input = br.readLine())!=null) {
			if(args[0].equals("-test")) {
				output = output + chunker.tag(input) + "\n";
			}
			else {
				TrainEval.run(args,new EnglishChunkerME());
			}
		}
		br.close();
		if(verbose) {
			long endChunkTime = System.currentTimeMillis();
			System.out.println("Chunking finished in "+
			(double)(endChunkTime-startChunkTime)/1000 +" Seconds..");
		}
		if(verbose) {
			osw = new OutputStreamWriter(new FileOutputStream(args[3]));
		}
		else {
			osw = new OutputStreamWriter(new FileOutputStream(args[2]));
		}
		osw.write(output,0,output.length());
		osw.close();
					
    }
}
