 
 (load* "global_path.clp") 
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "word.dat")
 (load-facts "original_word.dat")
 (load-facts "root.dat")
 (load-facts "relations.dat")
 (load-facts "lwg_info.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "preferred_morph.dat")
 (load-facts "debug_file.dat")
 (load-facts "hindi_meanings.dat")
 (load-facts "compound_phrase.dat")
; (load-facts "sent_type.dat")

 (defglobal ?*prov_dir* = ?*provisional_wsd_path*)
 (defglobal ?*debug_flag* = TRUE)
 (defglobal ?*Ex_mng*     = ex_mng)
 (defglobal ?*count* = 1)
 (defglobal ?*wsd_dir* = (create$ (str-cat ?*path* "/WSD/wsd_rules/")))
 (defglobal ?*help-file* = wsd-help)
 (defglobal ?*path1* = ?*path*)

 (deffunction Help ()
 (bind ?help-file_path (str-cat ?*path1* "/debugging/" ?*help-file*))
 (system "zenity  --text-info --title="wsd-help" --filename="?help-file_path"  --width=560  --height=300  &")
 )


 
 (dribble-on debug_info)
 (unwatch all)
 (facts)
 (dribble-off)
 (system "clear")
 (system "zenity  --text-info --title="WSD-facts" --filename=debug_info  --width=560  --height=300  &")
 (assert (question "Enter the word id ::  "))
 (assert (next_id 1))
 (assert (English-list))

 (defrule question
 (declare (salience 98))
 ?f<-(question ?text)
 =>
 (retract ?f)
 (format t "%s " ?text)
 (bind ?reply (read))
 (assert (get-word_id ?reply))
 )

 (defrule sentence_display
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

 (defrule sentence_display1
 (declare (salience 99))
 ?f<-(next_id ?id)
  =>
 (retract ?f)
 (printout t crlf crlf))


 (defrule word_exists
 (declare (salience 90))
 ?f<-(get-word_id ?id)
 (id-word ?id ?word)
 (id-root ?id ?root)
 (id-original_word ?id ?original_word)
 =>
 (retract ?f)
 (assert(get_rule_fired ?id ?original_word ?word ?root)))
 
 (defrule word_exists1
 (declare (salience 80))
 ?f<-(get-word_id ?id)
 =>
 (retract ?f)
 (printout t "Given word id is not present in the sentence" crlf)
 (assert (question "Enter the correct word id::  "))
 )

 (defrule hindi_mng_src0
 (declare (salience 76))
 ?f<-(hmng_frm_wsd_mwe-src ?id ?original_word ?word ?root ?src)
 (dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng ?d_n ?f_n ?r_n ?id1 $?ids ?group_mng)
 (id-word ?id1 ?word1)
 (id-word ?id ?word)
 (id-original_word ?id1 ?original_word1)
 (id-root ?id1 ?root1)
 (English-list $?Eng_list)
 =>
 (retract ?f)
 (printout t crlf "Word  \""?word"\" is part of MWE(multi-word-expression("?src")) (\" ")
 (bind $?ids (sort > (create$ $?ids ?id1)))
 (bind ?len (length $?ids))
 (loop-for-count (?i 1 ?len)
                 (bind ?j (nth$ ?i $?ids))
                 (bind ?k (nth$ ?j $?Eng_list))
                 (printout t ?k " "))
 (printout t "\")and the meaning is \""?group_mng"\"" crlf crlf)
 (assert (debug_overwrite_word ?id1 ?original_word1 ?word1 ?root1))
 )

 (defrule hindi_mng_src1
 (declare (salience 76))
 ?f<-(hmng_frm_wsd_mwe-src ?id ?original_word ?word ?root ?src)
 (dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng ?d_n ?f_n ?r_n ?id1 $?ids ?mng)
 (id-word ?id1 ?word1)
 (id-word ?id ?word)
 (id-original_word ?id1 ?original_word1)
 (id-root ?id1 ?root1)
 (English-list $?Eng_list)
 =>
 (retract ?f)
 (printout t crlf "Word  \""?word"\" is part of MWE(multi-word-expression("?src")) (\" ")
 (bind $?ids (sort > (create$ $?ids ?id1)))
 (bind ?len (length $?ids))
 (loop-for-count (?i 1 ?len)
                 (bind ?j (nth$ ?i $?ids))
                 (bind ?k (nth$ ?j $?Eng_list))
                 (printout t ?k " "))
 (printout t "\")and the meaning is \""?mng"\"" crlf crlf)
 (assert (debug_overwrite_word ?id1 ?original_word1 ?word1 ?root1))
 )

 (defrule hindi_mng_src_db1
 (declare (salience 76))
 ?f<-(hmng_frm_db_mwe-src ?id ?original_word ?word ?root ?src)
 (ids-cmp_mng-head-cat-mng_typ $?ids ?group_mng ?head ?cat ?mng_typ)
 (test (eq (nth$ ?head $?ids) ?id))
 (English-list $?Eng_list)
 =>
 (retract ?f)
 (printout t crlf "Word  \""?word"\" is part of MWE(multi-word-expression("?src")) (\" ")
 (bind ?len (length $?ids))
 (loop-for-count (?i 1 ?len)
                 (bind ?j (nth$ ?i $?ids))
                 (bind ?k (nth$ ?j $?Eng_list))
                 (printout t ?k " "))
 (printout t "\")and the meaning is \""?group_mng"\"" crlf crlf)
 (assert (debug_overwrite_word ?id ?original_word ?word ?root))
 )


 (defrule hindi_mng_src_db2
 (declare (salience 76))
 ?f<-(hmng_frm_db_mwe-src ?id ?original_word ?word ?root ?src)
 (ids-cmp_mng-head-cat-mng_typ $?ids ?group_mng ?head ?cat ?mng_typ)
 (test (and (neq (nth$ ?head $?ids) ?id) (member$ ?id $?ids)))
 (id-word ?id ?word)
 (English-list $?Eng_list)
 =>
 (retract ?f)
 (printout t crlf "Word  \""?word"\" is part of MWE(multi-word-expression("?src")) (\" ")
 (bind ?len (length $?ids))
 (loop-for-count (?i 1 ?len)
                 (bind ?j (nth$ ?i $?ids))
                 (bind ?k (nth$ ?j $?Eng_list))
                 (printout t ?k " "))
 (printout t "\")with head \""(nth$ (nth$ ?head $?ids) $?Eng_list)"\" and the meaning is \""?group_mng"\"" crlf crlf)
 (assert (debug_overwrite_word ?id ?original_word ?word ?root))
 )




 (defrule debug_overwriter_word
 ?f<-(debug_overwrite_word ?id1 ?original_word1 ?word1 ?root1)
 =>
 (retract ?f)
 (printout t "Do you want to debug \""?word1"\" word.(y/n) " crlf)
 (bind ?reply (read))
 (if (eq ?reply y) then
      (assert (get_expected_mng ?id1 ?original_word1 ?word1 ?root1))
 else (if (eq ?reply n) then
      (printout t "Exiting WSD debugging ............" crlf)
      (exit)
 else (printout t "Legal answers are \"(y/n)\" " crlf)
      (assert (debug_overwrite_word ?id1 ?word1)))
 )
 )

 (defrule hindi_mng_src_wsd_word
 (declare (salience 75))
 ?f<- (hmng_frm_wsd ?id ?original_word ?word ?root)
 (dir_name-file_name-rule_name-id-wsd_word_mng ?d_n ?f_n ?rule_name   ?id  ?)
 (id-HM-source ?id ?h_mng ?src)
 =>
 (retract ?f)
 (printout t crlf "Meaning has been generated from WSD (" ?d_n ") (define as word meaning)" crlf crlf)
 (printout t "File_name :: "?f_n "      Rule_name :: " ?rule_name "        Meaning :: \"" ?h_mng "\"" crlf crlf)
 (assert(get_expected_mng ?id ?original_word ?word ?root))
 )


 (defrule hindi_mng_src_wsd_root
 (declare (salience 75))
 ?f<-(hmng_frm_wsd ?id ?original_word ?word ?root)
 (dir_name-file_name-rule_name-id-wsd_root_mng ?d_n ?f_n ?rule_name   ?id  ?)
 (id-HM-source ?id ?h_mng ?src)
 =>
 (retract ?f)
 (printout t crlf "Meaning has been generated from WSD (" ?d_n ") (defined as root meaning)"crlf crlf)
 (printout t "File_name :: "?f_n "      Rule_name :: " ?rule_name "        Meaning :: \"" ?h_mng "\"" crlf crlf)
 (assert(get_expected_mng ?id ?original_word ?word ?root))
 )


 (defrule hindi_mng_src2
 (declare (salience 79))
 ?f<-(get_rule_fired ?id ?original_word ?word ?root)
 (id-HM-source ?id ?h_mng ?src)
 =>
 (retract ?f)
 (if (or (eq ?src WSD_compound_phrase_mng)(eq ?src WSD_verb_phrase_mng)) then
 (assert (hmng_frm_wsd_mwe-src ?id ?original_word ?word ?root ?src))
 else (if (or (eq ?src WSD_root_mng)(eq ?src WSD_word_mng)) then
 (assert (hmng_frm_wsd ?id ?original_word ?word ?root ))
 else (if (eq ?src Default) then
 (printout t crlf "Meaning has been generated from default database (Shabdanjali)" crlf)
 (printout t "Meaning :: \"" ?h_mng "\"" crlf crlf)
 (assert(get_expected_mng ?id ?original_word ?word ?root))
 else (if (eq ?src LWG) then
 (printout t crlf "This word is part of LWG (Local word grouper)" crlf)
 (printout t "Exiting WSD debugging ............" crlf)
; (exit)
 else (if (or (eq ?src Database_compound_phrase_root_mng) (eq ?src Database_compound_phrase_root_mng)) then
 (printout t crlf "This word is part of \"Compound_Phrase\"" crlf)
 (printout t "Meaning :: \"" ?h_mng "\"" crlf crlf)
 (assert (hmng_frm_db_mwe-src ?id ?original_word ?word ?root ?src))
 else 
 (printout t crlf "Meaning has been generated from " ?src crlf)
 (printout t "Meaning :: \"" ?h_mng "\"" crlf crlf)
 (assert(get_expected_mng ?id ?original_word ?word ?root)))))))
 )


 (defrule expected_mng
 (declare (salience 70)) 
 ?f<-(get_expected_mng ?id ?original_word ?word ?root)
 =>
 (retract ?f)
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/"?word".clp 1>jnk2 2>error")
 (if (neq ?word ?root) then
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/"?root".clp 1>>jnk2 2>error"))
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?word".clp 1>>jnk2 2>error")
 (if (neq ?word ?root) then
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?root".clp 1>>jnk2 2>error"))
 (open "jnk2" fp2 "r")
 (if (eq (read fp2) EOF) then
     (printout t crlf "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
     (printout t      "There is no clip file defined for the word"     )
     (printout t crlf "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
;     (close fp12)(remove jnk1)
     (assert (ask_whether_to_write_a_rule ?id ?original_word ?word ?root))
 else
 (printout  t crlf "What is your expected meaning" crlf)
 (bind ?reply (read))
 (assert (expected_mng ?id ?original_word ?word ?root ?reply)))
 (close fp2)(remove jnk22)
 )

 (defrule expected_mng1
 (declare (salience 70))
 ?f<-(expected_mng ?id ?original_word ?word ?root ?exp_mng)
 =>
 (retract ?f)
 (printout  t crlf "Do you want all possible meanings of the word(y/n)" crlf)
 (bind ?reply (read))
 (if (eq ?reply y) then
      (assert (print_all_possible_meanings ?id ?original_word ?word ?root ?exp_mng))
 else (if (eq ?reply n) then
      (assert (print_only_expected_meaning ?id ?original_word ?word ?root ?exp_mng))
 else
      (printout t "Legal answers are (y/n)" crlf)
      (assert (expected_mng ?id ?original_word ?word ?root ?exp_mng))
     )
 )
 )

 (defrule print_all_possible_meanings
 ?f<-(print_all_possible_meanings ?id ?original_word ?word ?root ?exp_mng)
 =>
 (retract ?f)
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/"?original_word".clp 1>jnk 2>error")
 (if (neq ?word ?original_word) then
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/"?word".clp 1>>jnk 2>error"))
 (if (neq ?word ?root) then
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/"?root".clp 1>>jnk 2>error"))
 
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?word".clp 1>>jnk 2>error")
 (if (neq ?word ?original_word) then
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?word".clp 1>>jnk 2>error"))
 (if (neq ?word ?root) then
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?root".clp 1>>jnk 2>error"))
 (system "grep -B2 \" " ?exp_mng"))\" jnk >jnk1")
 (open "jnk1" fp1 "r")
  (if (eq (read fp1) EOF) then
     (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
     (printout t crlf "There is no rule defined with the expected meaning" crlf crlf)
     (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
     (assert (get-path ?id ?original_word ?word ?root))
  )
 (close fp1)(remove jnk1)
 (open "jnk" fp "r")
 (printout t "Rules matching the word are ::" crlf)
 (printout t "<=====================================>" crlf)
 (system "cat jnk")
 (close fp)
 (remove jnk)
 (assert (get-path ?id ?original_word ?word ?root))
 ) 

 (defrule print_only_expected_meaning
 ?f<-(print_only_expected_meaning ?id ?original_word ?word ?root ?exp_mng)
 =>
 (retract ?f)
 (system "grep -E \"(defrule|salience|assert|;)\"  $HOME_anu_provisional_wsd_rules/"?original_word".clp | grep -B2  \" " ?exp_mng"))\" >jnk 2>error" )
 (if (neq ?word ?original_word) then
 (system "grep -E \"(defrule|salience|assert|;)\"  $HOME_anu_provisional_wsd_rules/"?word".clp | grep -B2  \" " ?exp_mng"))\" >>jnk 2>error" )
 )
 (if (neq ?word ?root) then
 (system "grep -E \"(defrule|salience|assert|;)\"  $HOME_anu_provisional_wsd_rules/"?root".clp | grep -B2 \" " ?exp_mng"))\" >>jnk 2>error"))
  
  (system "grep -E \"(defrule|salience|assert|;)\"  $HOME_anu_test/WSD/wsd_rules/"?original_word".clp | grep -B2 \" " ?exp_mng"))\" >>jnk 2>error")
 (if (neq ?word ?original_word) then
 (system "grep -E \"(defrule|salience|assert|;)\"  $HOME_anu_test/WSD/wsd_rules/"?word".clp | grep -B2 \" " ?exp_mng"))\" >>jnk 2>error")
 )
 (if (neq ?word ?root) then
 (system "grep -E \"(defrule|salience|assert|;)\"  $HOME_anu_test/WSD/wsd_rules/"?root".clp | grep -B2 \" " ?exp_mng"))\" >>jnk 2>error")
)

   (open "jnk" file "r")
   
    (if (eq (read file) EOF) then
       (close file) (remove jnk)
       (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
       (printout t crlf "There is no rule defined with the expected meaning" crlf crlf)
       (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
       (assert (search_for_other_meaning ?id ?original_word ?word ?root ?exp_mng)) 
    else
     (printout t "Rules matching Expected meaning are ::" crlf)
     (printout t "<=====================================>" crlf)
     (system "cat jnk")
     (close file)
     (remove jnk)
     (assert (get-path ?id ?original_word ?word ?root)))
)

 (defrule search_for_other_meaning
 ?f<-(search_for_other_meaning ?id ?original_word ?word ?root ?exp_mng)
 =>
 (retract ?f)
   (printout t "Do you want to search for other meaning(y/n)" crlf)
   (bind ?reply (read))
        (if (eq ?reply y) then
         (assert(get_expected_mng ?id ?original_word ?word ?root))
        else (if (eq ?reply n) then
          (printout t "Exiting WSD debugging ............" crlf)
          ;(exit)
       else
          (assert(search_for_other_meaning ?id ?original_word ?word ?root ?exp_mng))
          (printout t "Legal answers are \"(y/n)\" " crlf))
       )
 )

 (defrule ask_whether_to_write_a_rule
 ?f<-(ask_whether_to_write_a_rule ?id ?original_word ?word ?root)
  =>
 (retract ?f)
 (printout t "Do you want to write a rule(y/n)" crlf)
 (bind ?reply (read))
        (if (eq ?reply y) then
        (assert (print_the_procedure_how_to_write_a_rule ?id ?original_word ?word ?root))
        else (if (eq ?reply n) then
        (printout t "Exiting WSD debugging ............" crlf)
;        (exit)
       else
          (assert(ask_whether_to_write_a_rule ?id ?original_word ?word ?root ))
          (printout t "Legal answers are \"(y/n)\" " crlf))
       )
 )

 (defrule print_the_procedure_how_to_write_a_rule
 ?f<-(print_the_procedure_how_to_write_a_rule ?id ?original_word ?word ?root)
 =>
 (retract ?f)
 (printout t  "STEP1::  To create or open a particular clip file type the following command :" crlf)
 (printout t  "======" crlf)
 (printout t  " 	(system \"gvim -o \" ?*provisional_wsd_path* ""/" "<filename>.clp)" crlf)
 (printout t  "		For Eg:- CLIPS> (system \"gvim -o \"  ?*provisional_wsd_path* ""/"  "be.clp)" crlf crlf)
 (printout t  "STEP2::  After writing the rule save and close the file. " crlf)
 (printout t  "======" crlf)
 (printout t  "STEP3::  To check the syntax error in the rule; please load the file using the following command :" crlf)
 (printout t  "======" crlf)
 (printout t  "		(load* (str-cat ?*provisional_wsd_path* ""/" "<filename.clp))" crlf) 
 (printout t  "		For Eg:- CLIPS> (load* (str-cat ?*provisional_wsd_path* ""/" "be.clp))" crlf crlf)
 (printout t  "STEP4::  If the return value is \"TRUE\" it implies there is no syntax error in the rule else,  identify and co "crlf       "======       -rrect the error and repeat the above three STEPS "crlf crlf)
 (printout t "STEP5::   Run the sentence again in Anusaraka to see the effect of the above rule ." crlf) 
 (printout t  "======" crlf)
  )

 
  
 (defrule display_rule
 ?f<-(get-path ?id ?original_word ?word ?root) 
 =>
 (printout t crlf crlf "The following command is used to see the matches of a rule" crlf)
 (printout t "==========================================================" crlf)
 (printout t "(matches <rule_name>) "crlf crlf)
 
 (printout t "The following command is used to Display the text of a given rule" crlf)
 (printout t "=================================================================" crlf)
 (printout t "(ppdefrule <rule_name>) "crlf crlf)

 (printout t  "The following command is used to open a particular clip file" crlf)
 (printout t "==========================================================" crlf)
 (printout t "(system \"gvim -o path_to_clp_file\") "crlf)
 (printout t "For e.g; CLIPS> (system \"gvim -o $HOME_anu_test/WSD/wsd_rules/eat.clp\")" crlf crlf)
 
 (printout t "The following command is used to exit" crlf)
 (printout t "=====================================" crlf)
 (printout t "(exit) "crlf crlf)

 

 (bind ?orig_word_file (str-cat ?*path* "/WSD/wsd_rules/" ?original_word .clp))
 (bind ?orig_word_file1 (str-cat ?*provisional_wsd_path* "/" ?original_word .clp))
 (bind ?word_file (str-cat ?*path* "/WSD/wsd_rules/" ?word .clp))
 (bind ?word_file1 (str-cat ?*provisional_wsd_path* "/" ?word .clp))
 (bind ?root_file (str-cat ?*path* "/WSD/wsd_rules/" ?root .clp))
 (bind ?root_file1 (str-cat ?*provisional_wsd_path* "/" ?root .clp))

  (if (and (neq (load* ?orig_word_file1) FALSE)(halt)) then
      else (if (and (neq (load* ?word_file1) FALSE)(halt)) then
            else (if (and(neq (load* ?root_file1) FALSE)(halt)) then
                 else(if (and (neq (load* ?orig_word_file) FALSE)(halt)) then
                      else (if (and(neq (load* ?word_file) FALSE)(halt))  then
                            else (if (and(neq (load* ?root_file) FALSE)(halt)) then
                                  else
                                  (printout t "There is no rule file with that word." crlf)
                             ))))))
 )

 
 (run)
