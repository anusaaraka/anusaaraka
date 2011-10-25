(defglobal ?*node_fp* =  node_fp)
(defglobal ?*const_fp* =  const_fp)
(defglobal ?*count* = 0)
(defglobal ?*Slist* = (create$ ))

(deffunction string_to_integer (?parser_id)
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

;-----------------------------------All tran3 facts will be convert here in Head-daughters-----------------
(defrule level3
(declare (salience 50))
?f <-(tran-word-wc-typ-form-h_id-comp  3 ?wrd ?wc ?typ ?frm ?hid $?comlist)
=>
 (retract ?f)
 (bind ?*count* (+ ?*count* 1))
 (if (and (eq ?wrd BOS)(eq ?typ 909)(or (eq ?frm 1)(eq ?frm 2))) then 	 ;Are you afraid of spiders?
	(bind ?phrase (string-to-field (str-cat SQ ?*count* )))
	(printout ?*node_fp* "(Node-Category "?phrase " SQ)" crlf)
 else	
 (if (eq ?wc 1) then ; I really like the way you do your hair. 
	(if  (neq ?frm 90) then ; You are lucky I am here.
		(bind ?phrase (string-to-field (str-cat NP ?*count* )))
  		(printout ?*node_fp* "(Node-Category "?phrase " NP)" crlf)
	else
		(bind ?phrase (string-to-field (str-cat ADJP ?*count* )))
                (printout ?*node_fp* "(Node-Category "?phrase " ADJP)" crlf)
	))
  else (if (eq ?wc 2) then
	   (if (and (eq ?frm 5)(eq ?typ 238)) then ;Running is good for health.
		(bind ?phrase (string-to-field (str-cat NP ?*count* )))
                (printout ?*node_fp* "(Node-Category "?phrase "  NP)" crlf) 
	   else		
           (bind ?phrase (string-to-field (str-cat VP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  VP)" crlf)       ))
  else (if (eq ?wc 3) then
           (bind ?phrase (string-to-field (str-cat ADVP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  ADVP)" crlf))
  else (if (or (eq ?wc 13)(eq ?wc 11)) then
           (bind ?phrase (string-to-field (str-cat PP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  PP)" crlf))
  else (if (eq ?wc 12) then
           (bind ?phrase (string-to-field (str-cat MD ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  MD)" crlf))
  else (if (or (eq ?wc 19)(eq ?wc 20)) then
           (bind ?phrase (string-to-field (str-cat CC ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  CC)" crlf))
  else (if (or (eq ?wc 14)(eq ?wc 15)) then
           (bind ?phrase (string-to-field (str-cat DT ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  DT)" crlf))
 else (if (or (eq ?wrd all)(eq ?wrd both)) then
           (bind ?phrase (string-to-field (str-cat PDT ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  PDT)" crlf))
 else (if  (eq ?wc 4) then
           (bind ?phrase (string-to-field (str-cat ADJP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  ADJP)" crlf))
 else (if (eq ?wc 5) then
           (bind ?phrase (string-to-field (str-cat PRP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  PRP)" crlf))
  else (if  (eq ?wc 18) then
           (bind ?phrase (string-to-field (str-cat PDT ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  PDT)" crlf))
   )
  
  (assert (Head-Level-Mother-Daughters ?wrd 3 ?phrase $?comlist))
  (printout t "(Head-Level-Mother-Daughters  " ?wrd "  "3 "  "?phrase "  "$?comlist")" crlf)
  (bind ?*Slist* (create$ ?*Slist* ?phrase))
  )

 ;Added by Sukhada and Manju (04-08-11)
 ;I have never seen such a horrible scene.
 (defrule level3_1
 (declare (salience 45))
 ?f<-(new-fact-tran-word-wc-typ-form-h_id-comp  3 ?wrd ?wc ?typ ?frm ?hid $?comlist)
 ?f1<-(tran_level-missing_id-wc-word 3 $? ?wrd)
 =>
        (bind ?*count* (+ ?*count* 1))
        (if (or (eq ?wc 3) (eq ?wc 6)) then
                (retract ?f ?f1)
                (bind ?phrase (string-to-field (str-cat ADVP ?*count* )))
                (printout ?*node_fp* "(Node-Category "?phrase " ADVP)" crlf)
                (assert (Head-Level-Mother-Daughters ?wrd 3 ?phrase $?comlist))
                (bind ?*Slist* (create$ ?*Slist* ?phrase))
        )
        else (if (eq ?wc 17) then ;It is not a good manner to eat alone
                (retract ?f ?f1)
                (bind ?phrase (string-to-field (str-cat RB ?*count* )))
                (printout ?*node_fp* "(Node-Category "?phrase " RB)" crlf)
                (assert (Head-Level-Mother-Daughters ?wrd 17 ?phrase $?comlist))
                (bind ?*Slist* (create$ ?*Slist* ?phrase))
        )
	else (if (eq ?wc 1) then ;John Stuart Mill is an important author. 
                (retract ?f ?f1)
                (bind ?phrase (string-to-field (str-cat NP ?*count* )))
                (printout ?*node_fp* "(Node-Category "?phrase " NP)" crlf)
                (assert (Head-Level-Mother-Daughters ?wrd 1 ?phrase $?comlist))
                (bind ?*Slist* (create$ ?*Slist* ?phrase))
        )
	else (if (eq ?wc 19) then ;She would eat neither bread nor biscuits. 
                (retract ?f ?f1)
                (bind ?phrase (string-to-field (str-cat CC ?*count* )))
                (printout ?*node_fp* "(Node-Category "?phrase " CC)" crlf)
                (assert (Head-Level-Mother-Daughters ?wrd 19 ?phrase $?comlist))
                (bind ?*Slist* (create$ ?*Slist* ?phrase))
        )
)
;-----------------------------Convert tran level 2 facts--------------------------------------------------------------------
(defrule level2
 (declare (salience 40))
 ?f <-(tran-word-wc-typ-form-h_id-comp 2 ?wrd ?wc ?typ  ?frm ?hid $?comlist)
 ?f1 <-(Head-Level-Mother-Daughters ?word ?lev ?ph $?pre $?comlist $?post)
 (test (neq ?wrd *))     ;To avoid CLS MRKR,SWITCH68
=>
 (retract ?f)
 (bind ?lencom (length$ $?comlist))
 (bind ?lenpre (length$ $?pre))         ;To avoid count increase if tran3 n tran2 level have same no of daughters
 (bind ?lenpost (length$ $?post))
 
 (if (neq ?lencom 1) then                 ;If length of comlist >1 it means grouping is done so facts need to change
  (if(and (eq ?lenpre 0)(eq ?lenpost 0)) then ;It indicates grouping at 3rd level and second level are same so no change.
            ; (printout t "No change required"  crlf)
   else
     (bind ?*count* (+ ?*count* 1)) ; increase count 
    ;Each phrase has category decided by head WC.Different categories assigned according to wc
     (if   (eq ?wc 1) then  
           (bind ?phrase (string-to-field (str-cat NP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase " NP)" crlf)
      else (if (eq ?wc 2) then
           (bind ?phrase (string-to-field (str-cat VP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  VP)" crlf))
      else (if (eq ?wc 3) then
           (bind ?phrase (string-to-field (str-cat ADVP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  ADVP)" crlf))
      else (if (or (eq ?wc 13)(eq ?wc 11)) then
           (bind ?phrase (string-to-field (str-cat PP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  PP)" crlf))
      else (if (eq ?wc 12) then
           (bind ?phrase (string-to-field (str-cat MD ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  MD)" crlf))
      else (if (or (eq ?wc 19)(eq ?wc 20)) then
           (bind ?phrase (string-to-field (str-cat CC ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  CC)" crlf))
      else (if (or (eq ?wc 14)(eq ?wc 15)) then
           (bind ?phrase (string-to-field (str-cat DT ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  DT)" crlf))
      else (if (or (eq ?wrd all)(eq ?wrd both)) then    ;ALL,BOTH act as predeterminer.All the boys were present.
           (bind ?phrase (string-to-field (str-cat PDT ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  PDT)" crlf))
      else (if  (eq ?wc 4) then
           (bind ?phrase (string-to-field (str-cat ADJP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  ADJP)" crlf))
      else (if (eq ?wc 5) then
           (bind ?phrase (string-to-field (str-cat PRP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  PRP)" crlf))
      else (if  (eq ?wc 17) then
           (bind ?phrase (string-to-field (str-cat Neg ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  Neg)" crlf))
    )
    (retract ?f1)             ; Retract current fact insert new with updated phrase and grouping information.
    (assert (Head-Level-Mother-Daughters ?word ?lev  ?ph $?pre ?phrase $?post))  ;3rd level fact get modified.
    (printout t "(Head-Level-Mother-Daughters  " ?word " "?lev  "  "?ph "  "$?pre "  "?phrase "  "$?post")")
    (assert (Head-Level-Mother-Daughters ?wrd 2 ?phrase $?comlist))                 ;2nd level fact get inserted.
    (printout t "(Head-Level-Mother-Daughters  " ?wrd  " 2  " ?phrase "  "$?comlist")")

 )
)
)
;--------------------------Convert tran level 1 facts------------------------------------------------------------------------
(defrule level1
  (declare (salience 35))
 ?f <- (tran-word-wc-typ-form-h_id-comp 1 ?wrd ?wc ?ty ?fm ?id $?com)
 ?f1 <- (Head-Level-Mother-Daughters ?wrd ?lev ?ph $?pre $?com $?post)
(test (neq ?wrd *))
=>

 (retract ?f)
 (bind ?lencom (length$ $?com))
 (bind ?lenpre (length$ $?pre))           ;To avoid count increase if tran3 n tran2 level have same no of daughters
 (bind ?lenpost (length$ $?post))
 
 (if (neq ?lencom 1) then                 ;If length of comlist >1 it means grouping is done so facts need to change
  (if(and (eq ?lenpre 0)(eq ?lenpost 0)) then ;It indicates grouping at 3rd level and second level are same so no change.
             (printout t "No change required"  crlf)
   else
     (bind ?*count* (+ ?*count* 1)) ; increase count 
    ;Each phrase has category decided by head WC.Different categories assigned according to wc
     (if   (eq ?wc 1) then  
           (bind ?phrase (string-to-field (str-cat NP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase " NP)" crlf)
      else (if (eq ?wc 2) then
           (bind ?phrase (string-to-field (str-cat VP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  VP)" crlf)
	   )
      else (if (eq ?wc 3) then
           (bind ?phrase (string-to-field (str-cat ADVP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  ADVP)" crlf))
      else (if (or (eq ?wc 13)(eq ?wc 11)) then
           (bind ?phrase (string-to-field (str-cat PP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  PP)" crlf))
      else (if (eq ?wc 12) then
           (bind ?phrase (string-to-field (str-cat MD ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  MD)" crlf))
      else (if (or (eq ?wc 19)(eq ?wc 20)) then
           (bind ?phrase (string-to-field (str-cat CC ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  CC)" crlf))
      else (if (or (eq ?wc 14)(eq ?wc 15)) then
           (bind ?phrase (string-to-field (str-cat DT ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  DT)" crlf))
      else (if (or (eq ?wrd all)(eq ?wrd both)) then    ;ALL,BOTH act as predeterminer.All the boys were present.
           (bind ?phrase (string-to-field (str-cat PDT ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  PDT)" crlf))
      else (if  (eq ?wc 4) then
           (bind ?phrase (string-to-field (str-cat ADJP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  ADJP)" crlf))
      else (if (eq ?wc 5) then
           (bind ?phrase (string-to-field (str-cat PRP ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  PRP)" crlf))
      else (if  (eq ?wc 17) then
           (bind ?phrase (string-to-field (str-cat Neg ?*count* )))
           (printout ?*node_fp* "(Node-Category "?phrase "  Neg)" crlf))
    )
    (retract ?f1)             ; Retract current fact insert new with updated phrase and grouping information.
    (assert (Head-Level-Mother-Daughters ?wrd ?lev  ?ph $?pre ?phrase $?post)) ;Existing 3rd leveland 2nd  fact get modified.
    (assert (Head-Level-Mother-Daughters ?wrd 1 ?phrase $?com))                ;1st level fact get inserted.
 )
 ))
;------------------------------------Getting all missing ids-------------------------------------------------------------
(defrule add_P_to_ids
(declare (salience 30))
?f<-(Head-Level-Mother-Daughters ?wrd&~Sen&~Root ?lev ?phrase $?daut)
(not (phrase_mapped ?phrase))
=>
        (retract ?f)
        (bind $?daut1 (create$ ))
        (bind ?len (length $?daut))
        (loop-for-count (?i 1 ?len)
                (bind ?j (nth$ ?i $?daut))
                (if (numberp ?j) then
                        (bind ?d (explode$ (str-cat P ?j)))
                        (bind $?daut1 (create$ $?daut1 ?d))
                else
                        (bind $?daut1 (create$ $?daut1 ?j))
                )
        )
        (assert (phrase_mapped ?phrase))
        (assert (Head-Level-Mother-Daughters ?wrd ?lev ?phrase $?daut1))
)
;-------------------------------------------------------------------------------------------------------------------------
;(defrule convert_res_anuid
;(declare (salience 25))
;?f<-(Head-Level-Mother-Daughters ?wrd ?lev ?phrase $?pre ?rid $?post )
;(parserid-wordid	?rid    $?anuid)
;(test (neq ?anuid 0))
;=>
;(retract ?f )
;(assert (Head-Level-Mother-Daughters ?wrd ?lev ?phrase $?pre $?anuid $?post))
;(printout t " "$?pre " "?anuid " "$?post crlf)
;)
;-------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (30-08-11)
;Be careful, she said.
(defrule get_punct_fact
(declare (salience 23))
?f<-(Head-Level-Mother-Daughters  , ?l ?mot ?id)
(Res_id-WC-Word-Anu_id ?pid 20 Punctuation mark ?)
(test (eq (string-to-field (str-cat "P" ?pid)) ?id))
=>
	(retract ?f )
	(assert (Head-Level-Mother-Daughters  , ?l ?mot))
)
;-------------------------------------To write S consist difeerent phrase in it. -------------------------------------------
;Modified by Shirisha Manju (o2-09-11) added if condition
(defrule Root
 (declare (salience 20))
 ?f1 <-(Sentence range is ?range)
=>
	(retract ?f1)
	(bind ?f_id (nth$ 1 ?*Slist*))
	(if (eq ?f_id SQ1) then ;Did it all go according to the plan?
		(bind $?list (delete-member$ ?*Slist* ?f_id))
		(assert (Head-Level-Mother-Daughters Sen 3 SQ1 $?list))
		(assert (Head-Level-Mother-Daughters Root 3 ROOT1 SQ1))
	else
		(assert (Head-Level-Mother-Daughters Sen 3 S1 ?*Slist*))
		(assert (Head-Level-Mother-Daughters Root 3 ROOT1 S1))
	)
	(printout ?*node_fp* "(Node-Category " "ROOT1  ROOT )" crlf)
	(printout ?*node_fp* "(Node-Category " "S1   S)" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule printall
(declare (salience 3))
?f  <-(Head-Level-Mother-Daughters ?wrd ?lev ?phrase $?daughters ) 
=>
(retract  ?f)
(printout  ?*const_fp*  "(Head-Level-Mother-Daughters  "?wrd "  "?lev "  "?phrase "	"(implode$ $?daughters) ")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule close_file
=>
	(close ?*const_fp*)
)
;-------------------------------------------------------------------------------------------------------------------------
