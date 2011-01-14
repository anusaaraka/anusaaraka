///////////////////////////////////////////////////////////////////////////////
// Copyright (C) 2002 Jason Baldridge and Gann Bierner
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

package opennlp.grok.preprocess.postag;

import java.io.*;
import java.util.zip.*;
import opennlp.common.english.*;
import opennlp.maxent.*;
import opennlp.maxent.io.*;

/**
 * A part of speech tagger that uses a model trained on English data from the
 * Wall Street Journal and the Brown corpus.  The latest model created
 * achieved >96% accuracy on unseen data.
 *
 * @author      Gann Bierner
 * @version     $Revision: 1.5 $, $Date: 2002/04/25 15:22:38 $
 */

public class EnglishPOSTaggerME extends POSTaggerME {
    private static final String modelFile = "data/EnglishPOS.bin";


    /**
     * No-arg constructor which loads the English POS tagging model
     * transparently.
     */
    public EnglishPOSTaggerME() {
	super(getModel(modelFile),
	      new POSContextGenerator(new BasicEnglishAffixes()));
	_useClosedClassTagsFilter = true;
	_closedClassTagsFilter = new EnglishClosedClassTags();
    }

    private static MaxentModel getModel(String name) {
	try {
	    return
		new BinaryGISModelReader(
	            new DataInputStream(new BufferedInputStream(
				EnglishPOSTaggerME.class.getResourceAsStream(name)))).getModel();
	            //new DataInputStream(new GZIPInputStream(new BufferedInputStream(
	    //EnglishPOSTaggerME.class.getResourceAsStream(name))))).getModel();

	} catch (IOException E) { E.printStackTrace(); return null; }
    }
    
    /**
     * <p>Part-of-speech tag a string passed in on the command line. For
     * example: 
     *
     * <p>java opennlp.grok.preprocess.postag.EnglishPOSTaggerME -test "Mr. Smith gave a car to his son on Friday."
     */
/*    public static void main(String[] args) throws IOException {
//	System.out.println(new EnglishPOSTaggerME().tag(args[0]));
	long posStartTime = System.currentTimeMillis();
	EnglishPOSTaggerME posTagger = new EnglishPOSTaggerME();
	System.out.println("POSTagger Instantiated in "+
	(double)(System.currentTimeMillis() - posStartTime)/1000 + " Seconds");
	if(args[0].equals("-test")) { 
		File f = new File(args[1]);
		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f)));
		String input="",output="";
		while((input = br.readLine())!=null) {
			//System.out.println(new EnglishPOSTaggerME().tag(input));
			long tagStartTime = System.currentTimeMillis();	
			output = output + posTagger.tag(input) + "\n";
			System.out.println("Method tag(sentence) excuted on \n" +input+ "\n" + "in "+
			(double)(System.currentTimeMillis() - tagStartTime)/1000 + " Seconds");	
		}
		br.close();
		OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream(args[2]));
		osw.write(output,0,output.length());
		osw.close();
	}
	else {
		TrainEval.run(args, new EnglishPOSTaggerME());
	}
    long posEndTime = System.currentTimeMillis();
	System.out.println("POSTagging finished in "+
	             (double)(posEndTime-posStartTime)/1000 +" Seconds..");
/*	if (args[0].equals("-test")) {
	    System.out.println(new EnglishPOSTaggerME().tag(args[0]));
	}
	else {
	    TrainEval.run(args, new EnglishPOSTaggerME());
	} */
    

/*	
    }*/

/*
 * Modified for displaying Program Statistics if the second argument is -verbose
 */
    public static void main(String[] args) throws IOException {
	    //Flag to determine whether to print program Statistics or not
		boolean verbose=false;
		File f;
		OutputStreamWriter osw;
		EnglishPOSTaggerME posTagger;
		long startposTaggerTime=0;
		if(args[1].equalsIgnoreCase("-verbose")) {
			verbose=true;
		}
		if(verbose) {
			startposTaggerTime = System.currentTimeMillis();
		    posTagger = new EnglishPOSTaggerME();
			System.out.println("POSTagger Loaded in "+
			(double)(System.currentTimeMillis() - startposTaggerTime)/1000 + " Seconds");
			f = new File(args[2]);
		}
		else {
			 posTagger = new EnglishPOSTaggerME();
			 f = new File(args[1]);
		}
		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f)));
		String input="",output="";
		while((input = br.readLine())!=null) {
			//output  = output + input ;
			if(args[0].equals("-test")) {
				output = output + posTagger.tag(input) + "\n";
			}
			else {
				TrainEval.run(args,new EnglishPOSTaggerME());
			}
		}
		br.close();
		if(verbose) {
			long endposTaggerTime = System.currentTimeMillis();
			System.out.println("POSTagging finished in "+
			(double)(endposTaggerTime-startposTaggerTime)/1000 +" Seconds..");
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
