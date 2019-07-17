;This file is written by Shirisha Manju

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(slot tam (default 0))(multislot tam_components (default 0))(multislot group_ids (default 0)))

(deftemplate parser_align (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (multislot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))

(defglobal ?*left-f* = left)

;For english parser the case ids are not deleted from group ids 
(defrule rm_case_rel
(declare (salience 100))
?f0<-(rel_name-sids case $?)
=>
	(retract ?f0)
)

;remove aux ids from grpids
(defrule remove_aux_ids
(declare (salience 100))
(pada_info (group_cat VP) (group_ids $? ?id $? ?))
?f0<-(rel_name-grouped_rel_eids ?rel ?h $?d ?id $?d1 ?c) 
=>
	(retract ?f0)
	(assert (rel_name-grouped_rel_eids ?rel ?h $?d $?d1 ?c) )
)

;-----------------------------------------------------------------------------------
(defrule sort_eids
(declare (salience 90))
?f0<-(rel_name-grouped_rel_eids ?rel ?h $?ids ?l)
(not (sorted_h ?h))
=>
	(retract ?f0)
	(bind $?nids (sort > $?ids))
	(assert (rel_name-grouped_rel_eids ?rel ?h $?nids ?l))
	(assert (sorted_h ?h))
)
;-----------------------------------------------------------------------------------
(defrule sort_hids
(declare (salience 80))
?f0<-(rel_name-grouped_rel_hids ?rel ?h $?ids ?l)
(not (sorted_mh ?h))
=>
        (retract ?f0)
        (bind $?nids (sort > $?ids))
        (assert (rel_name-grouped_rel_hids ?rel ?h $?nids ?l))
        (assert (sorted_mh ?h))
)
;-----------------------------------------------------------------------------------
(defrule rm_align_ids
(declare (salience 70))
(anu_cid-man_cid-src-rule_name ?aid ?mid $?)
?f0<-(rel_name-grouped_rel_eids $?a ?aid $?a1)
?f1<-(rel_name-grouped_rel_hids $?m ?mid $?m1)
=>
	(retract ?f0 ?f1)
	(assert (rel_name-grouped_rel_eids $?a $?a1))
	(assert (rel_name-grouped_rel_hids $?m $?m1))
)
;-----------------------------------------------------------------------------------
;(defrule rm_mwe_align_id
;(declare (salience 65))
;(anu_id-man_id-src-rule_name ?aid ?mid $?)
;?f0<-(rel_name-grouped_rel_eids ?r ?h $?a ?id ?aid)
;(ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)
;(test (neq (integerp (member$ ?id $?ids)) FALSE))
;?f1<-(rel_name-grouped_rel_hids ?r1 ?h1 $?m ?id1 ?mid)
;(manual_word_info (group_ids $?mids))
;(test (and (neq (integerp (member$ ?id1 $?mids)) FALSE)(neq (integerp (member$ ?mid $?mids)) FALSE)))
;=>
;	(retract ?f0 ?f1)
;	(assert (rel_name-grouped_rel_eids ?r ?h $?a  ?aid))
;	(assert (rel_name-grouped_rel_hids ?r1 ?h1 $?m ?mid))
;)
;-----------------------------------------------------------------------------------
(defrule modify_compound1_as_compound
(declare (salience 64))
?f0<-(relation_name-rel_ids compound1 ?h ?c)
=>
	(retract ?f0)
	(assert (relation_name-rel_ids compound ?h ?c))
)
;-----------------------------------------------------------------------------------
(defrule align_child_with_dic
(declare (salience 62))
(anu_id-man_id-src-rule_name ?al ?ml $?)
(rel_name-grouped_rel_eids ?rel ? $? ?aid $? ?al)
(rel_name-grouped_rel_hids ? ? $? ?mid $? ?ml)
(manual_word_info (head_id ?mid) (word ?w) (root ?r))
;(id-word-root-tam ?mid ?w ?r ?)
(id-word ?aid ?word)
(or (word-transliterate_mng ?word ?r)(database_info (components ?r)(group_ids ?aid)))
(not (anu_cid-man_cid-src-rule_name ? ?mid $?))
;(not (anu_id-man_id-src-rule_name ? ?mid $?))
(not (anu_id-man_id-src-rule_name ? ?mid $?))
=>
        (assert (anu_cid-man_cid-src-rule_name ?aid ?mid parsers_match align_child_with_dic))
)
;-----------------------------------------------------------------------------------
;To go to Hastinapur we considered it convenient go [from the Kashmiri Gate Bus Terminus] in Delhi.
;haswinApura jAne ke lie hamane xillI meM [kaSmIrI geta basa adde se] jAnA suviXAjanaka samaJA .
(defrule align_child_with_same_rel
(declare (salience 61))
(anu_id-man_id-src-rule_name ?ah ?mh $?)
(rel_name-grouped_rel_eids ? ? $? ?aid ?ah)
(rel_name-grouped_rel_hids ? ? $? ?mid ?mh)
(relation_name-rel_ids ?rel ? ?mid)
(rel_name-sids ?rel ? ?aid)
(not (anu_id-man_id-src-rule_name ? ?mid $?))
(not (anu_cid-man_cid-src-rule_name ? ?mid $?))
=>
        (assert (anu_cid-man_cid-src-rule_name ?aid ?mid parsers_match align_child))
)
;-----------------------------------------------------------------------------------
(defrule align_child
(declare (salience 60))
(anu_id-man_id-src-rule_name ?ah ?mh $?)
(rel_name-grouped_rel_eids ? ? $? ?aid $? ?ah)
(rel_name-grouped_rel_hids ? ? $? ?mid $? ?mh)
(relation_name-rel_ids ?rel ? ?mid)
(rel_name-sids ?rel ? ?aid)
;(not (anu_id-man_id-src-rule_name ?aid ? $?))
(not (anu_id-man_id-src-rule_name ? ?mid $?))
(not (anu_cid-man_cid-src-rule_name ? ?mid $?))
=>
	(assert (anu_cid-man_cid-src-rule_name ?aid ?mid parsers_match align_child))
)
;-----------------------------------------------------------------------------------
(defrule align_child1
(declare (salience 55))
(anu_id-man_id-src-rule_name ?ah ?mh $?)
(rel_name-grouped_rel_eids ? ? $? ?aid $? ?ah)
(rel_name-grouped_rel_hids ? ? $? ?mid $? ?mh)
(relation_name-rel_ids ?rel&~compound1 ? ?mid)
(rel_name-sids ?rel1 ? ?aid)
(test (eq (sub-string 1 4 ?rel)(sub-string 1 4 ?rel1)))
(not (anu_id-man_id-src-rule_name ? ?mid $?))
(not (anu_cid-man_cid-src-rule_name ? ?mid $?))
;(not (anu_id-man_id-src-rule_name ?aid ? $?))
=>
        (assert (anu_cid-man_cid-src-rule_name ?aid ?mid parsers_match align_child1))
)
;-----------------------------------------------------------------------------------
(defrule align_child_with_order
(declare (salience 4))
(anu_id-man_id-src-rule_name ?al ?ml $?)
(rel_name-grouped_rel_hids ?r&~root ?mh ?mid ?ml)
(rel_name-grouped_rel_eids ?r1 ?ah ?aid ?al)
;(not (anu_id-man_id-src-rule_name ?aid ? $?))
(not (anu_id-man_id-src-rule_name ? ?mid $?))
(not (anu_cid-man_cid-src-rule_name ? ?mid $?))
=>
        (assert (anu_cid-man_cid-src-rule_name ?aid ?mid parsers_match align_child_with_order))
)
;-----------------------------------------------------------------------------------
(defrule align_child_with_order1
(anu_id-man_id-src-rule_name ?al ?ml $?)
(rel_name-grouped_rel_hids ?r&~root ?mh $?d ?mid ?ml)
(rel_name-grouped_rel_eids ?r1 ?ah $?d1 ?aid ?al)
(not (anu_id-man_id-src-rule_name ? ?mid $?))
(not (anu_cid-man_cid-src-rule_name ? ?mid $?))
=>
	(assert (anu_cid-man_cid-src-rule_name ?aid ?mid parsers_match align_child_with_order1))
)
;-----------------------------------------------------------------------------------
(defrule get_parser_align_info
(declare (salience -9))
(anu_cid-man_cid-src-rule_name ?aid ?mid $?)
?f0<-(id-Apertium_output ?aid $?amng)
(id-grp_type-ids ?mid ? $?ids)
(manual_word_info (group_ids $?d ?mid $?d1))
=>
        (retract ?f0)
;        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?amng)(man_meaning @h: ?mid)))
 ;       (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?amng)(man_meaning @h: $?d ?mid $?d1)))
        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?amng)(man_meaning @h: $?ids)))
)
;-----------------------------------------------------------------------------------
(defrule get_parser_align_info1
(declare (salience -10))
(anu_cid-man_cid-src-rule_name ?aid ?mid $?)
?f0<-(id-Apertium_output ?aid $?amng)
(manual_word_info (group_ids $?d ?mid $?d1))
=>
        (retract ?f0)
        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?amng)(man_meaning @h: ?mid)))
)
;-----------------------------------------------------------------------------------
(defrule get_parser_align_info2
(declare (salience -11))
(anu_cid-man_cid-src-rule_name ?aid ?mid $?)
(not (id-Apertium_output ?aid $?amng))
(manual_word_info (head_id ?h) (group_ids $?d ?mid $?d1))
(not (got_align ?aid ?mid))
(not (parser_align (anu_id ?aid) (man_id ?mid)))
=>
;        (retract ?f0)
;        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning -)(man_meaning @h: $?d ?mid $?d1)))
        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning -)(man_meaning @h: ?mid)))
	(assert (got_align ?aid ?mid))
)
;-----------------------------------------------------------------------------------
(defrule replace_id_with_word_for_nos
(declare (salience -500))
?f<-(parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?anu_mng)(man_meaning $?pre ?id $?pos))
?f1<-(manual_id-word ?id ?h_mng)
(test (numberp ?h_mng))
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
=>
        (retract ?f ?f1)
        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar)) then
        (modify ?f (man_meaning $?pre $?pos))
        else
        (modify ?f (man_meaning $?pre $?h_mng  $?pos))
        )
)


(defrule modify_child_fact
(declare (salience -600))
?f0<-(anu_cid-man_cid-src-rule_name ?aid ?mid $?d)
=>
	(retract ?f0)
	(assert (anu_id-man_id-src-rule_name ?aid ?mid $?d))
)

(defglobal ?*p_lids* = (create$ ))
(defglobal ?*count* = 0)
(defglobal ?*a_file* = a_fp)

(defrule rm_aligned_facts
(declare (salience -610))
(parser_align (anu_id ?aid)(man_id ?mid))
?f0<-(manual_word_info (group_ids $?p ?mid $?p1))
?f1<-(hindi_id_order $?a ?aid $?a1)
=>
	(retract ?f0 ?f1)
	(bind ?*count* (+  ?*count* 1))
	(assert (hindi_id_order $?a $?a1))
)

(defrule rm_aligned_facts1
(declare (salience -611))
(parser_align (anu_id ?aid) (man_id ?mid))
(id-grp_type-ids ?mid aux|case ?mid $?p ?id $?p1)
?f0<-(manual_word_info (group_ids $?p ?id $?p1))
=>
        (retract ?f0)
        (bind ?*count* (+  ?*count* 1))
)

(defrule get_left_over_wrd_info
(declare (salience -615))
?f0<-(manual_word_info (head_id ?id))
(not (got_left_id ?id))
=>
	(bind ?*p_lids* (create$  ?*p_lids* ?id))
	(bind ?*count* (+  ?*count* 1))
	(assert (got_left_id ?id))
)

(defrule ctrl_fact_to_print_info
(declare (salience -617))
(hindi_id_order)
=>
	(if (eq (length ?*p_lids*) 0) then
		(assert (dont_print))
	)
)

(defrule get_left_over_ids_fact
(declare (salience -620))
(not (dont_print))
=>
	(bind ?*p_lids* (sort > (create$ ?*p_lids*)))
	(assert (left_over_ids ?*p_lids*))
	(printout ?*left-f* "  Parser Alignment info :  " crlf )
	(printout ?*left-f* "  --------------------------- " crlf )
	(if (neq (length ?*p_lids*) 0) then
		(printout ?*left-f* " Un-assigned Hindi words:  " )		
	)
)

(defrule print_single_wrd
(declare (salience -621))
?f0<-(left_over_ids ?id)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi_components ?v $?vib) )
=>
        (retract ?f0)
        (if (eq ?v 0) then
                (printout ?*left-f* (wx_utf8 (implode$ (create$ $?mng))) crlf)
        else
                (printout ?*left-f* (wx_utf8 (implode$ (create$ $?mng ?v $?vib))) crlf)
        )
)

(defrule print_left_over_wrds
(declare (salience -622))
?f0<-(left_over_ids ?id $?p ?lid)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi_components ?v $?vib))
(not (left_over_ids ?))
=>
        (retract ?f0)
        (if (eq ?v 0) then
                (printout ?*left-f*  (str-cat (wx_utf8 (implode$ (create$ $?mng))) ", ") )
        else
                (printout ?*left-f* (str-cat (wx_utf8 (implode$ (create$ $?mng ?v $?vib))) ", "))
        )
        (assert (left_over_ids $?p ?lid))
)

(defrule print_eng_info
(declare (salience -623))
(hindi_id_order ?id $?)
(not (eng_msg_printed))
=>
       (printout ?*left-f* " Un-assigned English words:  " )
       (assert (eng_msg_printed))
)
;---------------------------------------------------------------------------------
(defrule print_eng_left_over
(declare (salience -624)) 
?f0<-(hindi_id_order ?id )
(id-word ?id ?word)
=>
        (retract ?f0)
        (printout ?*left-f* ?word crlf)
)
;---------------------------------------------------------------------------------
(defrule print_eng_left_over1
(declare (salience -625)) 
?f0<-(hindi_id_order ?id $?p ?lid)
(id-word ?id ?word)
=>
        (retract ?f0)
        (printout ?*left-f* ?word ", " )
        (assert (hindi_id_order $?p ?lid))
)

(defrule print_word_info
(declare (salience -630))
(para_id-sent_id-no_of_words	?para_id	?sent_id  ?)
=>
	(if (neq ?*count* 0) then
		(bind ?percent (round (/ (* (- ?*count* (length ?*p_lids*) )100)?*count*)))
		(printout ?*a_file* ?para_id"."?sent_id "	" ?percent " %" crlf)
	)
)





