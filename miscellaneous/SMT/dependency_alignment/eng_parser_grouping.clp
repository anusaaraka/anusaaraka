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



;============================ mapping parserids into word ids ================================
(defrule rm_punct_rel
(declare (salience 1001))
?f0<-(rel_name-sids  punct $?)
=>
	(retract ?f0)
)

(defrule map_std_rel
(declare (salience 1000))
?f0<-(rel_name-sids  ?rel ?pid ?pid1)
(parserid-wordid   ?pid  ?id)
(parserid-wordid   ?pid1  ?id1)
=>
        (retract ?f0)
        (assert (rel_name-sids  ?rel ?id ?id1))
)

(defrule map_std_rel1
(declare (salience 1000))
?f0<-(rel_name-sids root P0 ?pid)
(parserid-wordid   ?pid  ?id)
=>
        (retract ?f0)
        (assert (rel_name-sids  root 0 ?id))
)

(defrule save_eng_org_rel_facts
(declare (salience 950))
=>
        (save-facts "eng_parser_rel_ids.dat" local rel_name-sids)
)

;============================= to generate org rel deug info ==================================

(defrule get_eng_rel_root_wrd
(declare (salience 900))
(rel_name-sids root 0 ?id)
(id-word ?id ?w)
(not (got_en_wrd ?id ?w))
=>
        (printout ?*eng_p_wrd* "(eng_rel_name-h_wrd-c_wrd       root            0               "?w " )" crlf)
        (assert (got_en_wrd ?id ?w))
)

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
;The inquiring and imaginative human mind has responded to the [wonder and awe of nature] in different ways.
(defrule grp_nmod_conj
(declare (salience 852))
?f0<-(rel_name-sids ?rel ?h ?c)
;(test (eq (sub-string 1 4 ?rel) "nmod"))
?f1<-(rel_name-sids cc ?c ?cc)
?f2<-(rel_name-sids ?rel1 ?c ?c1)
(test (eq (sub-string 1 4 ?rel1) "conj"))
(not (eng_rel_name-h_wrd-c_wrd ?rel ?h $?))
=>
        (retract ?f0 ?f1 ?f2)
        (assert (eng_rel_name-h_wrd-c_wrd ?h ?rel ?h ?c ?cc ?c1))
)

(defrule grp_multiple_rel
(declare (salience 850))
?f0<-(rel_name-sids ?r&compound|case ?id ?id1)
?f1<-(rel_name-sids ?r&compound|case ?id ?id2)
(test (neq ?id1 ?id2))
=>
        (retract ?f0 ?f1)
        (if (> ?id1 ?id2) then
                (assert (eng_rel_name-h_wrd-c_wrd ?id2 ?r ?id ?id2 ?id1))
        else
                (assert (eng_rel_name-h_wrd-c_wrd ?id2 ?r ?id ?id1 ?id2))
        )
)

(defrule get_grp_with_multiple_rel
(declare (salience 850))
?f1<-(eng_rel_name-h_wrd-c_wrd ?id2 ?r&case|det ?id $?ids)
?f0<-(rel_name-sids ?rel ?h ?id)
=>
        (retract ?f1 ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?id  ?rel ?h $?ids ?id))
)

(defrule get_case_grp
(declare (salience 840))
?f1<-(eng_rel_name-h_wrd-c_wrd ?id2 ?r ?h $?d ?id $?d1)
(test (eq (sub-string 1 4 ?r) "nmod"))
?f0<-(rel_name-sids case ?id ?case)
=>
        (retract ?f1 ?f0)
        (bind $?ids (sort >  (create$  ?h ?case $?d ?id $?d1)))
        (printout t $?ids)
        (assert (eng_rel_name-h_wrd-c_wrd ?case ?r $?ids))
)

(defrule get_det_grp
(declare (salience 800))
?f1<-(eng_rel_name-h_wrd-c_wrd ?id2 ?r ?h $?d ?id $?d1)
(test (or (eq (sub-string 1 4 ?r) "nmod")(eq ?r nsubj)(eq ?r appos)))
?f0<-(eng_rel_name-h_wrd-c_wrd ? amod|det ?id ?det)
=>
        (retract ?f1 ?f0)
        (bind $?ids (sort >  (create$ ?det $?d ?id $?d1)))
        (assert (eng_rel_name-h_wrd-c_wrd ?det ?r ?h $?ids))
)



(defrule rm_auxpass
(declare (salience 800))
?f0<-(rel_name-sids aux ?id ?id1)
?f1<-(rel_name-sids auxpass ?id ?id2)
=>
        (retract ?f1 ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?id2 aux ?id ?id1 ?id2))
)


(defrule grp_aux
(declare (salience 780))
?f0<-(eng_rel_name-h_wrd-c_wrd ?h root ?id ?id1)
?f1<-(eng_rel_name-h_wrd-c_wrd ? aux ?id1 $?ids)
=>
        (retract ?f1 ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?h root ?id $?ids ?id1 ))
)

; [about_the_world][around_them] <=>  [about_the_world_around_them]
(defrule grp_noun
(declare (salience 770))
?f0<-(eng_rel_name-h_wrd-c_wrd ?h ?r ?id $?d ?id1)
?f1<-(eng_rel_name-h_wrd-c_wrd ? ?r1 ?id1 $?d1)
(test (and (eq (sub-string 1 4 ?r) "nmod")(eq (sub-string 1 4 ?r1) "nmod")))
=>
	(retract ?f0 ?f1)
        (bind $?ids (sort >  (create$ $?d $?d1)))
	(assert (eng_rel_name-h_wrd-c_wrd ?h ?r ?id $?ids ?id1))
)

;---------------------------------------------------------------------------

(defrule def_eng_rel
(declare (salience 750))
?f0<-(rel_name-sids ?rel ?id ?id1)
=>
        (retract ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?id1 ?rel ?id ?id1))
)


(defrule grp_compound
(declare (salience 740))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?h  $?ids ?id1)
?f1<-(eng_rel_name-h_wrd-c_wrd ? compound ?id1 ?com)
;(test (eq (sub-string 1 4 ?rel) "nmod"))
=>
	(retract ?f0 ?f1)
	(assert (eng_rel_name-h_wrd-c_wrd ?id ?rel ?h  $?ids ?com ?id1))
)

(defrule get_mod_rel_ids
(declare (salience 710))
(eng_rel_name-h_wrd-c_wrd ?id ?rel ?id1 $?d1 ?id2)
(not (rel_name-sids_tmp ?id $?))
=>
        (assert (rel_name-sids_tmp ?id ?rel ?id1 $?d1 ?id2))
;        (assert (rel_name-sids_tmp ?id ?rel ?id1 ?id2))
)


(defrule sort_ids
(declare (salience 705))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?id1 $?d1 ?id2)
(not (sorted_id ?id))
=>
	(retract ?f0)
	(bind $?ids (sort > (create$ $?d1 ?id2)))
	(assert (eng_rel_name-h_wrd-c_wrd ?id ?rel ?id1 $?ids))
	(assert (sorted_id ?id))
)

(defrule replace_eng_words
(declare (salience 700))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel $?d ?id1 $?d1)
(id-word ?id1 ?wrd)
=>
        (retract ?f0)
        (assert (eng_rel_name-h_wrd-c_wrd ?id ?rel $?d ?wrd $?d1))
)

(defrule print_rel_in_order
(declare (salience 650))
?f0<-(eng_rel_name-h_wrd-c_wrd ?id ?rel ?in $?mng)
?f1<-(rel_name-sids_tmp ?id ?rel $?ids)
(not (eng_rel_name-h_wrd-c_wrd ?id1&:(< ?id1 ?id) $?))
=>
        (retract ?f0 ?f1)
        (bind ?new_mng (implode$ (remove_character " " (implode$ (create$  ?mng)) "_")))
        (printout ?*eng_p_wrd1* "(eng_rel_name-h_wrd-c_wrd	"?rel"	"?in"	"?new_mng " )" crlf)
	(assert (rel_name-grouped_rel_eids ?rel $?ids))
)

