 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))
 
 (load "global_path.clp")
 (load-facts "word.dat")
 (load-facts "GNP_debug.dat")
 (load-facts "id_Apertium_input.dat")
 (load-facts "id_Apertium_output.dat")
 (load-facts "apertium_input_debug.dat")
 (load-facts "GNP_agmt_info.dat")
 (assert (question "Input Sentence"))
 (assert (question1 "Enter the word id for GNP debugging::  "))
 (assert (next_id 1))
 (defglobal ?*count* = 1)

 (defglobal ?*help-file* = GNP-help)
 (defglobal ?*path1* = ?*path*)

 (deffunction Help ()
 (bind ?help-file_path (str-cat ?*path1* "/debugging/" ?*help-file*))
 (system "zenity  --text-info --title="GNP-help" --filename="?help-file_path"  --width=560  --height=300  &")
 )


 (defrule question_link
 (declare (salience 101))
 ?f<-(question ?text)
 (Parser_used Link-Parser)
 =>
 (retract ?f)
 (system "clear")
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
 (system "anu_link-parser.sh <jnk >jnk1 2>err")
 (system "cat jnk1")
 (system "cat " ?*home_anu_tmp*)
 )

 (defrule question
 (declare (salience 101))
 ?f<-(question ?text)
 (not (Parser_used Link-Parser))
 =>
 (retract ?f)
 (system "clear")
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
 (system "cat " ?*home_anu_tmp*)
 )

 (defrule sentence_display
 (declare (salience 100))
 ?f<-(next_id ?id)
 (id-word ?id ?word)
 =>
 (retract ?f)
 (if (eq ?id 1) then (printout t crlf crlf))
 (if (> ?*count* 6) then
     (bind ?*count* 0)
     (printout t crlf))

 (printout t " "?word " - "?id" |")
 (bind ?*count* (+ ?*count* 1))
 (bind ?id (+ ?id 1))
 (assert (next_id ?id))
 )

 (defrule sentence_display1
 (declare (salience 99))
 ?f<-(next_id ?id)
  =>
 (retract ?f)
 (printout t crlf crlf))

 (defrule question1
 (declare (salience 99))
 ?f<-(question1 ?text)
 =>
 (retract ?f)
 (format t "%s " ?text)
 (bind ?reply (read))
 (assert (get-word_id ?reply))
 (assert (get_apertium_format ?reply))
 )

 (defrule word_exists1
 (declare (salience 99))
 ?f<-(get-word_id ?id)
 (not (id-word ?id ?word))
 =>
 (retract ?f)
 (printout t "Given word id is not present in the sentence" crlf)
 (assert (question1 "Enter the word id for GNP debugging::  "))
 )

 (defrule find_pada
 (declare (salience 98))
 ?f<-(get-word_id ?p_id)
 (pada_info (group_head_id ?id) (group_cat ?g_type) (group_ids $?ids))
 (test (neq ?g_type English_PP))
 (test (member$ ?p_id $?ids) )
 =>
 (printout t "This word is part of the  Pada  ::"  $?ids crlf)
 (if (eq ?p_id ?id) then
 (assert (get-pada_id ?id))
 else
 (retract ?f)
 (assert (get-pada_id ?id)))
 )
 
 (defrule VP_GNP
 (declare (salience 97))
 ?f<-(get-pada_id ?p_id)
 (pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP ?p_id ?r_name ?g ?g_s ?n ?n_s ?p ?p_s)
  =>
 (if (eq ?r_name verb_sub_agmt) then
      (printout t "Verb "?p_id " agreement is with subject " crlf))
 (printout t "Rule Fired :: " ?r_name crlf)
 (printout t "              gender-source = "?g " ("?g_s")" crlf
             "              number-source = "?n " ("?n_s")" crlf 
             "              person-sourcc = "?p " ("?p_s")" crlf )
 )

 (defrule PP_GNP
 (declare (salience 96))
 ?f<-(get-pada_id ?p_id)
 (pada_id-rule_name-gen_src-num_src-per_src-case ?p_id ?r_name ?g ?g_s ?n ?n_s ?p ?p_s ?c ?c_s)
  =>
 (printout t "Rule Fired :: " ?r_name crlf)
 (printout t "              gender-source = "?g " ("?g_s")" crlf
             "              number-source = "?n " ("?n_s")" crlf
             "              person-source = "?p " ("?p_s")" crlf 
             "             case-source = "?c " ("?c_s")" crlf)

 )

 (defrule GNP_Modified
 (declare (salience 95))
 ?f<-(get-pada_id ?p_id)
 (pada_id-rule_name-gen_src-num_src-person_src-GNP_modified ?p_id ?r_name ?g ?g_s ?n ?n_s ?p ?p_s)
  =>
 (printout t  "                 | "crlf
              "                 | "crlf
              "                 V "crlf )
 (printout t "Rule Fired :: " ?r_name crlf)
 (printout t "              gender-source = "?g " ("?g_s")" crlf
             "              number-source = "?n " ("?n_s")" crlf
             "              person-source = "?p " ("?p_s")" crlf)

 )
 
 (defrule default_G_Modified
 (declare (salience 94))
 ?f<-(get-pada_id ?p_id)
 (pada_id-rule_name-gen_src ?p_id default_gender_m_for_pada m Default_assignment)
  =>
 (printout t  "                 | "crlf
              "                 | "crlf
              "                 V "crlf )
 (printout t "Rule Fired :: default_gender_m_for_pada " crlf)
 (printout t "              gender-source = m  (Default_assignment)" crlf)

 (printout t "Assumption :: If none of the pada-ids has gender information by default \"male\" gender is assigned to entire pada" crlf)
 )

 (defrule gender_for_hyphen
 (declare (salience 94))
 ?f<-(get-pada_id ?p_id)
 (pada_id-rule_name-gen_src ?p_id gender_for_hyphen ?gen ?g_src)
  =>
 (printout t  "                 | "crlf
              "                 | "crlf
              "                 V "crlf )
 (printout t "Rule Fired :  gender_for_hyphen " crlf)
 (printout t "              gender-source = "?gen"  ("?g_src")" crlf)

 (printout t "Assumption :: If head id dose'nt carry any gender but if any of the other id has some gender information that gender is assigned to entire pada" crlf)
 )

 (defrule get_apertium_format
 (declare (salience 93))
 ?f<-(get_apertium_format ?reply)
 (id-Apertium_input ?reply $?aper_in_format)
 (id-Apertium_output ?reply $?aper_op_format)
 (id-Rule_name  ?reply ?r_name)
  =>
 (printout t  "                 | "crlf
              "                 | "crlf
              "                 V "crlf )
 (printout t "Rule Fired      :: "?r_name crlf)
 (printout t "Apertium_input  :: "$?aper_in_format crlf)
 (printout t "Apertium_output :: "$?aper_op_format crlf)
 )
 
 ; (defrule continue_debugging
 ;(declare (salience -10))
 ;?f<-(get-pada_id ?p_id)
 ; =>
 ;(printout t "Do you want to continue GNP debugging? (y/n) :: " crlf)
 ;(bind ?reply (read))
 ;(if (eq ?reply y) then
     
     
 


 (run)
