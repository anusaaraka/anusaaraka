
 (defglobal ?*root_fp* = rt_fp)
 (defglobal ?*pre_morph_fp* = pre_fp)

 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 (deffacts dummy_morph_info
 (id-number-src)
 (id-cat)
 (parser_id-cat_coarse)
 (parserid-wordid )
 (id-original_word)
 (morph_analysis_to_be_choosen)
 (ol_res_id-word_id-word)
 (current_id-group_members)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
  ; Anusaaraka shall allow users to access text in any Indian language after translation from the source language (i.e English or any other regional Indian language)
  (defrule that_is_rule
  (parser_id-cat_coarse ?pid ?cat)
  (parserid-wordid  ?pid ?wid)
  (id-original_word ?wid  ABBRThatis)
  (word-morph (original_word ABBRThatis)(root ?root)(category  ?cat)(suffix ?suf)(number ?num))
  ?f0<-(morph_analysis_to_be_choosen ?wid)
  =>
        (retract ?f0)
        (assert (parser_id-root ?pid ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root"  "?cat " "?suf" "?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root")"crlf)
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
 ; if link cat and morph cat differ and morph cat is adjective and suf is er
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
 ;Below five rules Added newly for OL by Roja.
 ;The blacksmith made an assay of iron ore.
 (defrule samAsa_root
 (declare (salience 60))
 (parserid-wordid ?pid ?id1 ?id2)
 (id-original_word ?id1 ?word1)
 (id-original_word ?id2 ?word2)
 (parser_id-cat_coarse ?pid ?cat)
 (word-morph (original_word ?word1)(morph_word ?morph_wrd1)(root ?root1)(category ?cat1)(suffix ?suf1)(number ?num1))
 (word-morph (original_word ?word2)(morph_word ?morph_wrd2)(root ?root2)(category ?cat2)(suffix ?suf2)(number ?num2))
 ?f0<-(morph_analysis_to_be_choosen ?id1)
 ?f1<-(morph_analysis_to_be_choosen ?id2)
 =>
        (retract ?f0 ?f1)
        (assert (parser_id-root  ?pid  ?root1 ?root2))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root1  " "  ?root2"  "?cat" "?suf1 " " ?num1 ")" crlf)
       (printout ?*root_fp*  "(parser_id-root "?pid" "?root1   " " ?root2")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
;Some people take a lot of time to acclimatize themselves to the new environment.
 (defrule samAsa_root_2
 (declare (salience 60))
 (parserid-wordid ?pid ?id1 ?id2 ?id3)
 (id-original_word ?id1 ?word1)
 (id-original_word ?id2 ?word2)
 (id-original_word ?id3 ?word3)
 (parser_id-cat_coarse ?pid ?cat)
 (word-morph (original_word ?word1)(morph_word ?morph_wrd1)(root ?root1)(category ?cat1)(suffix ?suf1)(number ?num1))
 (word-morph (original_word ?word2)(morph_word ?morph_wrd2)(root ?root2)(category ?cat2)(suffix ?suf2)(number ?num2))
 (word-morph (original_word ?word3)(morph_word ?morph_wrd3)(root ?root3)(category ?cat3)(suffix ?suf3)(number ?num3))
 ?f0<-(morph_analysis_to_be_choosen ?id1)
 ?f1<-(morph_analysis_to_be_choosen ?id2)
 ?f2<-(morph_analysis_to_be_choosen ?id3)
 =>
        (retract ?f0 ?f1 ?f2)
        (assert (parser_id-root  ?pid  ?root1 ?root2 ?root3))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root1 " "?root2" "?root3 " "?cat" "?suf1 " " ?num1 ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root1 " "?root2" "?root3")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;He gave up his lucrative law practice for the sake of the country.
 (defrule samAsa_root_3
 (declare (salience 60))
 (parserid-wordid ?pid ?id1 ?id2 ?id3 ?id4)
 (id-original_word ?id1 ?word1)
 (id-original_word ?id2 ?word2)
 (id-original_word ?id3 ?word3)
 (id-original_word ?id4 ?word4)
 (parser_id-cat_coarse ?pid ?cat)
 (word-morph (original_word ?word1)(morph_word ?morph_wrd1)(root ?root1)(category ?cat1)(suffix ?suf1)(number ?num1))
 (word-morph (original_word ?word2)(morph_word ?morph_wrd2)(root ?root2)(category ?cat2)(suffix ?suf2)(number ?num2))
 (word-morph (original_word ?word3)(morph_word ?morph_wrd3)(root ?root3)(category ?cat3)(suffix ?suf3)(number ?num3))
 (word-morph (original_word ?word4)(morph_word ?morph_wrd4)(root ?root4)(category ?cat4)(suffix ?suf4)(number ?num4))
 ?f0<-(morph_analysis_to_be_choosen ?id1)
 ?f1<-(morph_analysis_to_be_choosen ?id2)
 ?f2<-(morph_analysis_to_be_choosen ?id3)
 ?f3<-(morph_analysis_to_be_choosen ?id4)
 =>
        (retract ?f0 ?f1 ?f2 ?f3)
        (assert (parser_id-root  ?pid  ?root1 ?root2 ?root3 ?root4))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root1 " "?root2" "?root3 " "?root4 "  "?cat" "?suf1 " " ?num1 ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root1 " "?root2" "?root3" "?root4")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
;Keep on the right side of the road.
(defrule samAsa_root_3
 (declare (salience 60))
 (parserid-wordid ?pid ?id1 ?id2 ?id3 ?id4 ?id5)
 (id-original_word ?id1 ?word1)
 (id-original_word ?id2 ?word2)
 (id-original_word ?id3 ?word3)
 (id-original_word ?id4 ?word4)
 (id-original_word ?id5 ?word5)
 (parser_id-cat_coarse ?pid ?cat)
 (word-morph (original_word ?word1)(morph_word ?morph_wrd1)(root ?root1)(category ?cat1)(suffix ?suf1)(number ?num1))
 (word-morph (original_word ?word2)(morph_word ?morph_wrd2)(root ?root2)(category ?cat2)(suffix ?suf2)(number ?num2))
 (word-morph (original_word ?word3)(morph_word ?morph_wrd3)(root ?root3)(category ?cat3)(suffix ?suf3)(number ?num3))
 (word-morph (original_word ?word4)(morph_word ?morph_wrd4)(root ?root4)(category ?cat4)(suffix ?suf4)(number ?num4))
 (word-morph (original_word ?word5)(morph_word ?morph_wrd5)(root ?root5)(category ?cat5)(suffix ?suf5)(number ?num5))
 ?f0<-(morph_analysis_to_be_choosen ?id1)
 ?f1<-(morph_analysis_to_be_choosen ?id2)
 ?f2<-(morph_analysis_to_be_choosen ?id3)
 ?f3<-(morph_analysis_to_be_choosen ?id4)
 ?f4<-(morph_analysis_to_be_choosen ?id5)
 =>
        (retract ?f0 ?f1 ?f2 ?f3 ?f4)
        (assert (parser_id-root  ?pid  ?root1 ?root2 ?root3 ?root4 ?root5))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root1 " "?root2" "?root3 " "?root4 " "?root5 " "?cat" "?suf1 " " ?num1 ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root1 " "?root2" "?root3" "?root4" "?root5")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Buying of shares was brisk on Wall Street today.
 (defrule PropN_rule1
 (declare (salience 120))
 (parser_id-cat_coarse ?pid PropN)
 (parserid-wordid  ?pid ?wid1 ?wid2)
 (id-original_word ?wid1 ?word1)
 (id-original_word ?wid2 ?word2)
 ?f0<-(morph_analysis_to_be_choosen ?wid1)
 ?f1<-(morph_analysis_to_be_choosen ?wid2)
 =>
        (retract ?f0 ?f1)
        (assert (parser_id-root ?pid ?word1))
        (assert (parser_id-root ?pid ?word2))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?word1" "?word2" PropN   -     -)" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?word1" "?word2")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule close_root_file
 (declare (salience -1000))
 =>
	(close ?*pre_morph_fp*)
	(close ?*root_fp*)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
