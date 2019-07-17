
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
 (assert (parser_id-cat))
 )
 ;----------------------------------------COMMON RULES FOR ALL PARSERS------------------------------------------------------
; Handling this rule in wsd_meaning.clp
; Commented by Roja (03-05-13)
; ; Removed root_consistency_check.clp file and added its rule here.
; ; Rule re-modified and added here by Roja(07-04-11)
; ; He saw the "BROKEN" window. BROKEN windows need to be replaced
; ; if category is adjective and it also has verb with suf en/ing from morph then take the morph (root,suf,num) of verb
; ; He handed his son a beautiful wrapped gift box. (here morph does'nt have analysis with category adjective (word--wrapped))
; ; HERE IN THIS RULE WHOLE MORPH INFORMATION OF THE WORD GETS CHANGED.
; (defrule morph_root
; (declare (salience 200))
; (parser_id-cat_coarse  ?pid adjective)
; (parserid-wordid  ?pid ?wid)
; ?f0<-(morph_analysis_to_be_choosen ?wid)
; (id-original_word ?wid  ?word&~left); Some people write with their left hand .
;;(word-morph (original_word  ?word)(root ?root1)(category adjective)(suffix ?suf1)(number ?num1));Commented by Mahalaxmi(6-10-09) suggested by Chaitanya sir.
; (word-morph (original_word  ?word)(root ?root)(category  verb)(suffix ?suf)(number ?num))
; (test (or (eq ?suf en)(eq ?suf ing))) 
; =>
;   (retract ?f0)
;   ;(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root" adjective "?suf1"  "?num1 ")" crlf)
;   (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root" adjective "?suf"  "?num ")" crlf)
;   (printout ?*root_fp* "(parser_id-root " ?pid " " ?root ")" crlf)
; )
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
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?word" PropN   -     -)" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?word")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (5th Jan 2013) Suggested by Chaitanya Sir
 ;if both categories are diff : if parser category is adverb and morph cat is I then consider the I root
 ;But only a few years [later], in 1938, Hahn and Meitner discovered the phenomenon of neutron-induced fission of uranium, which would serve as the basis of nuclear power reactors and nuclear weapons.
 (defrule diff_cat_with_adverb
 (declare (salience 110))
 (parser_id-cat_coarse ?pid adverb)
 (parserid-wordid  ?pid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word  ?word)(root ?root)(category  I)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0)
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root"  adverb "?suf" " ?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; if parser cat and morph cat differ and morph cat is 'adjective' with suf 'er' or 'est' then taking morph info
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
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root"  "?cat" "?suf" " ?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root")"crlf)
 )
;;-----------------------------------------------------------------------------------------------------------------------
 ;When suffixes are different and if parser cat and morph cat is same and suf is ing
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
	(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root" verb "?suf " "?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?root")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;When morph word and original word are same but category differs
 (defrule morph_root-parser_cat
 (declare (salience 60))
 ?f1<-(parser_id-cat_coarse ?pid ?cat1)
 (parserid-wordid  ?pid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root&~-)(category ?cat)(suffix ?suf)(number ?num))
 (test (neq ?cat ?cat1))
 ?f<-(morph_analysis_to_be_choosen ?wid)  
 =>
        (retract ?f ?f1)
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?root" "?cat1" "?suf " "?num")" crlf)
        (printout ?*root_fp* "(parser_id-root "?pid" "?root")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Modified by Shirisha manju (15-06-2016) Suggested by Chaitanya Sir -- to get orgiginal word insteadof '-' and added warning message
 ;Added by Roja(04-03-13)
 ;Default rule . If original word and morph original word mismatches then assign "-" for root.
 ;Note: As of now there is no example sentence.For testing purpose comment (gram flour) pattern in morph.pl
 (defrule default_rule
 (declare (salience -100))
 (parserid-wordid ?pid ?id)
 ?f0<-(morph_analysis_to_be_choosen ?id)
 (id-original_word ?id ?org_word)
 (word-morph (original_word ?m_org_word)(morph_word ?morph_wrd)(root ?root)(category ?cat)(suffix ?suf)(number ?num))
 (test (neq ?org_word ?m_org_word))
 =>
	(retract ?f0)
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?pid"  "?org_word"  -  -   -)" crlf)
        (printout ?*root_fp*  "(parser_id-root "?pid" "?org_word ")" crlf)
	(if (eq (integerp (member$ ?org_word (create$ - ))) FALSE) then
		(printout t "Warning: root missing for " ?org_word crlf)
	)
 )
 ;-------------------------------------ADDITIONAL RULES FOR OPEN LOGOS PARSER------------------------------------------------
 ;Added by Roja (31-03-11)
 ;The blacksmith made an assay of iron ore.
 (defrule samAsa_root
 (declare (salience 60))
 (parserid-wordid ?pid $?ids)
 (id-original_word ?id ?word)
 (parser_id-cat_coarse ?pid ?cat)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root&~-)(category ?cat1)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?id)
 (test (member$ ?id $?ids))
 =>
        (retract ?f0)
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
