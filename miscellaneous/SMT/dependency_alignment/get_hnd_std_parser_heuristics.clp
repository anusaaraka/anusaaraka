; This file is added by Shirisha Manju

(defglobal ?*s_file* = d_fp)
(defglobal ?*hnd_rel_debug_f* = h_rel_debug)

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (multislot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))

(deftemplate parser_align (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))
;---------------------------------------------------------------------------------------------
(defrule align_root
(declare (salience 1000))
(rel_name-grouped_rel_hids root 0 $? ?mverb) 
(rel_name-grouped_rel_eids root 0 $? ?averb)
(manual_id-word ?mverb ?mw)
(id-word ?averb ?aw)
=>
	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb root align_root 1))
	(printout ?*hnd_rel_debug_f* "(rel_name-eng_h-hnd_h-eng_c-hnd_c	root	0	0	"?aw"	" ?mw" )" crlf)
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_towards
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:towards ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:kI_ora ?mverb $? ?mid)
(manual_id-word ?mverb ?mw)
(id-word ?averb ?aw)
(manual_id-word ?mid ?mw1)
(id-word ?aid ?aw1)
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 1))
        (printout ?*hnd_rel_debug_f* "(rel_name-eng_h-hnd_h-eng_c-hnd_c "?r"  " ?aw"  "?mw"   "?aw1"  " ?mw1 " )" crlf)
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_about
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:about ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:ke_bAre_meM ?mverb $? ?mid)
(manual_id-word ?mverb ?mw)
(id-word ?averb ?aw)
(manual_id-word ?mid ?mw1)
(id-word ?aid ?aw1)
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 1))
        (printout ?*hnd_rel_debug_f* "(rel_name-eng_h-hnd_h-eng_c-hnd_c "?r"  " ?aw"  "?mw"   "?aw1"  " ?mw1 " )" crlf)
)
;---------------------------------------------------------------------------------------------
;The inquiring and imaginative human mind has responded to the wonder and awe [of] [nature] in different ways.
;[prakqwi ke] Ese AScaryoM evaM vismayoM ke prawi mAnava kA kalpanASIla waWA anveRI maswiRka viBinna prakAra se apanI prawikriyAez vyakwa karawA rahA hE.
(defrule align_nmod_of_apos
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:of|nmod:apos ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:ke|nmod:kA ?mverb $? ?mid)
(manual_id-word ?mverb ?mw)
(id-word ?averb ?aw)
(manual_id-word ?mid ?mw1)
(id-word ?aid ?aw1)
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 1))
        (printout ?*hnd_rel_debug_f* "(rel_name-eng_h-hnd_h-eng_c-hnd_c "?r"  " ?aw"  "?mw"   "?aw1"  " ?mw1 " )" crlf)
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_with_since
(declare (salience 900))
;(anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ? ? 1)
(rel_name-grouped_rel_eids  ?r&nmod:with|nmod:since|nmode:from ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:se ?mverb $? ?mid)
(manual_id-word ?mverb ?mw)
(id-word ?averb ?aw)
(manual_id-word ?mid ?mw1)
(id-word ?aid ?aw1)
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod1 1))
        (printout ?*hnd_rel_debug_f* "(rel_name-eng_h-hnd_h-eng_c-hnd_c "?r"  " ?aw"  "?mw"   "?aw1"  " ?mw1 " )" crlf)
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_in
(declare (salience 900))
;(anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ? ? 1)
(rel_name-grouped_rel_eids  ?r&nmod:in ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:meM ?mverb $? ?mid)
(manual_id-word ?mverb ?mw)
(id-word ?averb ?aw)
(manual_id-word ?mid ?mw1)
(id-word ?aid ?aw1)
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod1 1))
        (printout ?*hnd_rel_debug_f* "(rel_name-eng_h-hnd_h-eng_c-hnd_c "?r"  " ?aw"  "?mw"   "?aw1"  " ?mw1 " )" crlf)
)
;---------------------------------------------------------------------------------------------
;The inquiring and imaginative human mind has responded [to] the wonder and [awe] of nature in different ways.
;prakqwi ke Ese AScaryoM evaM [vismayoM ke prawi] mAnava kA kalpanASIla waWA anveRI maswiRka viBinna prakAra se apanI prawikriyAez vyakwa karawA rahA hE.
(defrule align_nmod_to
(declare (salience 900))
;(anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ? ? 1)
(rel_name-grouped_rel_eids  ?r&nmod:to ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:ke_prawi|nmod:ke_lie ?mverb $? ?mid)
(manual_id-word ?mverb ?mw)
(id-word ?averb ?aw)
(manual_id-word ?mid ?mw1)
(id-word ?aid ?aw1)
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod1 1))
        (printout ?*hnd_rel_debug_f* "(rel_name-eng_h-hnd_h-eng_c-hnd_c "?r"  " ?aw"  "?mw"   "?aw1"  " ?mw1 " )" crlf)
)
;---------------------------------------------------------------------------------------------
(defrule align_conj
(declare (salience 900))
(rel_name-grouped_rel_eids cc ?aid ?ac)
(rel_name-grouped_rel_hids cc ?mid ?mc)
(id-word ?aid ?aw)
(manual_id-word ?mid ?mw)
(database_info (root ?aw) (meaning ?mw))
=>
	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid cc align_conj 1))
	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?ac ?mc cc align_conj 1))
)
;---------------------------------------------------------------------------------------------
;The inquiring [and] [imaginative] human mind has responded to the wonder and awe of nature in different ways.
;prakqwi ke Ese AScaryoM evaM vismayoM ke prawi mAnava kA [kalpanASIla] [waWA] anveRI maswiRka viBinna prakAra se apanI prawikriyAez vyakwa karawA rahA hE.
(defrule align_conj1
(declare (salience 850))
(rel_name-grouped_rel_eids cc ?aid ?ac)
(rel_name-grouped_rel_hids cc ?mid ?mc)
(id-word ?aid ?aw)
(manual_id-word ?mid ?mw)
(not (database_info (root ?aw) (meaning ?mw)))
(rel_name-grouped_rel_eids ?r ? ?aid1)
(test (eq (sub-string 1 4 ?r) "conj"))
(rel_name-grouped_rel_hids conj ? ?mid1)
(id-word ?aid1 ?aw1)
(database_info (root ?aw1) (meaning ?mw))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid1 ?mid cc align_conj1 1))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?ac ?mc cc align_conj1 1))
)
;---------------------------------------------------------------------------------------------
;The inquiring and imaginative human mind has responded to the wonder and awe of nature in [different] ways.
;prakqwi ke Ese AScaryoM evaM vismayoM ke prawi mAnava kA kalpanASIla waWA anveRI maswiRka [viBinna] prakAra se apanI prawikriyAez vyakwa karawA rahA hE.
(defrule align_edges
(declare (salience 95))
(anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ? ? 1)
(rel_name-grouped_rel_eids  ?rel ?averb $? ?aid)
(rel_name-grouped_rel_hids ?rel ?mverb $? ?mid)
(manual_id-word ?mverb ?mw)
(id-word ?averb ?aw)
(manual_id-word ?mid ?mw1)
(id-word ?aid ?aw1)
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid1 ?mid1 ? align_edges1 ?))
(not (man_id_decided ?mid))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?rel align_edges 1))
	(printout ?*hnd_rel_debug_f* "(rel_name-eng_h-hnd_h-eng_c-hnd_c	"?rel"	" ?aw"	"?mw"	"?aw1"	" ?mw1 " )" crlf)
)
;---------------------------------------------------------------------------------------------
(defrule align_edges1
(declare (salience 90))
(rel_name-grouped_rel_eids  ?rel ?aid $? ?aid1)
(rel_name-grouped_rel_hids ?rel ?mid $? ?mid1)
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid1 ? align_nmod ?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid1 ? align_nmod1|align_conj|align_conj1 ?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid ? align_edges|align_root ?))
(not (man_id_decided ?mid1))
(manual_id-word ?mid1 ?mw1)
(id-word ?aid1 ?aw1)
(manual_id-word ?mid ?mw)
(id-word ?aid ?aw)
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid1 ?mid1 ?rel align_edges1 1))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?rel align_edges1 1))
	(printout ?*hnd_rel_debug_f* "(rel_name-eng_h-hnd_h-eng_c-hnd_c	"?rel"	" ?aw"	"?mw"	"?aw1"	" ?mw1 " )" crlf)
)
;---------------------------------------------------------------------------------------------
(defrule check_root_align
(declare (salience 50))
(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?)
(rel_name-grouped_rel_hids root 0 ?mid)
(rel_name-grouped_rel_eids root 0 ?aid)
(manual_id-word ?mid ?mng)
(man_word-root-cat ?mng ?root ?)
(not (or (database_info (components $? ?mng $?)(group_ids ?aid))(database_info (components $? ?root $?)(group_ids ?aid))))
=>
	(assert (roots_mismatch))
)
;---------------------------------------------------------------------------------------------
;(defrule modify_conf_lvl
;(declare (salience 5))
;(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ? align_root ?)
;(rel_name-grouped_rel_hids root ? $?d ?mid)
;(rel_name-grouped_rel_hids nmod:se $?d $? ?mid1)
;?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid1 ?mid1 ?rel ?r ?l)
;(not (modified_level ?mid1))
;=>
;	(retract ?f0)
;	(bind ?lvl (+ ?l 1))
;	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid1 ?mid1 ?rel ?r ?lvl))
;	(assert (modified_level ?mid1))
;)
;---------------------------------------------------------------------------------------------
(defrule modify_lvl_with_dic
(declare (salience 4))
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?d ?l)
(database_info (components $? ?mng $?) (group_ids $? ?aid $?))
(manual_id-word ?mid ?mng)
(not (modified_level ?mid))
=>
        (retract ?f0)
        (bind ?lvl (+ ?l 1))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?d ?lvl))
        (assert (modified_level ?mid))
)
;---------------------------------------------------------------------------------------------
(defrule get_align_fact
(declare (salience -5))
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?rel ? ?l)
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ? ? ? ?l1&:(> ?l1 ?l)))
(not (aligned_anu_id ?aid))
=>
	(retract ?f0)
	(assert	(anu_id-man_id-rel_name ?aid ?mid ?rel ))
	(assert (aligned_anu_id ?aid))
	(assert (man_id_decided ?mid))
)
;---------------------------------------------------------------------------------------------
(defrule create_file
(declare (salience -7))
(anu_id-man_id-rel_name ?aid ?mid ?rel)
(rel_name-grouped_rel_eids ? $? ?aid)
(rel_name-grouped_rel_hids ? ? $?ids)
(test (member$ ?mid $?ids))
(not (info_created ?mid))
=>
	(bind ?id (nth$ (length $?ids) $?ids))
;	(printout t ?id)
        (bind ?f_name (str-cat ?id "_info"))
	(printout ?*s_file* crlf ?f_name "	"?aid crlf)
        (assert (info_created ?mid))
)
;---------------------------------------------------------------------------------------------
(defrule create_file1
(declare (salience -7))
?f0<-(rel_name-grouped_rel_eids $? ?aid)
(not (anu_id-man_id-rel_name ?aid $?))
=>
	(retract ?f0)
	(printout ?*s_file* crlf "No match found = " ?aid crlf)
)
;-------------------------------------------------------------------------------------
(defrule get_parser_align_info
(declare (salience -9))
(anu_id-man_id-rel_name ?aid ?mid $?)
(id-Apertium_output ?aid $?amng)
?f0<-(manual_word_info (head_id ?h) (group_ids $?d ?mid $?d1))
;(not (roots_mismatch))
=>
        (retract ?f0)
        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?amng)(man_meaning $?d ?mid $?d1)))
)

(defrule get_parser_align_info1
(declare (salience -10))
(anu_id-man_id-rel_name ?aid ?mid $?)
(not (id-Apertium_output ?aid $?amng))

?f0<-(manual_word_info (head_id ?h) (group_ids $?d ?mid $?d1))
;(not (roots_mismatch))
=>
        (retract ?f0)
        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning -)(man_meaning $?d ?mid $?d1)))
)

;-------------------------------------------------------------------------------------
(defrule replace_id_with_word_for_nos
(declare (salience -500))
?f<-(parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?anu_mng)(man_meaning $?pre ?id $?pos))
?f1<-(manual_id-word ?id ?h_mng)
(test (numberp ?h_mng))
;(not (roots_mismatch))
=>
        (retract ?f1)
        (bind ?h_mng (string-to-field (str-cat @ ?h_mng)))
        (modify ?f (man_meaning $?pre ?h_mng  $?pos))
)
;-----------------------------------------------------------------------------------
(defrule replace_id_with_word
(declare (salience -501))
?f<-(parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?anu_mng)(man_meaning $?pre ?id $?pos))
?f1<-(manual_id-word ?id $?h_mng)
;(not (roots_mismatch))
=>
        (retract ?f ?f1)
        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar)) then
        (modify ?f (man_meaning $?pre $?pos))
        else
        (modify ?f (man_meaning $?pre $?h_mng  $?pos))
        )
)

