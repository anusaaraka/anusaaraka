
 (defglobal ?*count* = 1)

 (defglobal ?*help-file* = lwg-help)
 (defglobal ?*path1* = ?*path*)

 (deffunction Help ()
 (bind ?help-file_path (str-cat ?*path1* "/debugging/" ?*help-file*))
 (system "zenity  --text-info --title="lwg-help" --filename="?help-file_path"  --width=560  --height=300  &")
 )

 (dribble-on debug_info)
 (facts)
 (dribble-off)
 (system "clear")
 (system "zenity  --text-info  --filename=debug_info  --width=560  --height=300  &")
 (assert (next_id 1))
 (assert (display_lwg))
 (assert (display_linkage "Enter the Sentence ::  "))

 ; if stanford parser then loads "sd_lwg_rules.clp" file else if link parser then loads "verb_chunk.clp" file
 (defrule load_files
 (declare (salience 150))
 (Parser_used ?ptype)
 =>
  (if (eq ?ptype Link-Parser) then
	(load* "verb_chunk.clp")
  else
	(if (eq ?ptype Stanford-Parser) then
		(load* "sd_lwg_rules.clp")
	)
  else  
        (if (eq ?ptype Open-Logos-Parser) then
                (printout t "      LWG debugging for Open Logos is not done at this point." crlf)
                (printout t "      NOTE::: " crlf    "      If you want to debug LWG then go to this path \"anu_testing/Anu_src/\" and debug lwg_openlogos.pl programme. "  crlf crlf)
                (printout t "     (exit) "crlf crlf)
        )
  )
 )


 ; If stanford parser then display stanford relations
 (defrule display_relations
 (declare (salience 111))
 (Parser_used Stanford-Parser)
 =>
   (system "clear")
   (printout t "Stanford Relations" crlf)
   (printout t "==================" crlf)
   (system "cat sd-relations_tmp1.dat")
 )

 ; If link parser then display linkage
 (defrule display_linkage
 (declare (salience 111))
 ?f<-(display_linkage ?text)
 (Parser_used Link-Parser)
 =>
 (retract ?f)
 (system "clear")
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
 (printout t "Sentence :: " (system "cat jnk") crlf)
 (system "anu_link-parser.sh <jnk >jnk1 2>err")
 (system "cat jnk1")
 )

 ; To display sentence
 (defrule sentence_display
 (declare (salience 110))
 ?f<-(next_id ?id)
 (id-word ?id ?word)
 (not (Parser_used Open-Logos-Parser))
 =>
 (retract ?f)
 (if (eq ?id 1) then (printout t crlf crlf))
 (if (> ?*count* 6) then
     (bind ?*count* 0)
     (printout t crlf))

 (format t " %s - %d |" ?word ?id)
 (bind ?*count* (+ ?*count* 1))
 (bind ?id (+ ?id 1))
 (assert (next_id ?id))
 )

 (defrule sentence_display1
 (declare (salience 100))
 ?f<-(next_id ?id)
 =>
	(retract ?f)
	(printout t crlf crlf)
 )

 (defrule display_tam
 (declare (salience 99))
 (display_lwg)
 ?f0<-(root-verbchunk-tam-chunkids ? ?verb_chunk ?tam $?ids ?kriyA)
 (not (Parser_used Open-Logos-Parser))
 =>
	(retract ?f0)
 	(printout t " verb_chunk :: " ?verb_chunk  "  tam :: "?tam  "   head_id :: "?kriyA crlf )
        (assert (assert_question))
 )

 (defrule entering_question
 (assert_question)
 (not (Parser_used Open-Logos-Parser)) 
 =>
 	(assert (question "Enter Your Choice (1 or 2 or 3): "))
        (printout t crlf "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"crlf)
 )
 
 (defrule question
 (declare (salience 98))
 ?f<-(question ?text)
 (not (Parser_used Open-Logos-Parser))
 =>
  (retract ?f)
	(printout t crlf crlf " 1. Wrong grouping    2. word \"not\" is missing in the group   3. Grouping not done" crlf crlf)
 	(format t "%s " ?text)
 	(bind ?reply (read))
        (if (or (eq ?reply 1)(eq ?reply 2)(eq ?reply 3)) then
 	(assert (get_choice ?reply))
        else
        (printout t "Enter correctly " crlf)
        (assert (question ?text))
        )
 )

 (defrule get_word_id
 ?f<-(get_choice 1)
 (not (Parser_used Open-Logos-Parser))
 =>
        (printout t "Enter the head_id which is wrongly grouped : " )
        (retract ?f)
        (bind ?reply (read))
        (assert (get_unnesasary_id ?reply))
 )

 

 (defrule get_unnesasary_grouping
 ?f<-(get_unnesasary_id ?id)
 (parserid-wordid ?pid ?id)
 (rule_name-grouped_ids  ?rule_name $?ids ?pid)
 (Parser_used ?ptype)
 (not (Parser_used Open-Logos-Parser))
 =>
	(retract ?f)
	(if (eq ?ptype Link-Parser) then
		(printout t  crlf " The grouping is done by the rule : " ?rule_name crlf " From the file : anu_testing/Anu_clp_files/verb_chunk.clp "crlf "And the rule is defined as .... "crlf crlf)
		(ppdefrule ?rule_name)
        else (if (eq ?ptype Stanford-Parser) then
		(printout t  crlf " The grouping is done by the rule : " ?rule_name  crlf " From the file : anu_testing/Anu_clp_files/sd_lwg_rules.clp "crlf" And the rule is defined as .... "crlf crlf)
		(ppdefrule ?rule_name)
 	)
        else (if (eq ?ptype Open-Logos-Parser) then
                (printout t  crlf " The grouping is done from the file : anu_testing/Anu_src/lwg_openlogos.pl\n So,LWG grouping cannot be done at this point"crlf)
               (printout t "(exit) "crlf crlf) 
        ))

	(printout  t crlf "Do you want to check another id (y/n)" crlf)
        (bind ?reply (read))
        (if (eq ?reply n) then  (exit)
	else	(if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
        )
 )


 (defrule get_unnesasary_grouping1
 ?f<-(get_unnesasary_id ?id)
 (parserid-wordid ?pid ?id)
 (not (rule_name-grouped_ids  ?rule_name $?ids ?pid))
 =>
   (retract ?f)
   (printout t "Enter the correct head id" crlf)
   (assert (get_choice 1))
 )

 (defrule get_unnesasary_grouping2
 ?f<-(get_unnesasary_id ?id)
 =>
   (retract ?f)
   (printout t "Enter the correct head id" crlf)
   (assert (get_choice 1))
 )


 (defrule debug_not_rule
 ?f<-(get_choice 2)
 =>
        (printout t "Enter the not id to be grouped : " )
        (retract ?f)
        (bind ?reply (read))
        (assert (get_not_id ?reply))
 )

 (defrule check_not_id_for_link_parser
 (declare (salience 10))
 ?f<-(get_not_id ?id)
 (parserid-wordid ?pid ?id)
 (link_name-link_lnode-link_rnode ?name ? ?pid)
 (parserid-word ?pid  not)
 =>
 (retract ?f)

 	(if (neq ?name N) then
        	(printout t " Your id has no N link connected with subject link , so it cannot be grouped. "crlf)
	else
	 	(if (eq ?name N) then 
			(printout t  crlf "It should be grouped. May be there is a bug in the rule. Please inform to programmers " crlf)
		)
	)  
	(printout  t crlf "Do you want to check another id (y/n)" crlf)
        (bind ?reply (read))
        (if (eq ?reply n) then  (exit)
        else    (if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
        )
  )

 (defrule check_not_id_for_sd_parser
 ?f<-(get_not_id ?id)
 (parserid-wordid ?pid ?id)
 (rel_name-sids ?lname ? ?pid)
 (parserid-word ?pid  not)
  =>
  (retract ?f)
  (if (neq ?lname neg) then
                (printout t " Your id has no \"neg\" link connected with subject link , so it cannot be grouped. "crlf)
        else
                (if (eq ?lname neg) then
                        (printout t  crlf "It should be grouped. May be there is a bug in the rule. Please inform to programmers " crlf)
                )
        )
        (printout  t crlf "Do you want to check another id (y/n)" crlf)
        (bind ?reply (read))
        (if (eq ?reply n) then  (exit)
        else    (if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
        )
 

 )
 

 (defrule check_not_id1
 ?f<-(get_not_id ?id)
 (parserid-wordid ?pid ?id)
 (not (parserid-word ?pid  not))
  =>
  (retract ?f)
  (printout t "Enter correctly :: " crlf)
  (bind ?reply (read))
  (assert (get_not_id ?reply))
  )


 (defrule check_not_id2
 ?f<-(get_not_id ?id)
 (not(parserid-wordid ? ?id))
  =>
  (retract ?f)
  (printout t "Enter correctly :: " crlf)
  (bind ?reply (read))
  (assert (get_not_id ?reply))
  )
 
  
 (defrule get_word_id1
 ?f<-(get_choice 3)
 =>
	(printout t "Enter the head_id that is not grouped : " )
	(retract ?f)
	(bind ?reply (read))
        (assert (get_word_id ?reply))
 )

 (defrule get_word_id2
 ?f1<-(get_word_id ?id)
 (not (id-word  ?id ?))
 =>
        (printout t "Enter the correct id : " )
        (retract ?f1)
        (bind ?reply (read))
        (assert (get_word_id ?reply))
 )

 (defrule check_link_parser
 ?f<-(get_word_id ?id)
 (id-word  ?id ?)
 (Parser_used Link-Parser)
 =>
        (retract ?f)
	(printout t "The basic assumptions to group are : "crlf crlf)
	(printout t "S_PP_TO_I_Pv  |  S_I_PP_Pgstarb |  S_Pa_TO_I  |  S_PP_Pgstarb  |  RS_PP_Pv    | S_PP_Pv | SI_I_PP "crlf)
	(printout t "S_I_PP_Pv     |  S_TO_I_Pgstarb |  S_I_TO_I   |  S_Pgstarb_Pv  |  S_TO_I_Pv   | S_I_PP  | S_I_Pv "crlf)
 	(printout t "S_I_TO_I_Pv   |  SI_Pgstarb_Pv  |  SI_TO_I_PP |  S_I_Pgstarb   |  S_Pgstarb_I | S_TO_I  | RS_PP "crlf)
 	(printout t "SI_PP_TO_I_Pv |  SI_I_TO_I_Pv   |  SI_I_PP_Pv |  S_I_Pg        |  SI_PP_Pv    | SI_I_Pv | S_PP  "crlf)
        (printout t "SI_I_Pa_TO_I  |  SI_TO_I_Pv     |  I_star_J   |  RS_Pgstarb    |  S_I_Pgstarb | RS_I    | SI_Pv "crlf)
	(printout t "SI_I_TO_I_Pv  |  SI_I_Pgstarb   |  S_TO_I_PP  |  S_I_Pgstarb   |  SI_Pgstarb  | SI_PP   | S_ID  "crlf)
        (printout t "SI_PP_Pgstarb |  SI_I_TO_I      |  SI_I_PP_Pgstarb_Pv    |  TS_I_Pv_TO_I      | S_I     | TS_I  " crlf)
        (printout t "Wi_O_let_obj  |  SI_Pgstarb     |  S_I_PP_Pgstarb_Pv     |  SI_Pgstarb_TO_I   | Wi_I    | Wi " crlf)
        (printout t "Wi_O_let_us   |  PF_SI PP       |  SI_I_PP_Pgstarb SI_I  |  SI_without_that   | RS      | S  "crlf)
	(printout t "SI_PP_Pgstarb |  S_TO_I_Pg_or_pa " crlf crlf)
	(printout t "(Note : Above all are link names) " crlf)
        (printout t "Is there any combination which satisfies your id (y/n) : " )
	(bind ?ans (read))
        (if (eq ?ans n) then
		(printout t crlf "According to our assumptions the id cannot be grouped " crlf)
       		(printout t crlf  "Do you want to check another id (y/n)" crlf)
		(bind ?reply (read))
	        (if (eq ?reply n) then	(exit)
		else	 (if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
		)

	else
		(if (eq ?ans y) then
			(printout t  "Enter the combination : ")
			(bind ?ans1 (read))		
			(bind ?ans1 (sym-cat  ?ans1 _ rule))
                        (printout t crlf)
			(ppdefrule ?ans1)
                        (printout t crlf crlf "The following command is used to see the matches of a rule" crlf)
		        (printout t "==========================================================" crlf)
		        (printout t "(matches <rule_name>)  Ex: (matches S_TO_I_rule)"crlf crlf)
		        (printout t "The following command is used to exit" crlf)
		        (printout t "=====================================" crlf)
		        (printout t "(exit) "crlf crlf)
;			(printout t crlf  "Do you want to check another id (y/n)" crlf)
;	                (bind ?reply (read))
 ;       	        (if (eq ?reply n) then  ;(exit)  
  ;              	else     (if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
;			)
                )

	)
 )
 
 (defrule check_std_parser
 ?f<-(get_word_id ?id)
 (id-word  ?id ?)
 (Parser_used Stanford-Parser)
 =>
	(retract ?f)
        (printout t crlf "The basic assumptions to group are : "crlf)
        (printout t " 1. \"nsubj\" relation with your id as left node " crlf)
        (printout t " 2. \"nsubj|aux\" relation with your id as \"aux\" right node " crlf)
	(printout t crlf "Is there any relation which satisfies your id (y/n) : " )
        (bind ?ans (read))
        (if (eq ?ans n) then
                (printout t crlf "According to our assumptions the id cannot be grouped " crlf)
                (printout t crlf  "Do you want to check another id (y/n)" crlf)
                (bind ?reply (read))
                (if (eq ?reply n) then  (exit)
                else     (if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
                 )
        else (if (eq ?ans y) then
             (printout t crlf "It should be grouped. May be there is a bug in the rule. Please inform to programmers " crlf))
              (printout t crlf  "Do you want to check another id (y/n)" crlf)
                (bind ?reply (read))
                (if (eq ?reply n) then  (exit)
                else     (if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
                )
         )
 )
 
 (defrule check_ol_parser
 ?f<-(get_word_id ?id)
 (id-word  ?id ?)
 (Parser_used Open-Logos-Parser)
 =>
          (printout t "LWG debugging for Open Logos is not done at this point" crlf)
          (printout t "(exit) "crlf crlf)
 )

 (system "clear")
