;Added by Arpana, Neha and Sonal.
;This program to fill all missing ids.
;Insert missing ids on two cases:
;1). When id is missing in between a fact.(Ex, I heard the sound of rain on the roof. ( 4 5 7 8 9 10)-group here  "of" 6 is missing )
;2). When id is missing  between two facts
;case a.IF (missingword is to having wc 12 adjacent to id having wc 12. Make infinitive pada <id of to> <id of verb> )
;(Ex.A fat ugly boy had to eat too many fruits to lose his weight.(to eat,to lose)) 
;case b.ELSE insert as an independent fact new-fact-tran-word-wc-typ-form-h_id-comp
;(Ex, The Landlord had to back down. Down was missng insert as independent fact)

(defglobal ?*tmp_fp* = tmp_fp)
(defglobal ?*all_tmp_fp* = all_tmp_fp)
;---------------------------------------------------------------------------------------------------------------------------
;Case-1
(defrule newfact
(declare (salience 10))
?f1<-(tran-word-wc-typ-form-h_id-comp  ?tid   ?wrd    ?wc     ?typ  ?form ?hid $?comlist)
?f2<-(tran_level-missing_id-wc-word    ?level ?missid ?misswc ?word)
;(test (and (eq ?tid 3)(neq ?hid 0)(eq ?level 3)(neq ?wrd  BOS)))
(test (and (eq ?tid 3)(eq ?level 3)))
=>
 (bind ?pre (- ?missid 1))
 (bind ?len (length$ $?comlist))
 (bind ?post (+ ?missid 1))
   (if(and (member$ ?pre $?comlist) (member$ ?post $?comlist)) then
           (retract ?f1 ?f2)
           (bind $?comlist (sort > (insert$ $?comlist 1 ?missid)))
           (assert (tran-word-wc-typ-form-h_id-comp  ?tid ?wrd ?wc ?typ  ?form ?hid  $?comlist))
    else 
           (if (or (member$ ?pre $?comlist) (member$ ?post $?comlist)) then 
               (if  (and (eq ?word to)(eq ?misswc 12)(eq ?post (nth$ 1 $?comlist))(eq ?wc 2)) then
                    (assert (tran-word-wc-typ-form-h_id-comp  ?tid ?wrd ?wc ?typ  ?form ?hid ?missid $?comlist)) 
                    (retract ?f1 ?f2)
               else (if (and (eq ?pre (nth$ ?len $?comlist))(neq ?word to)(neq ?misswc 12)) then
                    (assert (new-fact-tran-word-wc-typ-form-h_id-comp  ?tid ?word ?misswc ?typ  ?form ?missid ?missid))
                    (printout ?*tmp_fp* "(new-fact-tran-word-wc-typ-form-h_id-comp " " "?tid " "?word " "?misswc " "?typ  " "?form " "?missid " "?missid ")" crlf)
                     (printout ?*all_tmp_fp* "(new-fact-tran-word-wc-typ-form-h_id-comp " " "?tid " "?word " "?misswc " "?typ  " "?form " "?missid " "?missid ")" crlf)
                    (retract ?f2))) 
          )
  )
) 
   

;---------------------------------------------------------------------------------------------------------------------------
;Added by shirisha Manju (06-09-11)
;It does not matter what Ted does.
(defrule remove_repeated_fact
(declare (salience 8))
(tran-word-wc-typ-form-h_id-comp  ?tid    ?w    ?wc   ?t ?f ?hid $? ?id $?)
?f0<-(tran-word-wc-typ-form-h_id-comp  ?tid   ?w1    ?   ?  ?    ?id $?)
(test (neq ?w ?w1))
=>
        (retract ?f0)
)

;Case2
(defrule print 
(declare (salience 7))
?f1<-(tran-word-wc-typ-form-h_id-comp  ?tid ?wrd ?wc ?typ  ?form ?hid $?comlist)
;(test (and (neq ?hid 0)(neq ?wrd EOS)))
(test (neq ?wrd EOS))
=>
 (bind ?length (length $?comlist))
	(if (and (eq ?wrd BOS)(eq ?typ 909)(or (eq ?form 1)(eq ?form 2))) then ;Are you afraid of spiders?
		(printout ?*tmp_fp* "(tran-word-wc-typ-form-h_id-comp " ?tid " "?wrd " "?wc " "?typ  " "?form " "?hid "  "(implode$ $?comlist) " )" crlf)
       (printout  ?*all_tmp_fp*  "(tran-word-wc-typ-form-h_id-comp  "  ?tid "    "?wrd "    "?wc "    "?typ "    "?form "    "?hid "     "(implode$ $?comlist) ")" crlf)

   	else
	   (if (and(eq ?wrd BOS)(<= ?length 1)) then ;However the user needs some training to use the software effectively.
       		(printout t " ")
    	   else
       		(printout ?*tmp_fp* "(tran-word-wc-typ-form-h_id-comp " ?tid " "?wrd " "?wc " "?typ  " "?form " "?hid "  "(implode$ $?comlist) " )" crlf)
	       (printout  ?*all_tmp_fp*  "(tran-word-wc-typ-form-h_id-comp  "  ?tid "    "?wrd "    "?wc "    "?typ "    "?form "    "?hid "     "(implode$ $?comlist) ")" crlf)

   	   )
	)
)
;----------------------------------------------------------------------------------------------------------------------
(defrule print_sen_range
(declare (salience 6))
?f1 <-(Sentence range is ?range)
=>
        (retract ?f1)
        (printout ?*all_tmp_fp* "(Sentence range is  " ?range ")" crlf)
)
;---------------------------------------------------------------------------------------------------------------------------
