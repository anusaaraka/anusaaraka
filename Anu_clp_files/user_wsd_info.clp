 (load-facts "cat_consistency_check.dat")
 (load-facts "word.dat")
 (load-facts "root.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "original_word.dat")
 (load-facts "English_sentence.dat")
 (open "user_wsd_info.dat" rel_wd_fp "a")
 (assert (next_id 1))

 (defglobal ?*rel-word-file* = rel_wd_fp) 
 ;----------------------------------------------------------------------------------------------------------------
 (defrule display_eng_sen
 (declare (salience 1005))
 (Eng_sen ?sen)
 => 
 (printout ?*rel-word-file* crlf " English Sentence : " ?sen crlf)
 (printout ?*rel-word-file*      " -------------------- " crlf)
 (open "hindi_sentence.dat" hin_sen "r")
 (printout ?*rel-word-file* " Hindi Translation : "(readline hin_sen) crlf)
 (printout ?*rel-word-file* " --------------------- " crlf)
 (close hin_sen)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule new_rule
 (declare (salience 950))
 ?f<-(next_id ?id)
  =>
	(retract ?f)
        (printout ?*rel-word-file* " Relations :" crlf)
        (printout ?*rel-word-file* " -----------" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule cat_root_rule
 (declare (salience 800))
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (id-word ?id ?word)
 =>
    (printout ?*rel-word-file* "(id-word-root-category  " ?id "  "?word"	 "?root"	"?cat ")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule new_line
 (declare (salience 850))
 =>
 (printout ?*rel-word-file* crlf)
 (printout ?*rel-word-file* " id, word, root and category information: " crlf)
 (printout ?*rel-word-file* " -------------------------------------------" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule relations
 (declare (salience 900))
 (relation-anu_ids  ?rel)
 =>
   (printout ?*rel-word-file*  "(" ?rel ")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule relations1
 (declare (salience 900))
 (relation-anu_ids  ?rel ?id)
 (id-word ?id ?word)
 =>
   (printout ?*rel-word-file*  "(" ?rel " 	"?id","?word ")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule relations2
 (declare (salience 900))
 (relation-anu_ids  ?rel ?id ?id1)
 (id-word ?id ?word)
 (id-word ?id1 ?word1)
 =>
   (printout ?*rel-word-file*  "(" ?rel " 	"?id","?word" 	 " ?id1","?word1 ")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (run)
 (exit)

