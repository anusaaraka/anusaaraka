 ;Added by Shirisha Manju (19-11-11)
 (deffacts dummy_hin_sen_facts
 (hindi_id_order)
 (id-attach_emphatic)
 (id-Apertium_output)
 (id-left_punctuation)
 (id-right_punctuation)
 (id-HM-source)
 (id-inserted_sub_id)
 (id-word)
 (id-last_word)
 (para_id-sent_id-word_id-original_word-hyphenated_word)
 (id-original_word)
 (Parser_used)
 )

(defglobal ?*hin_sen-file* = h_sen_fp)
(defglobal ?*punct_file* = punct_fp)
 
(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 ;Added by Shirisha Manju to get last id of hindi order (25-01-12)
 (defrule get_last_id
 (declare (salience 3010))
 (hindi_id_order $?var ?last_id)
 (not (last_id ?))
 =>
	(assert (last_id ?last_id))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Modified by Shirisha Manju to get punctuation (01-12-10)
 (defrule match_exp
 (declare (salience 3000))
 ?f1<-(id-last_word ?id ?wrd)
 (id-right_punctuation   ?id  ?rp)
 ?f<-(hindi_id_order $?var)
 (last_id ?end)
 =>
	(retract ?f ?f1)
        (if (eq ?rp "NONE") then ;Ex:  That incident took place in 1800 B.C.
                (printout ?*punct_file* "(id-left_punct-right_punct     "?end " -       -)" crlf)
		(assert (hindi_id_order $?var))
        else (if (eq ?rp "'.") then ;Ex: It was the centre of most powerful buddhist sect of northern india known as 'sarvastivada '. (Added by Roja 11-01-11)
                (bind ?rp1 (string-to-field (sub-string (+ (str-index "'" ?rp) 1) (length ?rp) ?rp)))
		(assert (hindi_id_order $?var ?rp1 ))
                (printout ?*punct_file* "(id-left_punct-right_punct     "?end " -       \""?rp1"\")" crlf)
              else
                (if (eq ?rp ").") then ;The inscription on the tomb of Michael-Faraday (1897-1990).
                         (printout ?*punct_file* "(id-left_punct-right_punct    "?end " -       .)" crlf)
			(assert (hindi_id_order $?var .))
                else
                        (printout ?*punct_file* "(id-left_punct-right_punct    "?end " -       \""?rp "\")" crlf)
			(bind ?p (string-to-field ?rp))
			(printout t ?p crlf)
			(assert (hindi_id_order $?var ?p))
                )
             )
       ) 
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Roja (29-06-11)
 ;To replace hyphen(-) with underscore(_) only in cases where we get underscore in the sentence. 
 ;Ex: Child_abuse is the physical or emotional or sexual mistreatment of children. (Note: used for WordNet purpose)
 (defrule replace_hyphen_with_underscore
 (declare (salience  2600))
 ?f0<-(para_id-sent_id-word_id-original_word-hyphenated_word  ?para_id  ?sent_id  ?wid  ?org_wrd $? ?hyp_wrd $?)
 (id-original_word  ?wid  ?hyp_wrd)
 (hindi_id_order $? ?wid $?)
 ?f1<-(id-HM-source ?wid ?hmng ?src)
 ?f2<-(id-Apertium_output ?wid ?wrd_analysis $?wrd)
 =>
   (bind ?hyp_word (string-to-field (str-cat "@" ?hyp_wrd)))
   (bind ?hyp_wd   (string-to-field (str-cat "\@" ?hyp_wrd)))
   (if (or (eq ?hmng ?hyp_word) (eq $?wrd_analysis  ?hyp_word)  (eq $?wrd_analysis  ?hyp_wd)) then
      (assert (id-HM-source  ?wid ?org_wrd ?src))
      (assert (id-Apertium_output ?wid ?org_wrd $?wrd))
      (retract ?f0 ?f1  ?f2)
   )
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (10-12-2011)
 (defrule get_mng
 (declare (salience 2500))
 (Parser_used Stanford-Parser)
 ?f1<-(id-Apertium_output ?id $?wrd_analysis)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
	(retract ?f0 ?f1)
        (assert (hindi_id_order $?id1  $?wrd_analysis $?id2))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (10-12-2011)
 (defrule get_mng1
 (declare (salience 2400))
 (Parser_used Stanford-Parser)
 ?f1<-(id-HM-source ?id ?hmng ?)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?id1  ?hmng $?id2))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (10-12-2011)
 (defrule get_mng2
 (declare (salience 2300))
 (Parser_used Stanford-Parser)
 ?f1<-(id-word ?id ?mng)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?id1  ?mng $?id2))
 )
 ;----------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ;When none worked satisfactorily , his assistant complained ," All our work is in vain ". 
 (defrule attach_emphatic
 (declare (salience 1010))
 ?f1<-(id-attach_emphatic ?id ?wrd)
 (id-Apertium_output ?id $?wrd_analysis)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?id1  $?wrd_analysis ?wrd $?id2))
 )
 ;======================== Generate hindi sentence using Apertium output and  punctuations ====================
 ;Added by Shirisha Manju (22-12-10)
 (defrule gene_sent_rt_lt
 (declare (salience 1001))
 ?f1<-(id-Apertium_output ?id $?wrd_analysis)
 (id-left_punctuation ?id "left_paren")
 (id-right_punctuation ?id "right_paren")
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
	(retract ?f0 )
        (assert (hindi_id_order $?id1 left_paren $?wrd_analysis right_paren $?id2))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (22-12-10)
 ;Ex: Mr. Smith (a lawyer for Kodak) refused to comment.
 ;Rule is Modified again by Roja(11-01-11)
 ;Ex: As can be seen from Figure 11.1 the functions printf(), and scanf() fall under the category of formatted console I per O functions.
 (defrule gene_sent_lt_NONE
 (declare (salience 1000))
 ?f1<-(id-Apertium_output ?id ?wrd $?wrd_analysis)
 (id-left_punctuation ?id "NONE")
 (id-right_punctuation ?id ?rp)
 (test (or (eq ?rp "left_paren")(eq ?rp "right_paren" )(eq ?rp "equal_to" )(eq ?rp "left_parenright_paren")(eq ?rp "left_parenright_paren,") ))
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
  	(retract ?f0)
	(bind ?rp1 (string-to-field ?rp))
	(if (or (eq ?rp "left_paren" )(eq ?rp "right_paren" ) (eq ?rp "equal_to" )) then
		(assert (hindi_id_order $?id1 ?wrd $?wrd_analysis ?rp1 $?id2))
	else  (if (or (eq ?rp "left_parenright_paren")(eq ?rp "left_parenright_paren,")) then   
		        (bind ?wrd (string-to-field(str-cat ?wrd ?rp1)))
			(assert (hindi_id_order $?id1 ?wrd $?wrd_analysis $?id2))
              )
	)
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (22-12-10) 	
 ;Ex: Mr. Smith (a lawyer for Kodak) refused to comment.
 (defrule gen_sent_rt_NONE
 (declare (salience 1000))
 ?f1<-(id-Apertium_output ?id $?wrd_analysis)
 (id-left_punctuation ?id ?lp)
 (test (or (eq ?lp "left_paren")(eq ?lp "right_paren" )(eq ?lp "$" )))
 (id-right_punctuation ?id "NONE")
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 )
	(bind ?lp1 (string-to-field ?lp))
	(assert (hindi_id_order $?id1 ?lp1 $?wrd_analysis  $?id2))
 )

 ;Added by Shirisha Manju (21-11-11)
 ; The inscription on the tomb of Michael-Faraday (1897-1990).
 (defrule gen_sent_lt
 (declare (salience 1000))
 ?f1<-(id-Apertium_output ?id $?wrd_analysis)
 (id-right_punctuation ?id ").")
 (id-left_punctuation ?id "left_paren")
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 )
        (assert (hindi_id_order $?id1 left_paren $?wrd_analysis  right_paren $?id2))
 )
;----------------------------------------------------------------------------------------------------------
 ;Substituting Apertium output for the id(1000) 
 ;Added by Shirisha Manju (03-12-10)
 (defrule gene_sent1
 (declare (salience 950))
 (id-Apertium_output ?id $?wrd_analysis)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
 	(retract ?f0) 
	(assert (hindi_id_order $?id1  $?wrd_analysis  $?id2))
 )

 ;=========================== Substituting hindi_meaning if Apertium ouput is not present ===================
 ;Added by Shirisha Manju (22-12-10) 
 (defrule hnd_mng_rt_lt
 (declare (salience 910))
 ?f1<-(id-HM-source ?id ?hmng ?)
 (id-left_punctuation ?id "left_paren")
 (id-right_punctuation ?id "right_paren")
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
        (bind ?hmng (explode$ (str-cat left_paren ?hmng right_paren)))
	(assert (hindi_id_order $?id1 ?hmng $?id2))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (22-12-10)
 (defrule hnd_mng_lt_NONE
 (declare (salience 900))
 ?f1<-(id-HM-source ?id ?hmng ?)
 (id-right_punctuation ?id ?rp)
 (test (or (eq ?rp "left_paren")(eq ?rp "right_paren" )(eq ?rp "equal_to" )))
 (id-left_punctuation ?id "NONE")
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
	(bind ?rp1 (string-to-field ?rp))
	(bind ?hmng (explode$ (str-cat ?hmng ?rp1)))
	(assert (hindi_id_order $?id1 ?hmng $?id2))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (22-12-10)    
 (defrule hnd_mng_rt_NONE
 (declare (salience 1000))
 ?f1<-(id-HM-source ?id ?hmng ?)
 (id-left_punctuation ?id ?lp)
 (test (or (eq ?lp "left_paren")(eq ?lp "right_paren" )))
 (id-right_punctuation ?id "NONE")
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
	(bind ?lp1 (string-to-field ?lp))
	(bind ?hmng (explode$ (str-cat ?hmng" "?lp1)))
	(assert (hindi_id_order $?id1 ?hmng $?id2))	
 )
 ;---------------------------------------------------------------------------------------------------------
 ;Substituting hindi_meaning for the id(10000)  
 ;Added by Shirisha Manju (03-12-10)
 (defrule substitute_hnd_mng1
 (declare (salience 850))
 ?f1<-(id-HM-source ?id ?hmng ?)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?id1 ?hmng $?id2))
  )

 ;================================ Substituting english word if hindi meaning is not present =================

 ;Modified by Shirisha Manju (01-12-10)
 (defrule substitute_eng_word_lt_paran 
 (declare (salience 800))
 (id-left_punctuation ?id "left_paren")
 (id-right_punctuation ?id "NONE")
 ?f1<-(id-word ?id ?wrd)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
  	(retract ?f0 ?f1)
	(assert (hindi_id_order $?id1 left_paren ?wrd $?id2))
 )

 (defrule substitute_eng_word_rt_paran
 (declare (salience 800))
 (id-right_punctuation ?id "right_paren")
 (id-left_punctuation ?id "NONE")
 ?f1<-(id-word ?id ?wrd)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
	(assert (hindi_id_order $?id1 ?wrd right_paren $?id2))
 )

 (defrule substitute_eng_word_lt_and_rt_paran
 (declare (salience 800))
 (id-left_punctuation ?id "left_paren")
 (id-right_punctuation ?id "right_paren")
 ?f1<-(id-word ?id ?wrd)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?id1 left_paren ?wrd right_paren $?id2))
 )

 (defrule substitute_eng_word_equal_paran
 (declare (salience 800))
 (id-right_punctuation ?id "equal_to")
 (id-left_punctuation ?id "NONE")
 ?f1<-(id-word ?id ?wrd)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?id1 ?wrd equal_to $?id2))
 )
 (defrule substitute_eng_word_left_paran2
 (declare (salience 800))
 (id-right_punctuation ?id ").")
 (id-left_punctuation ?id "left_paren")
 ?f1<-(id-word ?id ?wrd)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
        (bind ?wrd (explode$ (str-cat left_paren ?wrd)))
        (assert (hindi_id_order $?id1 ?wrd $?id2))
 )

 (defrule substitute_eng_word
 (declare (salience 750))
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 ?f1<-(id-word ?id ?wrd)
 (id-left_punctuation ?id ?)
 (id-right_punctuation ?id ?)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?id1 ?wrd $?id2))
 )

 ;---------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (07-02-11) 
 ; to deleted repeated ki in hindi sentence Ex: He thought that she may have missed the train.
 (defrule rm_repeated_ki
 (declare (salience 700))
 ?f0<-(hindi_id_order $?var ki ki $?var1)
 =>
	(retract ?f0)
	(assert (hindi_id_order $?var ki $?var1))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;I did not think he would do it, but he did. Added by Shirisha Manju (21-06-11)
 (defrule rm_repeated_ki_1
 (declare (salience 700))
 ?f0<-(hindi_id_order $?var ki ?con $?var1)
 (test (eq ?con paranwu))
 =>
        (retract ?f0)
        (assert (hindi_id_order $?var ?con $?var1))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;It is true that you are my friend but I can not go along with you on this issue. 
 ; Added by Shirisha Manju (21-06-11)
 (defrule rm_ki_if_sent_first
 (declare (salience 700))
 ?f0<-(hindi_id_order ki $?var1)
 =>
        (retract ?f0)
        (assert (hindi_id_order $?var1))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (25-01-12)
 (defrule print_sen
 (declare (salience 100))
 ?f<- (hindi_id_order $?var)
 =>
	(retract ?f)
	(printout ?*hin_sen-file* (implode$ $?var) crlf)	
 )
 ;---------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -10))
 =>
        (close ?*hin_sen-file* )
	(close ?*punct_file*)
 )
 ;---------------------------------------------------------------------------------------------------------
