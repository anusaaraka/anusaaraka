(defglobal ?*count* = 0)
(deffunction assert_control_fact(?fact_name $?ids)
                (loop-for-count (?i 1 (length $?ids))
                                (bind ?j (nth$ ?i $?ids))
                                (if (eq ?fact_name delete_manual_fact) then
                                        (assert (delete_manual_fact ?j))
                                )
                 )
)

(defrule get_current_word
(declare (salience 200))
(manual_id-cat-word-root-vib-grp_ids ?mid $?)
(not (manual_id-cat-word-root-vib-grp_ids ?mid1&:(< ?mid1 ?mid) $?))
=>
        (assert (current_id ?mid))
)

(defrule remove_manual_punct_facts
(declare (salience 1001))
?f<-(manual_id-cat-word-root-vib-grp_ids ?mid ? ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar - $?)
=>
        (retract ?f)
)
;-------------------------------------------------------------------------------------
(defrule remove_manual_punct_facts1
(declare (salience 1001))
?f<-(manual_id-cat-word-root-vib-grp_ids ?mid SYM $?word)
(test (eq $?word -));biMxu F xarpaNa kA muKya PZokasa kahalAwA hE ; here category of 'F' is SYM 
=>
        (retract ?f)
)
;-------------------------------------------------------------------------------------
;A chemical reaction is basically a rearrangement of atoms among different molecules.
;koI rAsAyanika aBikriyA mUla rUpa se viBinna aNuoM meM paramANuoM kI [punarvyavasWA hI] howI hE.
(defrule hI_rule
(declare (salience 901))
?f0<-(current_id ?mid)
;?f1<-(manual_id-mng ?cnt $?grp_ids)
;(test (eq ?cnt ?*count*))
?f2<-(manual_id-cat-word-root-vib-grp_ids ?mid ? ?w&hI - ?r&hI - 0 - ?mid)
(not (id-word ? only))
=>
        (assert_control_fact delete_manual_fact ?mid)
)
;-------------------------------------------------------------------------------------
;Sen:-The size of the image relative to the size of the object is another important quantity to consider.
;Man tran :-vaswu ke sAija ke sApekRa prawibimba kA sAija BI eka mahawvapUrNa vicAraNIya rASi hE
;Anu tran :- vaswu ke AkAra ke lie sambanXiwa prawimA kA AkAra vicAra karane ke lie xUsarA mahawvapUrNa parimANa hE.
(defrule BI_rule
(declare (salience 901))
?f0<-(current_id ?mid)
;?f1<-(manual_id-mng ?cnt $?grp_ids)
;(test (eq ?cnt ?*count*))
?f2<-(manual_id-cat-word-root-vib-grp_ids ?mid ? ?w&BI - ?r&BI - 0 - ?mid)
(not (id-word ? also))
(not (id-word ? too))
(not (id-word ? even))
=>
        (assert_control_fact delete_manual_fact ?mid)
)

;-------------------------------------------------------------------------------------
(defrule ki_rule
(declare (salience 901))
?f0<-(current_id ?mid)
;?f1<-(manual_id-mng ?cnt $?grp_ids)
;(test (eq ?cnt ?*count*))
?f2<-(manual_id-cat-word-root-vib-grp_ids ?mid ? ?w&ki - ?r&ki - 0 - ?mid)
(not (id-word ? that))
=>
        (assert_control_fact delete_manual_fact ?mid)
)
;-------------------------------------------------------------------------------------
(defrule rule1
(declare (salience 900))
?f0<-(current_id ?mid)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ? $? - ?h_id $?grp)
(test (member$ ?mid $?grp))
=>
        (retract ?f0 ?f)
	(bind ?*count* (+ ?*count* 1))
	(assert (manual_id-mng ?*count* $?grp))
        (assert_control_fact delete_manual_fact $?grp)
;	(assert (manual_id-mapped_id ?mid ?*count*))
	(assert (manual_id-mapped_id ?h_id ?*count*))
)

;-------------------------------------------------------------------------------------
(defrule rule2
(declare (salience 900))
?f0<-(current_id ?mid)
?f<-(manual_id-cat-word-root-vib-grp_ids ?h_id ? $? - $? - $? - $?grp)
(test (member$ ?mid $?grp))
=>
        (retract ?f ?f0)
	(bind ?*count* (+ ?*count* 1))
        (assert (manual_id-mng ?*count* $?grp))
;	(assert (manual_id-mapped_id ?mid ?*count*))
	(assert (manual_id-mapped_id ?h_id ?*count*))
)
;-------------------------------------------------------------------------------------
(defrule delete_manual_fact
(declare (salience 2000))
?f1<-(delete_manual_fact ?mid)
?f2<-(manual_id-cat-word-root-vib-grp_ids ?mid $?)
=>
	(retract ?f1 ?f2)
)
;-------------------------------------------------------------------------------------
;Eng sen :: The near point may be as close as about 7 to 8 cm in a child ten years of age, and may increase to as much as 200 cm at 60 years of age.
;Man tran :: 10 varRa ke bAlaka ke newra kA nikata binxu lagaBaga 7 se 8 bau waka howA hE jabaki 60 varRa kI Ayu waka pahuzcane para yaha lagaBaga 200 bau waka pahuzca sakawA hE.
;++++++++[Should improve this rule]+++++++++
(defrule replace_id_with_word_for_nos
(declare (salience -5))
?f<-(manual_id-mng ?mid $?pre ?id $?pos)
?f1<-(manual_id-word-cat ?id ?h_mng ?)
(test (numberp ?h_mng))
(not (id-replaced ?mid ?h_mng))
(not (id-replaced ?mid ?id))
=>
        (retract ?f ?f1)
        (assert (manual_id-mng ?mid $?pre ?h_mng $?pos))
	(assert (id-replaced ?mid ?h_mng))
	(assert (id-replaced ?mid ?id))
)
;-------------------------------------------------------------------------------------
(defrule replace_id_with_word
(declare (salience -10))
?f<-(manual_id-mng ?mid $?pre ?id $?pos)
?f1<-(manual_id-word-cat ?id ?h_mng ?)
(not (id-replaced ?mid ?h_mng))
(not (id-replaced ?mid ?id))
=>
        (retract ?f ?f1)
        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar -)) then
        (assert (manual_id-mng ?mid $?pre $?pos))
        else
        (assert (manual_id-mng ?mid $?pre ?h_mng $?pos)))
)
;-------------------------------------------------------------------------------------
