
 (defglobal ?*root_fp* = rt_fp)
 (defglobal ?*pre_morph_fp* = pre_fp)

 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 (deffunction never-called ()
 (assert (id-number-src))
 (assert (id-cat))
 (assert (parser_id-cat_coarse))
 (assert (parserid-wordid ))
 (assert (id-original_word))
 (assert (morph_analysis_to_be_choosen))
 (assert (ol_res_id-word_id-word))
 (assert (current_id-group_members))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; Anusaaraka shall allow users to access text in any Indian language after translation from the source language (i.e English or any other regional Indian language)
  (defrule that_is_rule
  (id-original_word ?wid  i.e.);Modified ABBRThatis to i.e.  by Roja(18-07-12)
  (parserid-wordid  ?pid ?wid)
  (parser_id-cat_coarse ?pid ?cat)
  (word-morph (original_word i.e.)(root ?root)(category  ?cat)(suffix ?suf)(number ?num))
  ?f0<-(morph_analysis_to_be_choosen ?wid)
  =>
        (retract ?f0)
        (assert (parser_id-root ?pid ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root"  "?cat " "?suf" "?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; Removed root_consistency_check.clp file and added its rule here.
 ; Rule re-modified and added here by Roja(07-04-11)
 ; He saw the "BROKEN" window. BROKEN windows need to be replaced
 ; if category is adjective and it also has verb with suf en/ing from morph then take the morph (root,suf,num) of verb
 ; He handed his son a beautiful wrapped gift box . (here morph does'nt have analysis with category adjective (word--wrapped))
 ;HERE IN THIS RULE WHOLE MORPH INFORMATION OF THE WORD GETS CHANGED.
 (defrule morph_root
 (declare (salience 200))
 (parser_id-cat_coarse  ?pid adjective)
 (parserid-wordid  ?pid ?wid)
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 (id-original_word ?wid  ?word&~left); Some people write with their left hand .
;(word-morph (original_word  ?word)(root ?root1)(category adjective)(suffix ?suf1)(number ?num1));Commented by Mahalaxmi(6-10-09) suggested by Chaitanya sir.
 (word-morph (original_word  ?word)(root ?root)(category  verb)(suffix ?suf)(number ?num))
 (test (or (eq ?suf en)(eq ?suf ing))) 
 =>
   (retract ?f0)
   ;(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root" adjective "?suf1"  "?num1 ")" crlf)
   (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root" adjective "?suf"  "?num ")" crlf)
   (printout ?*root_fp* "(parser_id-root " ?pid " " ?root ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule same_cat
 (declare (salience 150))
 (parser_id-cat_coarse ?pid ?cat)
 (parserid-wordid  ?pid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root)(category ?cat)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0)
        (assert (parser_id-root ?pid ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root" "?cat " "?suf" " ?num")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;I biked Johnson Creek .
 ;Bushes are visiting us today   (number info yet to be taken)
 (defrule PropN_rule
 (declare (salience 120))
 (parser_id-cat_coarse ?pid PropN)
 (parserid-wordid  ?pid ?wid)
 (id-original_word ?wid ?word)
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0)
        (assert (parser_id-root ?pid ?word))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?word" PropN   -     -)" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?word")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; if ol cat and morph cat differ and morph cat is adjective and suf is er
 ; He talked longer than usual .
 (defrule diff_cat_suf_er_est_adj
 (declare (salience 100))
 (parser_id-cat_coarse ?pid ?cat)
 (parserid-wordid  ?pid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word  ?word)(root ?root)(category  ?cat1)(suffix ?suf)(number ?num))
 (test (and (neq ?cat ?cat1)(eq ?cat1 adjective)))
 (test (or (eq ?suf er)(eq ?suf est)))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0)
        (assert (parser_id-root ?pid ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root"  "?cat" "?suf" " ?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; if suffixes are different and if link cat and morph cat is same and suf is ing
 (defrule diff_cat_suf_ing
 (declare (salience 90))
 (parser_id-cat_coarse ?pid ?cat)
 (parserid-wordid  ?pid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word  ?word)(root ?root)(category  ?cat1)(suffix ?suf)(number ?num))
 (test (and (neq ?cat ?cat1)(eq ?suf ing)))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0)
        (assert (parser_id-root ?pid ?root))
	(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root" verb "?suf " "?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; if suffixes are different and if link cat and morph cat differ and morph cat is I
 (defrule diff_cat_and_I
 (declare (salience 90))
 (parser_id-cat_coarse ?pid ?cat)
 (parserid-wordid  ?pid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word  ?word)(root ?root)(category  ?cat1)(suffix ?suf)(number ?num))
 (test (and (neq ?cat ?cat1)(eq ?cat1 I)))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
	(retract ?f0)
	(assert (parser_id-root ?pid ?root))
	(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root"  "?cat" "?suf " "?num ")" crlf)
	(printout ?*root_fp*  "(parser_id-root "?pid" "?root")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;default link category
 (defrule default-linkid_root
 (declare (salience 60))
 ?f1<-(parser_id-cat_coarse ?pid ?cat1)
 (parserid-wordid  ?pid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root)(category ?cat)(suffix ?suf)(number ?num))
 (morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f1)
        (assert (parser_id-root ?pid ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root" "?cat1" "?suf " "?num")" crlf)
        (printout ?*root_fp* "(parser_id-root "?pid" "?root")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;default Pos root
 (defrule POS_default_root
 (declare (salience 30))
 (parser_id-cat_coarse ?pid ?cat)
 (parserid-wordid ?pid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root)(category ?cat1)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
	(retract ?f0)
	(assert (parser_id-root ?wid ?root))
	(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root"  "?cat1" "?suf " "?num ")" crlf)
	(printout ?*root_fp*  "(parser_id-root  "?pid" "?root")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Added by Roja (31-03-11)
 ;The blacksmith made an assay of iron ore.
 (defrule samAsa_root
 (declare (salience 60))
 (parserid-wordid ?pid $?ids)
 (id-original_word ?id ?word)
 (parser_id-cat_coarse ?pid ?cat)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root)(category ?cat1)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?id)
 (test (member$ ?id $?ids))
 =>
        (retract ?f0)
        (assert (parser_id-root  ?pid  ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root "   "?cat" "?suf " " ?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Rule re-modified by Roja (31-3-11)
 ;Buying of shares was brisk on Wall Street today.
 (defrule PropN_rule1
 (declare (salience 120))
 (parserid-wordid ?pid $?ids)
 (id-original_word ?id ?word)
 (parser_id-cat_coarse ?pid PropN)
 ?f0<-(morph_analysis_to_be_choosen ?id)
 (test (member$ ?id $?ids))
 =>
        (retract ?f0)
        (assert (parser_id-root  ?pid  ?word))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?word "   PropN   -   -)" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?word ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule close_root_file
 (declare (salience -1000))
 =>
	(close ?*pre_morph_fp*)
	(close ?*root_fp*)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
