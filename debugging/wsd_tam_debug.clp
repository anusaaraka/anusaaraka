  (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))
 
 (load-facts "revised_root.dat")
 (load-facts "word.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "relations.dat")
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "tam_id.dat")
 (load-facts "revised_preferred_morph.dat")
 (load-facts "original_word.dat")
 (load-facts "hindi_tam_info.dat")
 (load-facts "debug_file.dat")
 (load* "global_path.clp")

 (defglobal ?*prov_dir* = ?*provisional_wsd_path*)
 (defglobal ?*wsd_dir* = (create$ (str-cat ?*path* "/WSD/wsd_rules/")))
 (defglobal ?*debug_flag* = TRUE)
 (defglobal ?*count* = 1)
 (defglobal ?*help-file* = tam-help)
 (defglobal ?*path1* = ?*path*)

 (deffunction Help ()
 (bind ?help-file_path (str-cat ?*path1* "/debugging/" ?*help-file*))
 (system "zenity  --text-info --title="tam-help" --filename="?help-file_path"  --width=560  --height=300  &")
 )

 
 (dribble-on debug_info)
 (facts)
 (dribble-off)
 (system "zenity  --text-info  --filename=debug_info  --width=560  --height=300  &")
 (assert (question "Enter the tam id ::  "))
 (assert (next_id 1))
 (assert (English-list))

 (defrule display_sentence
 (declare (salience 100))
 ?f<-(next_id ?id)
 ?f1<-(English-list $?Eng_list)
 (id-original_word ?id ?word)
 =>
 (retract ?f ?f1)
 (if (eq ?id 1) then (printout t crlf crlf))
 (if (> ?*count* 6) then
     (bind ?*count* 0)
     (printout t crlf))

 (printout t " "?word " - "?id" |")
 (bind ?*count* (+ ?*count* 1))
 (bind ?word (str-cat ?word ))
 (assert (English-list $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (next_id ?id))
 )

 (defrule display
 (declare (salience 99));n
 ?f0<-(next_id ?id)
  =>
 (retract ?f0)
 (printout t crlf crlf " The tams present in the sentence are : " crlf  )
 (printout t "<=====================================>" crlf)
 )

 (defrule display_tams
 (declare (salience 98))
 ?f0<-(id-TAM ?id ?tam)
 =>
 ;(retract ?f0)
 (printout t crlf "id :: " ?id "   TAM :: " ?tam  crlf)
 (assert (id-tam ?id ?tam))
 )

 (defrule get_tam_id
 (declare (salience 80))
 ?f<-(question ?text)
 =>
 (retract ?f)
 (printout t crlf)
 (format t " %s " ?text)
 (bind ?reply (read))
 (assert (get-tam_id ?reply))
 )
 
 (defrule tam_exists
 (declare (salience 75))
 ?f<-(get-tam_id ?id)
 (id-tam ?id ?tam)
 =>
 (retract ?f)
 (assert(get_rule_fired ?id ?tam))
 )

 (defrule tam_exists1
 (declare (salience 74))
 ?f<-(get-tam_id ?id)
 =>
 (retract ?f)
 (printout t "Given id is not a tam" crlf)
 (assert (question "Enter the correct id::  "))
 )

 (defrule wsd_tam_mng
 (declare (salience 70))
 ?f<-(get_rule_fired ?id ?tam)
 (dir_name-file_name-rule_name-id-H_tam_mng ?dir_name  ?file_name ?rule_name ?id ?tam_mng)
 =>
 (retract ?f)
 (printout t crlf "Tam meaning has been generated from WSD (" ?dir_name ") " crlf crlf)
 (printout t crlf "File_name :: "?file_name"   Rule_name :: " ?rule_name "   Meaning :: \"" ?tam_mng "\"" crlf crlf)
 (assert(all_tam_mngs ?id ?tam))
 )

 (defrule default_tam_mng
 (declare (salience 65))
 ?f<-(get_rule_fired ?id ?tam)
 (pada_info (group_head_id ?id)(group_cat VP)(H_tam ?tam_mng)(tam_source Default))
 =>
 (retract ?f)
 (printout t crlf "Tam ::  \"" ?tam  "\"      Meaning  :: \"" ?tam_mng "\"    Generated from  \"Default tam database\" " crlf crlf)
 (assert(all_tam_mngs ?id ?tam))
 )

 (defrule no_tam_mng
 (declare (salience 60))
 ?f<-(get_rule_fired ?id ?tam)
 (pada_info (group_head_id ?id)(group_cat VP)(H_tam ?tam_mng)(tam_source 0))
 =>
 (retract ?f)
 (printout t crlf  "No Meaning was found for the tam \"" ?tam "\" , in any source( WSD/default database) \""crlf crlf)
 (assert(all_tam_mngs ?id ?tam))
 )


 
 (defrule expected_mng
 (declare (salience 70))
 ?f<-(all_tam_mngs ?id ?tam)
 =>
 (retract ?f)
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/" (implode$ (create$ ?tam)) "_tam.clp >jnk 2>error")
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"(implode$ (create$ ?tam)) "_tam.clp >>jnk 2>error")
 (open "jnk" fp2 "r")
 (if (eq (read fp2) EOF) then
     (printout t crlf "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
     (printout t      "There is no clip file defined for this tam"     )
     (printout t crlf "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
;     (close fp12)(remove jnk1)
     (assert (ask_whether_to_write_a_rule ?id ?tam))
 else
 (printout  t crlf "What is your expected meaning" crlf)
 (bind ?reply (read))
 (assert (expected_mng ?id ?tam ?reply)) 
 (close fp2)(remove jnk)
 ))

 (defrule expected_mng1
 (declare (salience 70))
 ?f<-(expected_mng ?id ?tam ?exp_mng)
 =>
 (retract ?f)
 (printout  t crlf "Do you want all possible meanings of the tam(y/n)" crlf)
 (bind ?reply (read))
 (if (eq ?reply y) then
      (assert (print_all_possible_meanings ?id ?tam ?exp_mng))
 else (if (eq ?reply n) then
      (assert (print_only_expected_meaning ?id ?tam ?exp_mng))
 else
      (printout t "Legal answers are (y/n)" crlf)
      (assert (expected_mng ?id ?tam ?exp_mng))
     )
 )
 )

 (defrule print_all_possible_meanings
 ?f<-(print_all_possible_meanings ?id ?tam ?exp_mng)
 =>
 (retract ?f)
 ( system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/" (implode$ (create$ ?tam)) "_tam.clp >jnk 2>error")
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"(implode$ (create$ ?tam)) "_tam.clp >>jnk 2>error")
 (open "jnk" fp "r")
 (if (neq (read fp) EOF) then
 (system "grep -B2 \" " ?exp_mng"))\" jnk >jnk1")
 (open "jnk1" fp1 "r")
  (if (eq (read fp1) EOF) then
     (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
     (printout t crlf "There is no rule defined with the expected meaning" crlf crlf)
     (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
     (assert (get-path ?id ?tam))
  )
 (close fp1)(close fp)(remove jnk1)
 (open "jnk" fp "r")
 (printout t "Rules matching the tam are ::" crlf)
 (printout t "<=====================================>" crlf)
 (system "cat jnk")
 (close fp)
 (remove jnk)
 (assert (get-path ?id ?tam))
 ))

 (defrule print_only_expected_meaning
 ?f<-(print_only_expected_meaning ?id ?tam ?exp_mng)
 =>
 (retract ?f)
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/" ?tam "_tam.clp | grep -B2  \" " ?exp_mng"))\">jnk 2>error")
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?tam "_tam.clp | grep -B2  \" " ?exp_mng"))\">>jnk 2>error")
 (open "jnk" file "r")
 (if (eq (read file) EOF) then
       (close file) (remove jnk)
       (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
       (printout t crlf "There is no rule defined with the expected meaning" crlf crlf)
       (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
       (assert (search_for_other_meaning ?id ?tam))
    else
     (printout t "Rules matching Expected meaning are ::" crlf)
     (printout t "<=====================================>" crlf)
     (system "cat jnk")
     (close file)
     (remove jnk)
     (assert (get-path ?id ?tam))
 ))

 (defrule search_for_other_meaning
 ?f<-(search_for_other_meaning ?id ?tam)
 =>
 (retract ?f)
   (printout t "Do you want to search for other meaning(y/n)" crlf)
   (bind ?reply (read))
        (if (eq ?reply y) then
        (assert(all_tam_mngs ?id ?tam))
        else (if (eq ?reply n) then
          (printout t "Exiting TAM debugging ............" crlf)
          ;(exit)
       else
          (assert(search_for_other_meaning ?id ?tam))
          (printout t "Legal answers are \"(y/n)\" " crlf))
       )
 )


  (defrule display_rule
  ?f<-(get-path ?id ?tam)
   =>
 	(printout t crlf crlf "The command to see the matches of a rule is " crlf)
        (printout t "(matches <rule_name>) "crlf)
        (printout t "----------------------------------------------------" crlf)
	(printout t "The command to Display the text of a given rule is " crlf)
 	(printout t "(ppdefrule <rule_name>) "crlf)
        (printout t "----------------------------------------------------" crlf)
        (printout t "The command to exit is" crlf)
 	(printout t "(exit) "crlf)

 	(bind ?tam_file (str-cat ?*path* "/WSD/wsd_rules/" ?tam "_tam.clp"))
 	(bind ?tam_file1 (str-cat ?*provisional_wsd_path* "/" ?tam "_tam.clp"))
 	(if (and (neq (load* ?tam_file) FALSE)(halt)) then
	else (if (and(neq (load* ?tam_file1) FALSE)(halt)) then
	     else
               (printout t "There is no rule file with that tam." crlf)
              )
        )
 )


 (defrule ask_whether_to_write_a_rule
 ?f<-(ask_whether_to_write_a_rule ?id ?tam)
  =>
 (retract ?f)
 (printout t "Do you want to write a rule(y/n)" crlf)
 (bind ?reply (read))
        (if (eq ?reply y) then
        (assert (print_the_procedure_how_to_write_a_rule ?id ?tam))
        else (if (eq ?reply n) then
        (printout t "Exiting tam debugging ............" crlf)
        ;(exit)
       else
          (assert(ask_whether_to_write_a_rule ?id ?tam ))
          (printout t "Legal answers are \"(y/n)\" " crlf))
       )
 )

 (defrule print_the_procedure_how_to_write_a_rule
 ?f<-(print_the_procedure_how_to_write_a_rule ?id ?tam)
 =>
 (retract ?f)
 (printout t  "STEP1::  To create or open a particular clip file type the following command :" crlf)
 (printout t  "======" crlf)
 (printout t  "         (system \"gvim -o \" ?*provisional_wsd_path* ""/" "<tam>_tam.clp)" crlf)
 (printout t  "         For Eg for \"is_ing\" tam:- CLIPS> (system \"gvim -o \"  ?*provisional_wsd_path* ""/"  "is_ing_tam.clp)" crlf crlf)
 (printout t  "STEP2::  After writing the rule save and close the file. " crlf)
 (printout t  "======" crlf)
 (printout t  "STEP3::  To check the syntax error in the rule; please load the file using the following command :" crlf)
 (printout t  "======" crlf)
 (printout t  "         (load* (str-cat ?*provisional_wsd_path* ""/" "<tam>_tam.clp))" crlf)
 (printout t  "         For Eg:- CLIPS> (load* (str-cat ?*provisional_wsd_path* ""/" "is_ing_tam.clp))" crlf crlf)
 (printout t  "STEP4::  If the return value is \"TRUE\" it implies there is no syntax error in the rule else,  identify and co "crlf       "======       -rrect the error and repeat the above three STEPS "crlf crlf)
 (printout t "STEP5::   Run the sentence again in Anusaraka to see the effect of the above rule ." crlf)
 (printout t  "======" crlf)
  )

 (system "clear")
 (run)
