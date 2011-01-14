 ; Added by Roja.(06-11-10)
 ; In Link/Stanford parser, Number information was taken from morph(apertium).
 ; OL parser itself gives its own Number information.
 ; Following rules are added to decide in which priority the number information should be taken.

 (defglobal ?*num-file1* = num_fp1)
 
 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))

 ;-----------------------------------------------------------------------------------------------------------
 ;get num from wsd
 (defrule number_frm_wsd
 (declare (salience 1000))
 ?f0<- (id-wsd_number ?id ?num)
 ?f1<- (id-number-src ?id ? ?)
  =>
        (retract ?f0 ?f1)
        (assert (id-number-src ?id  ?num  WSD))
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;Getting number information from MORPH(morph.dat)
 ;Rama ate some SWEETS.
 (defrule get_num_frm_morph
 (declare (salience 950))
 (id-word ?id ?wrd)
 ?f1<-(id-number-src ?id ?num Default)
 ?f2<-(word-morph (original_word ?org_wrd ) (morph_word ?morph_wrd) (root ?rt) (number ?num1) )
 (test (or (eq ?wrd ?org_wrd)(eq ?wrd ?morph_wrd)(eq ?wrd ?rt)))
 (test (neq ?num1 -))
 =>
       (assert (id-number-src ?id  ?num1  Morph))
       (retract ?f1 ?f2)
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;The Danes are nice people.
 (defrule get_num_for_sub
 (declare (salience 900))
 ?f1<-(id-word ?kri are|were)
 (verb_agrmt-subject_id-head_id  subject  ?sub  ?kri)
 ?f2<- (id-number-src ?sub ?num ?)
 =>
	(retract ?f1 ?f2)
	(assert (id-number-src ?sub  p  OL))
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;Getting number information from default dictionary.
 (defrule get_num_frm_plural_list
 (declare (salience 800))
 (id-word ?wid ?word&:(not (numberp ?word)))
 ?f<- (id-number-src  ?wid  s  ?)
 =>
        (bind ?a (gdbm_lookup "ol_parser_unused_words.gdbm" ?word))
        (if (neq ?a "FALSE") then
               (assert (id-number-src ?wid  p  ol_parser_unused_words.gdbm))
               (retract ?f)
        )
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;printing the number info into a file.
 (defrule  default_number
 (declare (salience 100))
 (id-number-src ?wid  ?num  ?src)
 =>
	(printout ?*num-file1* "(id-number-src  " ?wid  "  "   ?num  "  "  ?src ")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------- 
 (defrule end
 (declare (salience -10))
 =>
        (close ?*num-file1*)
 )
 ;-----------------------------------------------------------------------------------------------------------
