(defglobal ?*hin_p_wrd* = h_p_wrd )
(defglobal ?*hin_p_wrd1* = h_p_wrd1 )


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


;==================== to generate hindi parser debug info ==========================
(defrule print_man_sen
(declare (salience 1002))
(manual_hin_sen $?sen)
=>
	(printout ?*hin_p_wrd* "	"(implode$ $?sen) crlf crlf)
)

(defrule get_hnd_rel_root_wrd
(declare (salience 1001))
(relation_name-rel_ids root 0 ?id)
(manual_id-word ?id ?w)
(not (got_wrd ?id ?w))
=>
        (printout ?*hin_p_wrd* "(hnd_rel_name-h_wrd-c_wrd       root            0               "?w " )" crlf)
        (assert (got_wrd ?id ?w))
)

(defrule get_hnd_rel_wrds
(declare (salience 1000))
(relation_name-rel_ids ?rel ?id ?id1)
(manual_id-word ?id ?w)
(manual_id-word ?id1 ?w1)
(not (got_wrd ?id1 ?w1))
=>
        (printout ?*hin_p_wrd* "(hnd_rel_name-h_wrd-c_wrd       "?rel"          "?w"            "?w1" )" crlf)
        (assert (got_wrd ?id1 ?w1))
)


;===================== grouping hindi parser relations =============================
(defrule rm_punc_rel
(declare (salience 902))
?f0<-(relation_name-rel_ids punct ?id ?id1)
=>
	(retract ?f0)
)
;---------------------------------------------------------------------------
(defrule grp_root_and_compound
(declare (salience 902))
?f0<-(relation_name-rel_ids root 0 ?id1)
?f1<-(relation_name-rel_ids compound ?id1 ?id)
=>
	(retract ?f0 ?f1)
	(assert (id-modified_id ?id1 ?id ?id1))
	(assert (hnd_rel_name-h_wrd-c_wrds ?id root - 0 ?id ?id1))
)
;---------------------------------------------------------------------------
(defrule grp_nmod_conj
(declare (salience 902))
?f0<-(relation_name-rel_ids ?r ?h ?cc)
;?f0<-(relation_name-rel_ids nmod|nsubj ?h ?cc)
?f1<-(relation_name-rel_ids cc ?cc ?cw)
?f2<-(relation_name-rel_ids conj ?cc ?conj)
(not (hnd_rel_name-h_wrd-c_wrds ?r ?h $?))
=>
	(retract ?f0 ?f1 ?f2)
	(assert (hnd_rel_name-h_wrd-c_wrds ?conj ?r - ?h ?cc ?cw ?conj))
;	(assert (hnd_rel_name-h_wrd-c_wrds ?conj nmod - ?h ?cc ?cw ?conj))

)
;---------------------------------------------------------------------------
;mAnava kI saxEva apane cAroM ora PEle viSva [ke bAre meM] jAnane kI jijFAsA rahI hE .
(defrule grp_multiple_rel
(declare (salience 900))
?f0<-(relation_name-rel_ids ?r&case ?id ?id1)
?f1<-(relation_name-rel_ids ?r&case ?id ?id2)
(test (neq ?id1 ?id2))
=>
	(retract ?f0 ?f1)
        (if (> ?id1 ?id2) then
                (assert (hnd_rel_name-h_wrd-c_wrds ?id2 ?r - ?id ?id2 ?id1))
        else
                (assert (hnd_rel_name-h_wrd-c_wrds ?id2 ?r - ?id ?id1 ?id2))
        )
)
;---------------------------------------------------------------------------
;prakqwi ke Ese AScaryoM evaM vismayoM [ke prawi] mAnava kA kalpanASIla waWA anveRI maswiRka viBinna prakAra se apanI prawikriyAez vyakwa karawA rahA hE .
(defrule grp_multiple_rel1
(declare (salience 900))
?f0<-(relation_name-rel_ids ?r&case ?id ?id1)
?f1<-(relation_name-rel_ids ?r&case ?id1 ?id2)
(test (neq ?id1 ?id2))
=>
        (retract ?f0 ?f1)
        (if (> ?id1 ?id2) then
                (assert (hnd_rel_name-h_wrd-c_wrds ?id2 ?r - ?id ?id2 ?id1))
        else
                (assert (hnd_rel_name-h_wrd-c_wrds ?id2 ?r - ?id ?id1 ?id2))
        )
)
;---------------------------------------------------------------------------
(defrule modify_rel_name_with_case
(declare (salience 890))
?f0<-(hnd_rel_name-h_wrd-c_wrds ?h ?rel $?d ?id)
?f1<-(hnd_rel_name-h_wrd-c_wrds ? case - ?id $?ids ?id1)
(test (eq (numberp ?id) TRUE))
=>
	(retract ?f0 ?f1)
	(assert (hnd_rel_name-h_wrd-c_wrds ?id1 ?rel $?ids ?id1 $?d ?id $?ids ?id1))
)
;---------------------------------------------------------------------------
(defrule rm_auxpass
(declare (salience 850))
?f0<-(relation_name-rel_ids aux ?id ?id1)
?f1<-(relation_name-rel_ids auxpass|aux ?id1 ?id2)
=>
	(retract ?f1 ?f0)
	(assert (hnd_rel_name-h_wrd-c_wrds ?id2 aux - ?id ?id1 ?id2))
)
;---------------------------------------------------------------------------
(defrule rm_auxpass1
(declare (salience 850))
?f0<-(relation_name-rel_ids aux ?id ?id1)
?f1<-(relation_name-rel_ids auxpass|aux ?id ?id2)
(test (neq ?id1 ?id2))
=>
        (retract ?f1 ?f0)
        (assert (hnd_rel_name-h_wrd-c_wrds ?id2 aux - ?id ?id1 ?id2))
)
;---------------------------------------------------------------------------
(defrule grp_case_dep
(declare (salience 800))
?f0<-(hnd_rel_name-h_wrd-c_wrds ?h ?rel $?d - ?in $?d1 ?id $?d2)
?f1<-(hnd_rel_name-h_wrd-c_wrds ? case|mark - ?id $?ids ?id1)
=>
	(retract ?f1 ?f0)
	(assert (hnd_rel_name-h_wrd-c_wrds ?id1 ?rel $?d $?ids ?id1 - ?in $?d1 ?id $?d2 $?ids ?id1))
)
;---------------------------------------------------------------------------
(defrule grp_amod
(declare (salience 780))
?f0<-(hnd_rel_name-h_wrd-c_wrds ?h ?r&~root $?d - ?in $?d1 ?id $?d2)
;(test (or (eq (sub-string 1 4 ?r) "nmod") (eq ?r nsubj)))
?f1<-(hnd_rel_name-h_wrd-c_wrds ? amod - ?id $?ids ?id1)
=>
	(retract ?f0 ?f1)
	(assert (hnd_rel_name-h_wrd-c_wrds ?id1 ?r $?d - ?in $?ids ?id1 $?d1 ?id $?d2 ))
)
;---------------------------------------------------------------------------
(defrule grp_det
(declare (salience 780))
?f0<-(hnd_rel_name-h_wrd-c_wrds ?h ?r $?d - ?in $?d1 ?id $?d2)
?f1<-(hnd_rel_name-h_wrd-c_wrds ? det - ?id $?ids ?id1)
=>
        (retract ?f0 ?f1)
	(bind $?ids (sort >  (create$ $?d1 ?id $?d2 $?ids ?id1)))
        (assert (hnd_rel_name-h_wrd-c_wrds ?id1 ?r $?d - ?in $?ids))
)
;---------------------------------------------------------------------------
(defrule grp_aux
(declare (salience 780))
?f0<-(hnd_rel_name-h_wrd-c_wrds ? root $?d - ?in $?d1 ?id1)
?f1<-(hnd_rel_name-h_wrd-c_wrds ?h aux|auxpass - ?id1 $?ids)
=>
        (retract ?f0 ?f1)
        (assert (hnd_rel_name-h_wrd-c_wrds ?id1 root $?d $?ids - ?in $?d1 ?id1 $?ids))
)
;---------------------------------------------------------------------------
(defrule def_rel
(declare (salience 750))
?f0<-(relation_name-rel_ids ?rel ?id ?id1)
(not (hnd_rel_name-h_wrd-c_wrds ? ?rel - $? ?id1))
=>
        (retract ?f0)
        (assert (hnd_rel_name-h_wrd-c_wrds ?id1 ?rel - ?id ?id1))
)
;---------------------------------------------------------------------------
(defrule grp_acl
(declare (salience 745))
?f0<-(hnd_rel_name-h_wrd-c_wrds ?h acl - ?in  ?id)
?f1<-(hnd_rel_name-h_wrd-c_wrds ? ? $? - ?id $?ids)
=>
	(retract ?f0 ?f1)
	(assert (hnd_rel_name-h_wrd-c_wrds ?h acl - ?in  ?id $?ids))
)
;---------------------------------------------------------------------------
(defrule grp_noun
(declare (salience 740))
?f0<-(hnd_rel_name-h_wrd-c_wrds ?h ?r $?v - ?id ?id1  $?d $?v)
?f1<-(hnd_rel_name-h_wrd-c_wrds ?h1 ?r1  - ?id1 ?id2 $?d1)
(test (or (eq (sub-string 1 4 ?r) "nmod") (eq (sub-string 1 5 ?r) "nsubj")))
(test (neq ?h ?h1))
(not (id_modified ?h))
=>
        (retract ?f0 ?f1)
	(bind $?ids (sort >  (create$ $?d ?id2 $?d1)))
        (assert (hnd_rel_name-h_wrd-c_wrds ?h ?r $?v - ?id $?ids $?v ?id1))
)
;---------------------------------------------------------------------------
(defrule modify_grouped_id
(declare (salience 715))
(id-modified_id ?id $?ids)
?f0<-(hnd_rel_name-h_wrd-c_wrds ?h ?rel $?v  - ?id  $?d)
=>
	(retract ?f0)
	(assert (hnd_rel_name-h_wrd-c_wrds ?h ?rel $?v  - $?ids -  $?d))
	(assert (id_modified ?h))
)

(defrule get_default_in_fact
(declare (salience 714))
?f0<-(hnd_rel_name-h_wrd-c_wrds ?h ?rel $?v  - ?i $?d)
(not (id_modified ?h))
=>
	(retract ?f0)
	(assert (hnd_rel_name-h_wrd-c_wrds ?h ?rel $?v  - ?i -  $?d))
	(assert (id_modified ?h))
)


(defrule get_mod_rel_ids
(declare (salience 710))
(hnd_rel_name-h_wrd-c_wrds ?id ?rel - ?i $?in -  $?d)
(not (relation_name-rel_ids_tmp ?id $?))
=>
        (assert (relation_name-rel_ids_tmp ?id ?rel ?i $?d))
)
;---------------------------------------------------------------------------
(defrule get_mod_rel_ids1
(declare (salience 705))
(hnd_rel_name-h_wrd-c_wrds ?id ?rel $?d - ?i $?in - $?ids)
(not (relation_name-rel_ids_tmp ?id $?))
=>
	(bind $?ids (delete-member$ $?ids $?d))
	(assert (relation_name-rel_ids_tmp ?id ?rel ?i $?ids))
) 

(defrule sort_hids
(declare (salience 600))
?f0<-(hnd_rel_name-h_wrd-c_wrds ?id ?rel $?v - $?in - $?d1 ?id2)
(not (sorted_id ?id))
=>
        (retract ?f0)
        (bind $?ids (sort > (create$ $?d1 ?id2)))
        (assert (hnd_rel_name-h_wrd-c_wrds ?id ?rel $?v - $?in - $?ids))
        (assert (sorted_id ?id))
)


;---------------------------------------------------------------------------
(defrule replace_words
(declare (salience 100))
?f0<-(hnd_rel_name-h_wrd-c_wrds ?id ?rel $?d ?id1 $?d1)
(manual_id-word ?id1 ?wrd)
=>
	(retract ?f0)
	(assert (hnd_rel_name-h_wrd-c_wrds ?id ?rel $?d ?wrd $?d1))
)
;---------------------------------------------------------------------------
(defrule print_in_order
(declare (salience 50))
?f0<-(hnd_rel_name-h_wrd-c_wrds ?id ?rel $?mng - $?in -  $?mng1)
?f<-(relation_name-rel_ids_tmp ?id ?r $?ids)
(not (hnd_rel_name-h_wrd-c_wrds ?id1&:(< ?id1 ?id) $?))
=>
	(retract ?f0 ?f)
	(bind ?out_mng (implode$ (remove_character " " (implode$ (create$  ?mng1)) "_")))
	(bind ?in_mng (implode$ (remove_character " " (implode$ (create$  ?in)) "_")))
	(if (or (eq (sub-string 1 4 ?rel) "nmod") (eq (sub-string 1 4 ?rel) "conj")) then
		(if (and (neq (length $?mng) 0) (> (length $?mng) 1)) then
			(bind ?new_mng (implode$ (remove_character " " (implode$ (create$  ?mng)) "_")))
			(bind ?new_mng (str-cat ?rel":"?new_mng))
		else
			(if (eq (length $?mng) 1) then
				(bind ?new_mng (str-cat ?rel":"(implode$ ?mng)))
			else
				(bind ?new_mng ?rel)
			)
		)
		(printout ?*hin_p_wrd1* "(hnd_rel_name-h_wrd-c_wrd	"?new_mng"	"?in_mng"	"?out_mng " )" crlf)
		(assert (rel_name-grouped_rel_hids (string-to-field ?new_mng) $?ids))
	else	
		(printout ?*hin_p_wrd1* "(hnd_rel_name-h_wrd-c_wrd	"?r"	"?in_mng"	"?out_mng " )" crlf)
		(assert (rel_name-grouped_rel_hids ?r $?ids))
	)
)

