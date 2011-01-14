 (load "global_path.clp")
 (load-facts "agreement_debug.dat")
 (load-facts "English_sentence.dat")
 (load-facts "lwg_info.dat")
 (load-facts "word.dat")
 (assert(index 1))
 (assert(Eng_word_list))
 (assert (print algorithm))
 (assert (question1 "Input Sentence"))
 
 (defglobal ?*help-file* = verb-agreement-help)
 (defglobal ?*path1* = ?*path*)

 (deffunction Help ()
 (bind ?help-file_path (str-cat ?*path1* "/debugging/" ?*help-file*))
 (system "zenity  --text-info --title="verb-agreement-help" --filename="?help-file_path"  --width=760  --height=300  &")
 )


 (defrule question_link
 (declare (salience 201))
 ?f<-(question1 ?text)
 (Parser_used Link_Parser)
 =>
 (retract ?f)
 (system "clear")
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
 (system "anu_link-parser.sh <jnk >jnk1 2>err")
 (system "cat jnk1")
 (system "cat " ?*home_anu_tmp*)
 )

 (defrule question
 (declare (salience 201))
 ?f<-(question1 ?text)
 (not (Parser_used Link_Parser))
 =>
 (retract ?f)
 (system "clear")
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
 (system "cat " ?*home_anu_tmp*)
 )
 
 (defrule get_eng_word_list
 (declare (salience 200))
 (id-word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(Eng_word_list $?Eng_list)
 =>
 (retract ?f ?f1)
 (bind ?word (str-cat ?word "," ?id ))
 (assert (Eng_word_list $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )


  (defrule algorithm
   (declare (salience 199))
  (print algorithm)
   =>
  (printout t crlf "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
 ; (printout t "                      Verb agreement algorithm" crlf)
 ; (printout t "                      ========================" crlf)
 ; (printout t crlf "	step1 : Check if subject has any prasarg (vibakthi)" 
 ;             crlf "	        if no   ---> verb agreement is with subject	eg:-Rama is a good boy." 
 ;             crlf "	        if yes  ---> Go to step 2			eg:-She has a daughter."     
 ;        crlf crlf "	step2 : Check if object has any prasarg (vibakthi)"
 ;             crlf "	        if no   ---> verb agreement is with object	eg:-She has a daughter." 
 ;             crlf "	        if yes  ---> Go to step 3			eg:-Rama married Sita."  
 ;        crlf crlf "	step3 : Check whether hindi meaning of the verb is in kriyA_mUla list" 
 ;             crlf "	        if no   ---> Go to step 4				" 
 ;             crlf "	        if yes  ---> verb agree with kriyA_mUla		eg:-The student needs training ." 
 ;        crlf crlf "	step4 : default agreement(m,s,a)			eg:-They would have to eat ." crlf
 ; )
  )

 (defrule sub_agmt_for_or
 (Rule_name-verb_agrmt-subject_id-head_id ?rule or_subject  ?sub_id ?kri_id)
 (Eng_word_list $?Eng_list)
 =>
 (printout t "-------------------------------------------------------------------------------------------------------" crlf)
 (printout t "Rule_name : " ?rule "     verb : " (nth$ ?kri_id $?Eng_list) "      agreement is with subject : "(nth$ ?sub_id $?Eng_list)  crlf)
 (printout t "-------------------------------------------------------------------------------------------------------" crlf)
 )


 (defrule sub_agmt
 (Rule_name-verb_agrmt-subject_id-head_id ?rule subject ?sub_id ?kri_id)
 (Eng_word_list $?Eng_list)
 =>
 (printout t "-------------------------------------------------------------------------------------------------------" crlf)
 (printout t "Rule_name : " ?rule "     verb : " (nth$ ?kri_id $?Eng_list) "      agreement is with subject : "(nth$ ?sub_id $?Eng_list)  crlf) 
 (printout t "-------------------------------------------------------------------------------------------------------" crlf)
 )
 
 (defrule obj_agmt
 (Rule_name-verb_agrmt-object_id-head_id ?rule ?obj_id ?kri_id)
 (Eng_word_list $?Eng_list)
 =>
(printout t "-------------------------------------------------------------------------------------------------------" crlf)
 (printout t "Rule_name : " ?rule "verb ("(nth$ ?kri_id $?Eng_list)") agreement is with object : ("(nth$ ?obj_id $?Eng_list)")" crlf )
 (printout t "-------------------------------------------------------------------------------------------------------" crlf)
 )

 (defrule kriyA_mula_agmt
 (Rule_name-verb_agrmt-head_id ?rule  kriyA_mula ?kri_id ?gen)
 (Eng_word_list $?Eng_list)
 =>
 (printout t "-------------------------------------------------------------------------------------------------------" crlf)
 (printout t "Rule_name : " ?rule "verb : ("(nth$ ?kri_id $?Eng_list)") agreement is with : kriyA_mula " crlf )
 (printout t "-------------------------------------------------------------------------------------------------------" crlf)
 )

 (defrule default_agmt
 (Rule_name-verb_agrmt-head_id ?rule  default ?kri_id)
 (Eng_word_list $?Eng_list)
 =>
 (printout t "-------------------------------------------------------------------------------------------------------" crlf)
 (printout t "Rule_name : " ?rule "verb : ("(nth$ ?kri_id $?Eng_list)") default agreement (m,s,a) " crlf )
 (printout t "-------------------------------------------------------------------------------------------------------" crlf)
 )

 (run)
