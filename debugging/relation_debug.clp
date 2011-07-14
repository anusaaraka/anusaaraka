 (defglobal ?*count* = 1)
 (defglobal ?*help-file* = relation-help.html)
 (defglobal ?*path1* = ?*path*)

 (deffunction Help ()
 (bind ?help-file_path (str-cat ?*path1* "/debugging/" ?*help-file*))
 ;(system "zenity  --text-info --title="relation-help" --filename="?help-file_path"  --width=560  --height=300  &")
 (system "firefox "?help-file_path)
 )

 (defrule question_ol
 (declare (salience 101))
 ?f<-(question1 ?text)
 (Parser_used Open-Logos-Parser)
 =>
 (retract ?f)
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/modify_ol_relations.clp"))
 (batch* ?*path*)
 (system "clear")
 (system "echo \"Open-Logos-Parser-Output\" ")
 (system "echo \"-------------------------\" ")
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
 (system "cat ol_relations.dat")
 (system "cat " ?*home_anu_tmp*)
 )
 
 (defrule question
 (declare (salience 101))
 ?f<-(question1 ?text)
 (Parser_used Link-Parser) 
 =>
 (retract ?f)
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/link_relation_rules.clp"))
 (batch* ?*path*)
 (system "clear")
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
; (system "anu_link-parser.sh <jnk >jnk1 2>err")
 (system "anu_link4.sh <jnk >jnk1 2>err")
 (system "cat jnk1")
 (system "cat " ?*home_anu_tmp*)
 )

 (defrule question_std
 (declare (salience 101))
 ?f<-(question1 ?text)
 (Parser_used Stanford-Parser)
 =>
 (retract ?f)
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/sd_relation_rules.clp"))
 (batch* ?*path*)
 (system "clear")
 (system "echo \"Stanford-Parser-Output\" ")
 (system "echo \"----------------------------\" ")
 (system "cat relations_tmp.dat")
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
 (system "cat " ?*home_anu_tmp*)
 )

 (defrule V_P_relations
 (declare (salience 98))
 (prep_id-relation-parser_ids ?p  ?rel ?id ?id1)
 (test (and (neq ?rel viSeRya-det_viSeRaNa) (neq ?rel viSeRya-viSeRaNa)(neq ?rel kriyA-nA)(neq ?rel kriyA-ke_liye) (neq ?rel nAma-saMkRipwa_nAma)(neq ?rel proper_noun-det_viSeRaNa)(neq ?rel subject-opener)(neq ?rel kriyA-ne_ke_liye)(neq ?rel viSeRya-wulanAwmaka_viSeRaNa)(neq ?rel kriyA-viXi_vAkyakarma)(neq ?rel kriyA-samAnakAlika_kriyA)(neq ?rel pUrvakAlika_kriyA-ananwarakAlika_kriyA)(neq ?rel kriyA-praSnavAcI)(neq ?rel muKya_vAkya-sApekRa_upavAkya)(neq ?rel subject-vAkyasamAnAXikarNa))) 
 (not (prep_id-relation-parser_ids  ?p  ?rel ?id ?id1 RC))
 ?f<-(pp_list $?pp_list) 
 ?f1<-(head_count ?head_cnt)
 =>
 (retract ?f1 ?f)
 (assert (prep_id-relation-parser_ids ?p ?rel ?id ?id1 RC))
 (if (not(member$ ?id1 $?pp_list)) then
 (bind $?pp_list (create$ $?pp_list ?id1)))

 (if (not(member$ ?id $?pp_list)) then
 (bind $?pp_list (create$ $?pp_list ?id)))

 (assert (pp_list $?pp_list))
 (bind ?head_cnt (+ ?head_cnt 1))
 (assert (head_count ?head_cnt))
 )

 (defrule test1
 (declare (salience 97))
 (prep_id-relation-parser_ids ?p  ?rel ?id ?id1)
 (relation-parser_ids ?rel1 ?id ?id1)
 (not (relations_repeated ?id ?id1 RR))
 (test (neq ?rel ?rel1))
  =>
  (assert (relations_repeated ?id ?id1 RR))
  (printout t crlf "Found multiple Relations for the same ids" crlf)
  (printout t "===================================" crlf)
  (printout t crlf "("?rel1" "?id" "?id1")" crlf)
  (printout t "("?rel"  "?id" "?id1")" crlf)
 )


 (defrule test2
 (declare (salience 97))
 (prep_id-relation-parser_ids ?p ?rel ?id ?id1)
 (prep_id-relation-parser_ids ?p ?rel1 ?id1 ?id)
 (not (relations_looped ?rel ?id ?id1 RL))
 (not (relations_looped ?rel1 ?id1 ?id RL))
 =>
 (assert (relations_looped ?rel ?id ?id1 RL))
 (assert (relations_looped ?rel1 ?id1 ?id RL))
 (printout t crlf "The relations below form a loop" crlf)
 (printout t "===============================" crlf)
 (printout t crlf  "(" ?rel" "?id" "?id1 ")" crlf)
 (printout t "(" ?rel1" "?id1" "?id ")" crlf)
 )

 (defrule test_for_loop
 (declare (salience 96))
 (head_count ?head_cnt)
 (pp_list $?pp_list)
 =>
 (if (>= ?head_cnt (length$ $?pp_list)) then
 (printout t crlf "Extra relations are present then required" crlf)
 (printout t "==================================" crlf)
 else (if (< ?head_cnt (- (length$ $?pp_list) 1)) then
 (printout t crlf "Some relations are missing" crlf)))
 )

 (defrule ask_question
 (declare (salience 90))
 ?f<-(question ?txt)
  =>
  (retract ?f)
  (printout t crlf ?txt crlf "1. Is any relation missing" crlf "2. Is there any wrong relation" crlf)
  (bind ?read (read))
  (if (eq ?read 1) then
          (assert (relations correct))
      else (if (eq ?read 2) then
           (assert (relations wrong))
      else (printout t "Legal answers are 1 or 2" crlf)
           (assert (question ?txt)) 
            )
   )   
  )

 (defrule relations_correct
 (declare (salience 89))
 ?f<-(relations correct|wrong|continue_loop)
  =>
 ; (retract ?f)
      (printout t "Is the parser's output correct? (y/n) :: ")
      (bind ?read (read))
      (if (eq ?read y) then
          (assert (parser_output correct))
      else (if (eq ?read n) then
          (assert (parser_output wrong))
      else
          else (printout t "Legal answers are y or n" crlf)
          (assert (relations continue_loop))))
  )


 (defrule parser_output_wrong
 (declare (salience 89))
 ?f<-(parser_output wrong)
  =>
  (retract ?f)
           (printout t "Can you correct the parse using the pre-processor (y/n) :: ")
           (bind ?read (read)) 
           (if (eq ?read y) then
           (printout t "Sorry, currently this facility is not available :(" crlf)
            else (if (eq ?read n) then 
            (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
            (printout t crlf "Then send a mail to Anusaaraka team :: sukhada8@gmail.com "crlf crlf)
            (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
            (exit)
            else (printout t "Legal answers are (y/n)" crlf)
                 (assert (parser_output wrong))))
  )
 

 (defrule relations_wrong 
 (declare (salience 91))
 (parser_output correct)
 ?f<-(relations wrong)
  =>
  (retract ?f)
  (printout t "Type the relation name and ids " crlf "For Open-Logos Ex:- kriyA-subject P3 P1 :: " crlf "   For other Parsers Ex:- kriyA-subject 3 1 :: " crlf)
  (bind ?txt (explode$ (readline)))
  (assert (debug ?txt))
  )
 
  (defrule debug_relation
  (declare (salience 10))
  ?f<-(debug ?rel ?pid ?rid)
  (or (prep_id-Rule-Rel-ids ? ?rule_name ?rel ?P_lid ?P_rid) (Rule-Rel-ids ?rule_name ?rel ?P_lid ?P_rid))
  (parserid-wordid  ?P_lid ?pid)
  (parserid-wordid  ?P_rid ?rid)
  (not (Parser_used Open-Logos-Parser))
  (Parser_used ?ptype)
  =>
  (retract ?f)
  (printout t crlf " Relation is given by  using the rule \"" ?rule_name "\""  crlf " And the rule is defined as..... " crlf crlf)
  (ppdefrule ?rule_name)
  (printout t crlf "NOTE:: " crlf crlf)
  (if (eq ?ptype Link-Parser) then
  (printout t "1. If you want to write any rule for the relations please go to the directory \"anu_testing/Anu_clp_files\" and "crlf "    write the rules in \"link_relation_rules.clp\" file " crlf  "2. After saving the rule compile it using the command  :    \" myclips -f create_binary_files.clp\"      "crlf  "3. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf  "4. Use following command to exit :: (exit)" crlf crlf)
  else (if (eq ?ptype Stanford-Parser) then
  (printout t "1. If you want to write any rule for the relations please go to the directory \"anu_testing/Anu_clp_files\" and "crlf "   write the rules in \"sd_relation_rules.clp\" file " crlf "2. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf  "3. Use following command to exit :: (exit)" crlf crlf))
  ))

 
  (defrule debug_ol_relations
  (declare (salience 12))
  ?f<-(debug ?rel ?pid ?rid)
  (Parser_used Open-Logos-Parser)
  =>
;      (retract ?f)
      (printout t crlf "What type of relations you want to debug?"  crlf "1. Relations that are asserted" crlf "2. Relations that are deleted" crlf)
      (bind ?read (read))
      (if (eq ?read 1) then
          (assert (relations asserted))
      else (if (eq ?read 2) then
          (assert (relations deleted))
      else (printout t "Legal answers are 1 or 2" crlf)
          (bind ?txt (explode$ (readline)))
          (assert (debug_ol ?txt))))
  )

 
  (defrule relations_asserted
  (declare (salience 11))
  ?f1<-(debug ?rel ?P_lid ?P_rid)
  ?f<-(relations asserted)
  (Parser_used Open-Logos-Parser)
  (Rule-Rel-ids  ?rule_name   ?rel   ?P_lid   ?P_rid)
  =>
  (retract ?f ?f1)
  (if  (and (neq ?rule_name write_remaining_relations) (neq ?rule_name write_AjFArWaka_kriyA_rel) (neq ?rule_name write_AjFArWaka_kriyA_rel1)) then
          (printout t crlf " Relation is given by  using the rule \"" ?rule_name "\""  crlf " And the rule is defined as..... " crlf crlf)
          (ppdefrule ?rule_name)
    else 
            (printout t crlf " These Relations are given by using run_openlogos.py "crlf " If you want to debug these relations then go to the directory \"anu_testing/Anu_src\" and then debug run_openlogos.py" crlf))
 
  (printout t crlf "NOTE:: " crlf crlf)
  (printout t "1. If you want to write any rule for the relations please go to the directory \"anu_testing/Anu_clp_files\" and "crlf "   write the rules in \"modify_ol_relations.clp\" file " crlf "2. After saving the rule compile it using the command  :    \" myclips -f create_binary_files.clp\"      "crlf  "3. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf  "4. Use following command to exit :: (exit)" crlf crlf)
  )

  (defrule relations_asserted1
  (declare (salience 11))
  ?f1<-(debug ?rel ?P_lid ?P_rid)
  ?f<-(relations asserted)
  (Parser_used Open-Logos-Parser)
  (not (Rule-Rel-ids ?rule_name   ?rel   ?P_lid   ?P_rid))
  =>
  (retract ?f ?f1)
  (printout t crlf " These Relations are given by using run_openlogos.py "crlf " If you want to debug these relations then go to the directory \"anu_testing/Anu_src\" and then debug run_openlogos.py" crlf)
  (printout t crlf "NOTE:: " crlf crlf)
  (printout t "1. If you want to write any rule for the relations please go to the directory \"anu_testing/Anu_clp_files\" and "crlf "   write the rules in \"modify_ol_relations.clp\" file " crlf "2. After saving the rule compile it using the command  :    \" myclips -f create_binary_files.clp\"      "crlf  "3. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf  "4. Use following command to exit :: (exit)" crlf crlf)
  )

  (defrule  relations_deleted
  (declare (salience 11))
  ?f1<-(debug ?rel ?P_lid ?P_rid)
  ?f<-(relations deleted)
  (rule-deleted_relation-ids ?rule_name  ?rel  ?P_lid  ?P_rid)
  (parserid-wordid  ?P_lid  ?pid)
  (parserid-wordid  ?P_rid  ?rid)
  (Parser_used Open-Logos-Parser)
  =>
       (retract ?f)
       (assert  (relation_deleted exists)) 
   )
  
  (defrule  relations_deleted_1
  (declare (salience 11))
  ?f1<-(debug ?rel ?P_lid ?P_rid)
  ?f<-(relations deleted)
  (not (rule-deleted_relation-ids ?rule_name ?rel  ?P_lid  ?P_rid))
  (parserid-wordid  ?P_lid  ?pid)
  (parserid-wordid  ?P_rid  ?rid)
  (Parser_used Open-Logos-Parser)
  =>
       (retract ?f)
       (assert  (relation_deleted doesnot_exists))
   )
 
 
  (defrule  relations_deleted_exists
  (declare (salience 10))
  ?f1<-(debug ?rel ?P_lid ?P_rid)
  ?f<-(relation_deleted  exists)
  (rule-deleted_relation-ids ?rule_name  ?rel  ?P_lid  ?P_rid)
  (parserid-wordid  ?P_lid  ?pid)
  (parserid-wordid  ?P_rid  ?rid)
  (Parser_used Open-Logos-Parser)
  =>
  (retract ?f ?f1)
  (printout t crlf " Relation is given by  using the rule \"" ?rule_name "\""  crlf " And the rule is defined as..... " crlf crlf)
  (ppdefrule ?rule_name)
  (printout t crlf "NOTE:: " crlf crlf)
  (printout t "1. If you want to write any rule for the relations please go to the directory \"anu_testing/Anu_clp_files\" and "crlf "   write the rules in \"modify_ol_relations.clp\" file " crlf "2. After saving the rule compile it using the command  :    \" myclips -f create_binary_files.clp\"      "crlf  "3. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf  "4. Use following command to exit :: (exit)" crlf crlf)
  )

  (defrule  relations_deleted_doesnot_exists
  (declare (salience 10))
  ?f1<-(debug ?rel ?P_lid ?P_rid)
  ?f<-(relation_deleted  doesnot_exists)
  (Parser_used Open-Logos-Parser)
  =>
  (retract ?f ?f1)
  (printout t crlf " For the current sentence your debugging no deleted relations are present." crlf crlf)
  (printout t crlf "NOTE:: " crlf crlf)
  (printout t "1. If you want to write any rule for the relations please go to the directory \"anu_testing/Anu_clp_files\" and "crlf "   write the rules in \"modify_ol_relations.clp\" file " crlf "2. After saving the rule compile it using the command  :    \" myclips -f create_binary_files.clp\"      "crlf  "3. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf  "4. Use following command to exit :: (exit)" crlf crlf)
  )

  (defrule debug_relation1
  (declare (salience 9))
  ?f<-(debug ?rel ?pid ?rid)
  =>
  (retract ?f)
  (printout t "The specified relation among these ids is not present in the relations of the current sentence." crlf )
  (assert (relations wrong))
  )

  (defrule debug_relation2
  (declare (salience 8))
  ?f<-(debug $?rel)
  (test (neq (length$ $?rel) 3))
  =>
  (retract ?f)
  (printout t "Please check appropiately the relation and ids you have given " crlf )
  (assert (relations wrong))
  )

 (defrule parser_output_correct
 (declare (salience 90))
 (relations correct)
 ?f<-(parser_output correct)
 =>
 (retract ?f)
 (printout t "Among which words the relation is missing :: "crlf)
 (printout t "Type the relation name and ids " crlf "For Open-Logos Ex:- kriyA-subject P3 P1 :: " crlf "   For other Parsers Ex:- kriyA-subject 3 1 :: " crlf)
 (bind $?txt (explode$ (readline)))
 (assert (missing_relation $?txt))
 )

 (defrule missing_relation
 ?f<-(missing_relation ?rel ?pid ?rid)
 (Parser_used ?ptype)
  =>
 (retract ?f)
 (if (eq ?ptype Link-Parser) then
 (system "echo \"rel_debug.*"?rel"	\" >pat")
 (system "grep -R \"^[ \\t]\*(printout\" link_relation_rules.clp |sed \"s/[ \\t]\*(printout/(printout/g\" <link_relation_rules.clp >link_relation_rules_copy.clp")
 (system "perl ../replace_spaces_with_tab.pl <link_relation_rules_copy.clp >link_relation_rules_copy1.clp")
 (system  "grep -f pat link_relation_rules_copy1.clp | cut -f 5 >out_file")
; (system "echo \"rel_debug.*	"?rel"	\" >pat") 
; (system  "grep -f pat link_relation_rules.clp | cut -f 4 >out_file")
 ;(open "out_file" fp "r")
 else
 (if (eq ?ptype Stanford-Parser) then
 (system "echo \"dbug.*"?rel"	\" >pat")
 (system "grep -R \"^[ \\t]\*(printout\" sd_relation_rules.clp |sed \"s/[ \\t]\*(printout/(printout/g\" <sd_relation_rules.clp >sd_relation_rules_copy.clp")
 (system "perl ../replace_spaces_with_tab.pl <sd_relation_rules_copy.clp >sd_relation_rules_copy1.clp")
 (system  "grep -f pat sd_relation_rules_copy1.clp | cut -f 5 >out_file"))
 else
 (if (eq ?ptype Open-Logos-Parser) then
 (system "echo \"debug.*"?rel"      \" >pat")
 (system "grep -R \"^[ \\t]\*(printout\" modify_ol_relations.clp |sed \"s/[ \\t]\*(printout/(printout/g\" <modify_ol_relations.clp >modify_ol_relations_copy.clp")
 (system "perl ../replace_spaces_with_tab.pl <modify_ol_relations_copy.clp >modify_ol_relations_copy1.clp")
 (system  "grep -f pat modify_ol_relations_copy1.clp | cut -f 4 >out_file")))

 (open "out_file" fp "r")
 (if (eq (read fp) EOF) then
 (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
 (printout t crlf "There is no rule defined with this relation" crlf crlf)
 (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
 (printout t crlf "1. If you want to write any rule for the relations please go to the directory \"anu_testing/Anu_clp_files\" and "crlf "   write the rules in \"modify_ol_relations.clp\" file " crlf "2. After saving the rule compile it using the command  :    \" myclips -f create_binary_files.clp\"      "crlf  "3. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf "4. Use following command to exit :: (exit)" crlf crlf)
 ;(exit)
 (assert(parser_output correct_relation_not_found))
 else
 (printout t "Following rules satisfies the above relation" crlf)
 (printout t "===================================================" crlf)
 (system "cat out_file")
 (printout t crlf crlf "The following command is used to see the matches of a rule" crlf)
 (printout t "==========================================================" crlf)
 (printout t "(matches <rule_name>) "crlf crlf)

 (printout t "The following command is used to Display the text of a given rule" crlf)
 (printout t "=================================================================" crlf)
 (printout t "(ppdefrule <rule_name>) "crlf crlf)

 (printout t crlf "NOTE:: " crlf)
 (if (eq ?ptype Link-Parser) then
   (printout t "1. If you want to write any rule for the relations please go to the directory \"anu_testing/Anu_clp_files\" and "crlf "    write the rules in \"link_relation_rules.clp\" file " crlf  "2. After saving the rule compile it using the command  :    \" myclips -f create_binary_files.clp\"      "crlf  "3. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf  "4. Use following command to exit :: (exit)" crlf crlf)
  else (if (eq ?ptype Stanford-Parser) then
  (printout t "1. If you want to write any rule for the relations please go to the directory \"anu_testing/Anu_clp_files\" and "crlf "   write the rules in \"sd_relation_rules.clp\" file " crlf "2. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf  "3. Use following command to exit :: (exit)" crlf crlf)
 )
  else (if (eq ?ptype Open-Logos-Parser) then
  (printout t "1. If you want to write any rule for the relations please go to the directory \"anu_testing/Anu_clp_files\" and "crlf "   write the rules in \"modify_ol_relations.clp\" file " crlf "2. After saving the rule compile it using the command  :    \" myclips -f create_binary_files.clp\"      "crlf  "3. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf "4. Use following command to exit :: (exit)" crlf crlf)
 )))
 (close fp)
 )

  (defrule parser_output_correct_relation_not_found
  ?f<-(parser_output correct_relation_not_found)
  =>
  (retract ?f)
  (printout t "Do you want to search for other relation (y/n) ::" crlf)
  (bind ?reply (read))
  (if (eq ?reply y) then
      (assert (parser_output correct))
  else (if (eq ?reply n) then
       (exit)
  else
       (printout t "Legal answers are (y/n)" crlf)
       (assert (parser_output correct_relation_not_found))))
  )


  (defrule debug_relation3
  ?f<-(missing_relation $?rel)
  (test (neq (length$ $?rel) 3))
  =>
  (retract ?f)
  (printout t "Please check appropiately the relation and ids you have given " crlf )
  (assert (parser_output correct))
  )

;(run)
