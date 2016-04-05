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

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

;---------------------------------------------------------------------------
(defrule rm_auxpass
(declare (salience 950))
?f0<-(hnd_rel_name-h_id-c_ids ?o auxpass|aux - ?id ?id1)
?f1<-(hnd_rel_name-h_id-c_ids ? auxpass|aux - ?id1 ?id2)
=>
        (retract ?f1 ?f0)
        (assert (hnd_rel_name-h_id-c_ids ?id2 aux - ?id ?id1 ?id2))
)
;---------------------------------------------------------------------------
(defrule rm_auxpass1
(declare (salience 950))
?f0<-(hnd_rel_name-h_id-c_ids ?o aux|auxpass - ?id ?id1)
?f1<-(hnd_rel_name-h_id-c_ids ? auxpass|aux - ?id ?id2)
(test (neq ?id1 ?id2))
=>
        (retract ?f1 ?f0)
        (assert (hnd_rel_name-h_id-c_ids ?id2 aux - ?id ?id1 ?id2))
)
;---------------------------------------------------------------------------
(defrule grp_compound
(declare (salience 940))
?f1<-(hnd_rel_name-h_id-c_ids ? compound $? - ?c ?id)
=>
	(retract ?f1)
	(assert (id-modified_id ?c ?id ?c))
)
;---------------------------------------------------------------------------
;rAwri ke AkASa meM ; camakane vAle => rAwri ke AkASa meM camakane vAle
;(defrule grp_compound1
;(declare (salience 890))
;?f1<-(hnd_rel_name-h_id-c_ids ?o compound $? - ?h ?c $?cids)
;?f0<-(hnd_rel_name-h_id-c_ids ?id ?rel $?v - ?h $?ids)
;(test (neq ?o ?id))
;=>
;	(retract ?f1 ?f0)
;	(assert (hnd_rel_name-h_id-c_ids ?id ?rel $?v - ?h ?c $?ids $?cids))
;	(assert (id-modified_id ?h ?c $?cids ?h))
;)
;---------------------------------------------------------------------------
;BOwikI ke anwargawa hama viviXa BOwika pariGatanAoM kI [vyAKyA] kuCa safkalpanAoM evaM niyamoM ke paxoM meM [karane kA] prayAsa karawe hEM .
(defrule grp_kara
(declare (salience 930))
?f<-(hnd_rel_name-h_id-c_ids ?id ?rel $?ids - ?h ?gid $?ids )
(manual_word_info (group_ids $?d ?fid ?gid $?ids)(root $? kara|ho))
?f0<-(hnd_rel_name-h_id-c_ids ?id1 ? - ? ?fid)
(not (id_modified ?id))
(test (neq ?fid ?h))
=>
        (retract ?f0 ?f)
        (assert (hnd_rel_name-h_id-c_ids ?id ?rel $?ids - ?h ?fid ?gid $?ids ))
        (assert (id-modified_id ?fid ?fid ?gid $?ids))
        (assert (id-modified_id ?gid ?fid ?gid $?ids))
)
;---------------------------------------------------------------------------
(defrule grp_nmod_conj
(declare (salience 920))
?f0<-(hnd_rel_name-h_id-c_ids ? ?r&~cc $?v - ?h ?cc $?ids)
?f1<-(hnd_rel_name-h_id-c_ids ? cc - ?cc ?cw)
?f2<-(hnd_rel_name-h_id-c_ids ? conj $? - ?cc $?conj)
(manual_id-word ?cc ?w)
=>
	(retract ?f0 ?f1 ?f2)
	(if (eq (integerp (member$ ?w (create$ evaM waWA Ora aWavA))) TRUE) then
		(assert (hnd_rel_name-h_id-c_ids ?cw ?r $?v - ?h ?cw $?conj ?cc $?ids))
	 else
		(assert (hnd_rel_name-h_id-c_ids ?cw ?r $?v - ?h ?cw $?conj $?ids ?cc))
	)
)
;---------------------------------------------------------------------------
(defrule grp_mark
(declare (salience 910))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?rel $?d - ?in $?d1 ?id $?d2)
?f1<-(hnd_rel_name-h_id-c_ids ? mark - ?id $?ids ?id1)
(not (id_modified ?h))
=>
	(retract ?f1 ?f0)
	(assert (hnd_rel_name-h_id-c_ids ?id1 ?rel $?d $?ids ?id1 - ?in $?d1 ?id $?d2 $?ids ?id1))
)
;---------------------------------------------------------------------------
(defrule grp_amod_nummod
(declare (salience 910))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?r&~root $?d - ?in $?d1 ?id $?d2)
?f1<-(hnd_rel_name-h_id-c_ids ?h1 amod|nummod - ?id $?ids ?id1)
(not (id_modified ?h))
(test (neq ?h ?h1))
=>
	(retract ?f0 ?f1)
	(assert (hnd_rel_name-h_id-c_ids ?h ?r $?d - ?in $?ids ?id1 $?d1 ?id $?d2 ))
)
;---------------------------------------------------------------------------
(defrule grp_det
(declare (salience 910))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?r $?d - ?in $?d1 ?id $?d2)
?f1<-(hnd_rel_name-h_id-c_ids ? det - ?id $?ids ?id1)
(not (id_modified ?h))
=>
        (retract ?f0 ?f1)
        (assert (hnd_rel_name-h_id-c_ids ?h ?r $?d - ?in $?ids ?id1 $?d1 ?id $?d2))
)
;---------------------------------------------------------------------------
;(defrule grp_aux
;(declare (salience 910))
;?f0<-(hnd_rel_name-h_id-c_ids ?h root $?d - ?in $?d1 ?id1)
;?f1<-(hnd_rel_name-h_id-c_ids ? aux|auxpass - ?id1 $?ids )
;(not (id_modified ?h))
;=>
;        (retract ?f0 ?f1)
;        (assert (hnd_rel_name-h_id-c_ids ?h root $?d $?ids - ?in $?d1 ?id1 $?ids))
;)
;---------------------------------------------------------------------------
(defrule grp_aux1
(declare (salience 910))
?f0<-(hnd_rel_name-h_id-c_ids ?id ?r $?d - ?h ?c $?d)
?f1<-(hnd_rel_name-h_id-c_ids ? aux|auxpass $?v  - ?c ?id1 $?v)
(not (id_modified ?h))
=>	
	(retract ?f0 ?f1)
	(if (neq (integerp (subsetp $?d $?v)) FALSE) then
		(assert (hnd_rel_name-h_id-c_ids ?id ?r $?d ?id1 $?v - ?h ?c $?d ?id1 $?v))
	else
		(assert (hnd_rel_name-h_id-c_ids ?id ?r ?id1 $?v - ?h ?c ?id1 $?v))
	)
)
;---------------------------------------------------------------------------
(defrule grp_noun
(declare (salience 900))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?r $?v - ?id ?id1  $?d $?v)
?f1<-(hnd_rel_name-h_id-c_ids ?h1 ?r1 $? - ?id1 ?id2 $?d1)
(test (and (eq (sub-string 1 4 ?r) "nmod") (eq (sub-string 1 5 ?r1) "nmod")))
(test (neq ?h ?h1))
(manual_id-wrd-cat ?id1	? ~VM)
(not (id_modified ?h))
=>
        (retract ?f0 ?f1)
	(bind $?ids (sort >  (create$ $?d ?id2 $?d1)))
        (assert (hnd_rel_name-h_id-c_ids ?h ?r $?v - ?id $?ids $?v ?id1))
)
;---------------------------------------------------------------------------
(defrule modify_grouped_id
(declare (salience 850))
(id-modified_id ?id $?ids)
?f0<-(hnd_rel_name-h_id-c_ids ?h ?rel $?v  - ?id  $?d)
(not (id_modified ?h))
=>
	(retract ?f0)
	(assert (hnd_rel_name-h_id-c_ids ?h ?rel $?v  - $?ids -  $?d))
	(assert (id_modified ?h))
)
;---------------------------------------------------------------------------
(defrule modify_grouped_id1
(declare (salience 850))
(id-modified_id ?id $?ids)
?f0<-(hnd_rel_name-h_id-c_ids ?h ?rel $?v  - ?h1 $?d ?id $?d1)
(not (id_modified ?h))
=>
        (retract ?f0)
        (assert (hnd_rel_name-h_id-c_ids ?h ?rel $?v  - ?h1 - $?d $?ids $?d1))
        (assert (id_modified ?h))
)

;---------------------------------------------------------------------------
(defrule get_default_in_fact
(declare (salience 840))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?rel $?v  - ?i $?d)
(not (id_modified ?h))
=>
	(retract ?f0)
	(assert (hnd_rel_name-h_id-c_ids ?h ?rel $?v  - ?i -  $?d))
	(assert (id_modified ?h))
)
;---------------------------------------------------------------------------
(defrule get_mod_rel_ids
(declare (salience 830))
(hnd_rel_name-h_id-c_ids ?id ?rel - $?in ?i -  $?d)
(not (relation_name-rel_ids_tmp ?id $?))
=>
        (assert (relation_name-rel_ids_tmp ?id ?rel ?i $?d))
)
;---------------------------------------------------------------------------
(defrule get_mod_rel_ids1
(declare (salience 820))
(hnd_rel_name-h_id-c_ids ?id ?rel $?d - $?in ?i - $?ids)
(not (relation_name-rel_ids_tmp ?id $?))
=>
	(bind $?ids (delete-member$ $?ids $?d))
	(assert (relation_name-rel_ids_tmp ?id ?rel ?i $?ids))
) 
;---------------------------------------------------------------------------
(defrule sort_hids
(declare (salience 600))
?f0<-(hnd_rel_name-h_id-c_ids ?id ?rel $?v - $?in - $?d1 ?id2)
(not (sorted_id ?id))
=>
        (retract ?f0)
        (bind $?ids (sort > (create$ $?d1 ?id2)))
        (assert (hnd_rel_name-h_id-c_ids ?id ?rel $?v - $?in - $?ids))
        (assert (sorted_id ?id))
)
;---------------------------------------------------------------------------
(defrule replace_words
(declare (salience 100))
?f0<-(hnd_rel_name-h_id-c_ids ?id ?rel $?d ?id1 $?d1)
(manual_id-word ?id1 ?wrd)
=>
	(retract ?f0)
	(assert (hnd_rel_name-h_id-c_ids ?id ?rel $?d ?wrd $?d1))
)
;---------------------------------------------------------------------------
(defrule print_in_order
(declare (salience 50))
?f0<-(hnd_rel_name-h_id-c_ids ?id ?rel $?mng - $?in -  $?mng1)
?f<-(relation_name-rel_ids_tmp ?id ?r $?ids)
(not (hnd_rel_name-h_id-c_ids ?id1&:(< ?id1 ?id) $?))
=>
	(retract ?f0 ?f)
	(bind ?out_mng (implode$ (remove_character " " (implode$ (create$  ?mng1)) "_")))
	(bind ?in_mng (implode$ (remove_character " " (implode$ (create$  ?in)) "_")))
	(if (or (eq (sub-string 1 4 ?rel) "nmod") (eq (sub-string 1 4 ?rel) "amod")(eq (sub-string 1 4 ?rel) "conj")) then
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

