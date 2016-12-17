(defglobal ?*eng_p_wrd* = e_p_wrd)
(defglobal ?*eng_p_wrd1* = e_p_wrd1 )

(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1 (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

;============================ mapping parser_ids into word_ids ================================
(defrule rm_punct_rel
(declare (salience 1001))
?f0<-(rel_name-sids  punct $?)
=>
	(retract ?f0)
)
;---------------------------------------------------
(defrule map_std_rel
(declare (salience 1000))
?f0<-(rel_name-sids  ?rel ?pid ?pid1)
(parserid-wordid   ?pid  ?id)
(parserid-wordid   ?pid1  ?id1)
=>
        (retract ?f0)
        (assert (rel_name-sids  ?rel ?id ?id1))
)
;---------------------------------------------------
(defrule map_std_rel1
(declare (salience 1000))
?f0<-(rel_name-sids root P0 ?pid)
(parserid-wordid   ?pid  ?id)
=>
        (retract ?f0)
        (assert (rel_name-sids  root 0 ?id))
)

(defrule rm_rid_not_mapped
(declare (salience 960))
?f0<-(rel_name-sids ? ? ?pid)
(test (eq (sub-string 1 1 (implode$ (create$ ?pid))) "P" ))
=>
	(retract ?f0)
)

(defrule rm_lid_not_mapped
(declare (salience 960))
?f0<-(rel_name-sids ? ?pid ?)
(test (eq (sub-string 1 1 (implode$ (create$ ?pid))) "P" ))
=>
        (retract ?f0)
)



;---------------------------------------------------
(defrule save_eng_org_rel_facts
(declare (salience 950))
=>
        (save-facts "eng_parser_rel_ids.dat" local rel_name-sids)
)
;============================= to generate org rel debug info ==================================

(defrule get_eng_rel_root_wrd
(declare (salience 900))
(rel_name-sids root 0 ?id)
(id-word ?id ?w)
(not (got_en_wrd ?id ?w))
=>
        (printout ?*eng_p_wrd* "(eng_rel_name-h_wrd-c_wrd       root            0               "?w " )" crlf)
        (assert (got_en_wrd ?id ?w))
)
;---------------------------------------------------
(defrule get_eng_rel_wrds
(declare (salience 900))
(rel_name-sids ?rel ?id ?id1)
(id-word ?id ?w)
(id-word ?id1 ?w1)
(not (got_en_wrd ?id1 ?w1))
=>
        (printout ?*eng_p_wrd* "(eng_rel_name-h_wrd-c_wrd       "?rel"          "?w"            "?w1" )" crlf)
        (assert (got_en_wrd ?id1 ?w1))
)

;============================ group relations ================================================

(defrule rm_case_rel
(declare (salience 856))
?f0<-(rel_name-sids case ?id ?id)
=>
	(retract ?f0)
)



;The microscopic domain includes [atomic, molecular and nuclear] phenomena.
(defrule grp_conj
(declare (salience 855))
?f1<-(rel_name-sids ?rel ?c $?d)
(test (or (eq ?rel appos) (eq (sub-string 1 4 ?rel) "conj")))
?f2<-(rel_name-sids ?rel1 ?c $?d1)
(test (or (eq ?rel1 appos) (eq (sub-string 1 4 ?rel1) "conj")))
(test (neq $?d $?d1))
=>
	(retract ?f1 ?f2)
	(assert (eng_rel_name-h_wrd-c_wrd ?c ?rel ?c (sort > (create$ $?d $?d1))))
)
;---------------------------------------------------
(defrule grp_conj1
(declare (salience 855))
?f1<-(eng_rel_name-h_wrd-c_wrd ?c ?rel ?c  $?d)
(test (or (eq ?rel appos) (eq (sub-string 1 4 ?rel) "conj")))
?f2<-(rel_name-sids ?rel1 ?c $?d1)
(test (or (eq ?rel1 appos) (eq (sub-string 1 4 ?rel1) "conj")))
(test (neq $?d $?d1))
=>
        (retract ?f1 ?f2)
        (assert (eng_rel_name-h_wrd-c_wrd ?c ?rel ?c (sort > (create$ $?d $?d1))))
)
;---------------------------------------------------
(defrule grp_multiple_rel
(declare (salience 850))
?f0<-(rel_name-sids ?r&compound|case ?id $?ids)
?f1<-(rel_name-sids ?r&compound|case ?id ?id2)
(test (eq (integerp (member$ ?id2 $?ids)) FALSE))
=>
        (retract ?f0 ?f1)
	(bind $?n (sort > (create$ $?ids ?id2)))
	(assert (rel_name-sids ?r ?id $?n))
)
;---------------------------------------------------
(defrule grp_auxpass
(declare (salience 850))
?f0<-(rel_name-sids aux ?id ?id1)
?f1<-(rel_name-sids auxpass ?id ?id2)
=>
        (retract ?f1 ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?id2 aux ?id ?id1 ?id2))
)
;---------------------------------------------------
(defrule def_eng_rel
(declare (salience 800))
?f0<-(rel_name-sids ?rel ?id $?d ?id1)
=>
        (retract ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?id1 ?rel ?id $?d ?id1))
)
;---------------------------------------------------
(defrule grp_nmod_conj
(declare (salience 750))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?h $?d ?c $?d1)
?f1<-(eng_rel_name-h_wrd-c_wrd ? cc ?c ?cc)
?f2<-(eng_rel_name-h_wrd-c_wrd ? ?rel1 ?c $?c1)
(test (or (eq ?rel1 appos) (eq (sub-string 1 4 ?rel1) "conj")))
(not (sorted_id  ?))
=>
        (retract ?f0 ?f1 ?f2)
        (assert (eng_rel_name-h_wrd-c_wrd ?cc ?rel ?h (sort > (create$ $?d $?d1 ?cc $?c1)) ?c))
	(assert (conj_head ?c))
)
;---------------------------------------------------
; [its] [bright celestial objects]
;The holy dip is on [13 November].
(defrule grp_case_amod_det_and_nummod
(declare (salience 700))
?f1<-(eng_rel_name-h_wrd-c_wrd ?id2 ?r ?h $?d ?id $?d1)
?f0<-(eng_rel_name-h_wrd-c_wrd ? ?r1&case|det|det:predet|amod|nummod|nmod:poss|nmod:tmod ?id ?det $?ids)
(test (numberp ?det))
(not (sorted_id  ?))
=>
        (retract ?f1 ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?det ?r ?h $?d $?ids ?det ?id $?d1))
)
;---------------------------------------------------
(defrule grp_mark
(declare (salience 700))
?f1<-(eng_rel_name-h_wrd-c_wrd ?id2 ?r ?h $?d ?id $?d1)
(not (sorted_id  ?id2))
?f0<-(eng_rel_name-h_wrd-c_wrd ? mark ?id ?det)
(test (eq ?det (- ?id 1)))
=>
        (retract ?f1 ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?det ?r ?h $?d ?det ?id $?d1))
)
;---------------------------------------------------
;This beauty of water will not be found anywhere else.
(defrule grp_aux
(declare (salience 700))
?f0<-(eng_rel_name-h_wrd-c_wrd ?h ?r ?id $?d ?id1 $?d1)
?f1<-(eng_rel_name-h_wrd-c_wrd ? aux|auxpass ?id1 $?ids)
(not (sorted_id ?))
=>
        (retract ?f1 ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?h ?r ?id $?d $?ids ?id1 $?d1 ))
)
;---------------------------------------------------
(defrule grp_neg
(declare (salience 700))
?f0<-(eng_rel_name-h_wrd-c_wrd ?h ?r ?id $?d ?id1 $?d1)
?f1<-(eng_rel_name-h_wrd-c_wrd ? neg ?id1 ?n)
(not (sorted_id  ?))
=>
        (retract ?f1 ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?h ?r ?id $?d ?n ?id1 $?d1))
)

;---------------------------------------------------
; [about_the_world][around_them] <=>  [about_the_world_around_them]
;(defrule grp_noun
;(declare (salience 650))
;?f0<-(eng_rel_name-h_wrd-c_wrd ?h ?r ?id ?pid $?d ?id1 $?d1)
;?f1<-(eng_rel_name-h_wrd-c_wrd ? ?r1 ?id1 ?pid1 $?d2)
;(test (and (eq (sub-string 1 4 ?r) "nmod")(eq (sub-string 1 4 ?r1) "nmod")))
;(not (rel_name-sids_tmp $? ?id1 $?))
;(test (numberp ?id1)) 
;;(got_en_wrd ?pid ?w&~with) ;For example, the subject of thermodynamics, developed in the nineteenth century, deals with bulk systems in terms of macroscopic quantities such as temperature, internal energy, entropy, etc.
;;(got_en_wrd ?pid1 ?w1)
;;(test (neq ?w ?w1)) ; [of the molecular constituents] [of the bulk system]
;(not (sorted_id  ?))
;=>
;	(retract ?f0 ?f1)
;	(assert (eng_rel_name-h_wrd-c_wrd ?h ?r ?id ?pid $?d ?pid1 $?d2 ?id1 $?d1))
;)
;---------------------------------------------------------------------------
(defrule grp_compound
(declare (salience 640))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?h  $?ids ?id1 $?post)
?f1<-(eng_rel_name-h_wrd-c_wrd ? compound|mwe|compound:prt ?id1 ?com $?cids)
(not (sorted_id  ?))
=>
	(retract ?f0 ?f1)
	(assert (eng_rel_name-h_wrd-c_wrd ?id ?rel ?h  $?ids ?com $?cids ?id1 $?post))
)
;---------------------------------------------------
;[One kind] [of response] from the earliest times has been to observe the physical environment ...
;(defrule grp_kind
;(declare (salience 635))
;(got_en_wrd ?kind kind)
;?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?h $?d ?kind)
;(not (sorted_id  ?))
;(got_en_wrd ?id1&:(= (+ ?kind 1) ?id1) of)
;?f1<-(eng_rel_name-h_wrd-c_wrd ? nmod:of ?kind ?id1 $?ids)
;=>
;	(retract ?f0 ?f1)
;	(assert (eng_rel_name-h_wrd-c_wrd ?id ?rel ?h $?d ?kind ?id1 $?ids))
;)

(defrule grp_of
(declare (salience 635))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?h $?d ?noun)
(not (sorted_id  ?))
(id-word ?of&:(= (+ ?noun 1) ?of) of)
?f1<-(eng_rel_name-h_wrd-c_wrd ? nmod:of ?noun $?d1 ?of $?ids)
=>
	(retract ?f0 ?f1)
	(assert (eng_rel_name-h_wrd-c_wrd ?id ?rel ?h $?d $?d1 ?of $?ids ?noun))
)



(defrule grp_of1
(declare (salience 634))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?h $?d ?noun $?d1 ?last)
(not (sorted_id  ?))
(got_en_wrd ?of&:(= (+ ?noun 1) ?of) of)
?f1<-(eng_rel_name-h_wrd-c_wrd ? nmod:of ?last $?d2 ?of $?ids)
=>
        (retract ?f0 ?f1)
        (assert (eng_rel_name-h_wrd-c_wrd ?id ?rel ?h $?d $?d2 ?of $?ids ?noun $?d1 ?last))
)


;---------------------------------------------------
(defrule modify_conj_h
(declare (salience 630))
?f1<-(conj_head ?ch)
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?h $?d ?ch $?d1)
=>
	(retract ?f0 ?f1)
	(assert  (eng_rel_name-h_wrd-c_wrd ?id ?rel ?h $?d $?d1 ?ch))
	(assert (modified_conj_h ?id))
)
;---------------------------------------------------
;P1 
(defrule rm_Pids_facts
(declare (salience 621))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id $?d1)
(test (eq (numberp ?id) FALSE))
=>
	(retract ?f0)
)
;---------------------------------------------------
(defrule get_mod_rel_ids
(declare (salience 620))
(eng_rel_name-h_wrd-c_wrd ?id ?rel ?id1 $?d1 ?id2)
(not (rel_name-sids_tmp ?id $?))
(not (removed_prep ?id))
(test (neq (numberp ?id) FALSE))
=>
        (assert (rel_name-sids_tmp ?id ?rel ?id1 $?d1 ?id2))
)
;========================= remove prep ids from rel , get multiple prep wrds ====================
(defrule rm_prep_ids
(declare (salience 610))
?f0<-(rel_name-sids_tmp ?i ?rel ?h $?ids)
(pada_info (preposition $?p ?id1&~0 $?p1))
(test (and (neq (integerp (member$ ?id1 $?ids)) FALSE) (eq (integerp (member$ - $?ids)) FALSE)))
=>
	(retract ?f0)
	(bind $?pids (create$ $?p ?id1 $?p1))
	(loop-for-count (?i 1 (length $?pids))
		(bind ?id (nth$ ?i $?pids))
		(bind $?ids (delete-member$ $?ids ?id))
	)
       	(if (> (length $?pids) 1) then
		(assert (rel_name-sids_tmp ?i ?rel $?pids - ?h $?ids))
	else
		(assert (rel_name-sids_tmp ?i ?rel ?h $?ids))
	)
	(assert (removed_prep ?i))
)
;---------------------------------------------------
(defrule replace_multi_prep_wrds
(declare (salience 600))
?f0<-(rel_name-sids_tmp ?i ?rel $?p ?id $?p1 - $?ids)
(id-word ?id ?wrd)
=>
	(retract ?f0)
	(assert (rel_name-sids_tmp ?i ?rel $?p ?wrd $?p1 - $?ids))
)
;---------------------------------------------------
;nmod:in <=> nmod:in_terms_of
(defrule modify_rel_name_for_multi_prep
(declare (salience 590))
?f0<-(rel_name-sids_tmp ?i ?rel $?wrd  - $?ids)
?f1<-(eng_rel_name-h_wrd-c_wrd ?i ?rel $?d)
(test (> (length $?wrd) 1))
=>
	(retract ?f0 ?f1)
	(bind ?nwrd (implode$ (remove_character " " (implode$ (create$  $?wrd)) "_")))
	(if (neq (str-index ":" ?rel) FALSE) then
		(bind ?r (string-to-field (str-cat (sub-string 1 (- (str-index ":" ?rel) 1) ?rel) ":" ?nwrd)))
	else
		(bind ?r (string-to-field (str-cat ?rel ":" ?nwrd)))
	)
	(assert (rel_name-sids_tmp ?i ?r $?ids))
	(assert (eng_rel_name-h_wrd-c_wrd ?i ?r $?d))
)
;============================ grouped rel debug info ==========================
(defrule sort_ids
(declare (salience 550))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?id1 $?d1 ?id2)
(not (sorted_id ?id))
=>
	(retract ?f0)
	(bind $?ids (sort > (create$ $?d1 ?id2)))
	(assert (eng_rel_name-h_wrd-c_wrd ?id ?rel ?id1 $?ids))
	(assert (sorted_id ?id))
)
;---------------------------------------------------
(defrule rm_rel_without_child
(declare (salience 540))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel $?)
?f<-(rel_name-sids_tmp ?id ?rel ? )
=>
	(retract ?f ?f0)
)
;---------------------------------------------------
(defrule replace_eng_words_for_nos
(declare (salience 531))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel $?d ?id1 $?d1)
(id-word ?id1 ?wrd)
(test (numberp ?wrd))
=>
        (retract ?f0)
	(bind ?wrd (string-to-field (str-cat @ ?wrd)))
        (assert (eng_rel_name-h_wrd-c_wrd ?id ?rel $?d ?wrd $?d1))
)
;---------------------------------------------------
(defrule replace_eng_words
(declare (salience 530))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel $?d ?id1 $?d1)
(id-word ?id1 ?wrd)
=>
        (retract ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?id ?rel $?d ?wrd $?d1))
)
;---------------------------------------------------
(defrule print_rel_in_order
(declare (salience 50))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?in $?mng)
?f1<-(rel_name-sids_tmp ?id ?rel $?ids)
(not (eng_rel_name-h_wrd-c_wrd ?id1&:(< ?id1 ?id) $?))
=>
        (retract ?f0 ?f1)
        (bind ?new_mng (implode$ (remove_character " " (implode$ (create$  ?mng)) "_")))
        (printout ?*eng_p_wrd1* "(eng_rel_name-h_wrd-c_wrd	"?rel"	"?in"	"?new_mng " )" crlf)
	(assert (rel_name-grouped_rel_eids ?rel $?ids))
)

