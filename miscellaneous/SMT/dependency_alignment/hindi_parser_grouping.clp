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

(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (multislot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))

;---------------------------------------------------------------------------
(defrule rm_auxpass
(declare (salience 1000))
?f0<-(hnd_rel_name-h_id-c_ids ?o auxpass|aux - ?id $?d ?id1)
?f1<-(hnd_rel_name-h_id-c_ids ? auxpass|aux - ?id1 $?d1 ?id2)
=>
        (retract ?f1 ?f0)
	(bind $?ids (sort > (create$ $?d ?id1 $?d1 ?id2)))
        (assert (hnd_rel_name-h_id-c_ids ?id2 aux - ?id $?ids))
)
;---------------------------------------------------------------------------
(defrule rm_auxpass1
(declare (salience 1000))
?f0<-(hnd_rel_name-h_id-c_ids ?o aux|auxpass - ?id $?d ?id1)
?f1<-(hnd_rel_name-h_id-c_ids ? auxpass|aux - ?id $?d1 ?id2)
(test (neq ?id1 ?id2))
=>
        (retract ?f1 ?f0)
	(bind $?ids (sort > (create$ $?d ?id1 $?d1 ?id2)))
        (assert (hnd_rel_name-h_id-c_ids ?id2 aux - ?id $?ids))
)

;============================== get compound ids =========================

(defrule grp_compound
(declare (salience 950))
?f1<-(hnd_rel_name-h_id-c_ids ?h compound $?v - ?c ?id $?v)
;?f1<-(hnd_rel_name-h_id-c_ids ?h compound|compound1 $?v - ?c ?id $?v)
(not (got_default_in_fact ?h))
(not (h-rel-mod_id ?h $?))
=>
	(retract ?f1)
	(assert (id-grp_type-ids ?c comp ?id ?c))
)
;---------------------------------------------------------------------------
;pArasparika praBAva ; mUla AXAra
(defrule grp_compound1
(declare (salience 950))
?f1<-(hnd_rel_name-h_id-c_ids ? amod - ?h ?id1)
(manual_id-word ?id1 ?w)
(manual_id-word ?h ?w1)
(database_info (components ?w ?w1))
=>
	(retract ?f1)
	(assert (id-grp_type-ids ?h comp ?id1 ?h))
)
;---------------------------------------------------------------------------
(defrule grp_aux
(declare (salience 950))
?f1<-(hnd_rel_name-h_id-c_ids ? aux|auxpass $? - ?id1 $?ids )
(not (got_default_in_fact ?h))
(not (h-rel-mod_id ?h $?))
=>
        (retract ?f1)
        (assert (id-grp_type-ids ?id1 aux ?id1 $?ids))
)
;---------------------------------------------------------------------------
(defrule grp_neg
(declare (salience 950))
?f1<-(hnd_rel_name-h_id-c_ids ? neg  - ?c ?id1)
=>
        (retract ?f1)
        (if (> ?c ?id1) then
                (assert (id-grp_type-ids ?c neg ?id1 ?c))
        else
                (assert (id-grp_type-ids ?c neg ?c ?id1))
        )
)
;============================= group kriyA mUla================================

;(defrule grp_kriyA_mUla
;(declare (salience 931))
;?f<-(hnd_rel_name-h_id-c_ids ?id ?rel $?v - ?h ?gid)
;(manual_id-word ?h ?w)
;(manual_id-word ?gid ?w1)
;(test (neq (gdbm_lookup "man_kriyA_mUla_dic.gdbm" (str-cat ?w1"_"?w)) "FALSE"))
;=>
;       (retract ?f)
;       (assert (id-grp_type-ids ?h comp ?gid ?h))
;)


;================================== group conj ================================
;saMsAra meM paxArWoM ke AScaryacakiwa karane vAle [prakAra waWA jIvana evaM vyavahAra kI] vismayakArI viBinnawAez hEM.
(defrule modify_cc_as_conj
(declare (salience 941))
(hnd_rel_name-h_id-c_ids ?id cc - ?w ?w1)
?f0<-(hnd_rel_name-h_id-c_ids ? cc - ?w1 ?c)
?f1<-(hnd_rel_name-h_id-c_ids ?id1 conj $? - ?w1 $?ids)
(manual_id-word ?w1 waWA|evaM)
(manual_id-word ?c waWA|evaM)
=>
	(retract ?f0 ?f1)
	(assert (hnd_rel_name-h_id-c_ids ?id1 conj - ?w ?c $?ids))
)
;---------------------------------------------------------------------------
;jabaki sUkRma praBAva kRewra ke anwargawa [paramANvIya , ANvika waWA nABikIya pariGatanAez] AwI hEM .
(defrule grp_conj
(declare (salience 940))
?f0<-(hnd_rel_name-h_id-c_ids ?id conj $?  - ?h $?d)
?f1<-(hnd_rel_name-h_id-c_ids ?id1 conj|compound1 $?  - ?h $?d1)
(test (neq ?id ?id1))
(not (got_default_in_fact $?))
=>
	(retract ?f0 ?f1)
	(bind $?ids (sort < (create$ $?d $?d1)))
	(assert (hnd_rel_name-h_id-c_ids ?id conj - ?h $?d $?d1))
)
;---------------------------------------------------------------------------
;vijFAna kyA hE , evaM waWAkaWiwa vEjFAnika viXi kyA howI hE
(defrule grp_nmod_conj
(declare (salience 921))
?f0<-(hnd_rel_name-h_id-c_ids ?id ?r&~cc $?v - ?h $?ids ?cc&~hE $?v)
?f1<-(hnd_rel_name-h_id-c_ids ? cc - ?cc ?cw)
?f2<-(hnd_rel_name-h_id-c_ids ? conj|compound1|compound $? - ?cc $?conj)
(manual_id-word ?cc ?w);saMsAra meM paxArWoM ke AScaryacakiwa karane vAle prakAra waWA jIvana evaM vyavahAra kI vismayakArI viBinnawAez hEM.
(not (h-rel-mod_id ?id $?))
(not (got_default_in_fact $?))
=>
        (retract ?f0 ?f1 ?f2)
        (if (eq (integerp (member$ ?w (create$ evaM waWA Ora aWavA))) TRUE) then
                (assert (hnd_rel_name-h_id-c_ids ?cw ?r $?v - ?h ?cw $?conj ?cc $?ids))
         else
                (assert (hnd_rel_name-h_id-c_ids ?cw ?r $?v - ?h ?cw $?conj $?ids ?cc $?v))
        )
)
;---------------------------------------------------------------------------
(defrule grp_comp_conj
(declare (salience 921))
(id-grp_type-ids ? comp ?cc ?comp)
?f0<-(hnd_rel_name-h_id-c_ids ?id ?r&~cc&~root $?v - ?h $?ids ?comp)
?f1<-(hnd_rel_name-h_id-c_ids ? cc - ?cc ?cw)
?f2<-(hnd_rel_name-h_id-c_ids ? conj $? - ?cc $?conj)
(manual_id-word ?cc ?w)
(not (h-rel-mod_id ?id $?))
=>
        (retract ?f0 ?f1 ?f2)
        (assert (hnd_rel_name-h_id-c_ids ?cw ?r $?v - ?h ?cw $?conj ?comp $?ids ))
)
;---------------------------------------------------------------------------
;removed ~root
(defrule grp_nmod_conj1
(declare (salience 920))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?r&~cc $?v - ?h ?cc&~hE $?ids)
?f1<-(hnd_rel_name-h_id-c_ids ? cc - ?cc ?cw)
?f2<-(hnd_rel_name-h_id-c_ids ? conj $? - ?cc $?conj)
(not (h-rel-mod_id ?h $?))
(manual_id-word ?cc ?w)
=>
	(retract ?f0 ?f1 ?f2)
	(if (eq (integerp (member$ ?w (create$ evaM waWA Ora aWavA))) TRUE) then
		(assert (hnd_rel_name-h_id-c_ids ?cw ?r $?v - ?h ?cw $?conj ?cc $?ids))
	 else
		(assert (hnd_rel_name-h_id-c_ids ?cw ?r $?v - ?h ?cw $?conj $?ids ?cc))
	)
)

;=============================== group amod/nummod/det =================================

(defrule grp_amod_nummod
(declare (salience 910))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?r&~compound1 $?d - ?in $?d1 ?id $?d2)
?f1<-(hnd_rel_name-h_id-c_ids ?h1 amod|nummod|det|nmod:poss|compound1 - ?id $?ids ?id1)
(not (got_default_in_fact ?h))
(not (h-rel-mod_id ?h $?))
(test (neq ?h ?h1))
=>
	(retract ?f1 ?f0)
	(assert (hnd_rel_name-h_id-c_ids ?h ?r $?d - ?in $?ids ?id1 $?d1 ?id $?d2 ))
)

;===================================== group PRP ====================================

;[unakA] [banAyA waWA upayoga kiyA hE]  => [banAyA waWA unakA upayoga kiyA hE]
(defrule grp_PRP
(declare (salience 908))
(manual_id-word ?pid ?w&unakA|inakA|apane|usakI|usakA)
?f0<-(hnd_rel_name-h_id-c_ids ? ? - ?h ?pid)
;(id-grp_type-ids ?gid comp $? ?h $?)
;?f1<-(hnd_rel_name-h_id-c_ids ?id ?r $?v - ?h1 $?d ?gid $?d1)
?f1<-(hnd_rel_name-h_id-c_ids ?id ?r $?v - ?h1 $?d ?h $?d1)
=>
	(retract ?f0 ?f1)
	(assert (hnd_rel_name-h_id-c_ids ?id ?r $?v - ?h1 $?d  ?pid ?h $?d1))
;	(assert (hnd_rel_name-h_id-c_ids ?id ?r $?v - ?h1 $?d  ?pid ?gid $?d1))
)

;---------------------------------------------------------------------------
;[hamAre] [mUla avaboXana meM]
;(defrule grp_noun
;(declare (salience 900))
;?f0<-(hnd_rel_name-h_id-c_ids ?h ?r $?v - ?id $?d ?id1  $?d1 $?v)
;(not (got_default_in_fact ?h))
;?f1<-(hnd_rel_name-h_id-c_ids ?h1 ?r1 $?v1 - ?id1 ?id2 $?d2)
;(test (and (eq (sub-string 1 4 ?r) "nmod") (eq (sub-string 1 4 ?r1) "nmod")))
;(test (neq ?h ?h1))
;(manual_id-wrd-cat ?id1	? ~VM)
;(not (h-rel-mod_id ?h $?))
;(not (grouped_with_noun1_rule ?h))
;=>
;        (retract ?f0 ?f1)
;;		(bind $?ids (sort >  (create$ $?d ?id2 $?d1 $?d2)))
;        (assert (hnd_rel_name-h_id-c_ids ?h ?r $?v - ?id $?d ?id1 ?id2 $?d2 $?d1 $?v))
;)
;;---------------------------------------------------------------------------
;;[bqhaxAkAra][nikAyoM ke sAWa]
;;[unnIsavIM][SawAbxI meM]
;(defrule grp_noun1
;(declare (salience 890))
;?f0<-(hnd_rel_name-h_id-c_ids ?h ?r $?v - ?id ?id1 $?v)
;(not (got_default_in_fact ?h))
;(not (h-rel-mod_id ?h $?))
;(manual_id-wrd-cat ?id2&:(=(- ?id1 1) ?id2) ? PRP|JJ|NNPC)
;?f1<-(hnd_rel_name-h_id-c_ids ? ?r1 $? -  ?id $?d ?id2)
;(test (and (eq (sub-string 1 4 ?r) "nmod") (eq (sub-string 1 5 ?r1) "nsubj")))
;=>
;        (retract ?f0 ?f1)
;        (assert (hnd_rel_name-h_id-c_ids ?h ?r $?v - ?id $?d ?id2 ?id1 $?v))
;	(assert (grouped_with_noun1_rule ?h))
;)
;;---------------------------------------------------------------------------
;[eka prakAra kI] [prawikriyA] => [eka prakAra kI prawikriyA]
(defrule grp_noun_with_ke
(declare (salience 880))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?r - ?id  $?d ?vib)
(manual_id-word ?vib ke|kI|kA)
?f1<-(hnd_rel_name-h_id-c_ids ?h1 ?r1 - ?h2 $?d1 =(+ ?vib 1) $?d2)
(test (neq ?h ?h1))
(not (h-rel-mod_id ?h $?))
(not (h-rel-mod_id ?h1 $?))
(not (got_default_in_fact ?h))
(id-word ? of)
=>
        (retract ?f0 ?f1)
        (assert (hnd_rel_name-h_id-c_ids ?h1 ?r1 - ?h2 $?d ?vib $?d1 (+ ?vib 1) $?d2))
)

;isIlie vaha apane ko jafgala meM ekAnwavAsa karake [nirASA kA ekAnwa jIvana] biwAne ke yogya samaJawA hE  .
;[nirASA kA][ekAnwa jIvana] => [nirASA kA ekAnwa jIvana]
(defrule grp_noun_with_ke1
(declare (salience 880))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?r - ?id  $?d ?vib)
(manual_id-word ?vib ke|kI|kA)
(id-grp_type-ids ?vib1 comp $? =(+ ?vib 1) $?)
?f1<-(hnd_rel_name-h_id-c_ids ?h1 ?r1 - ?h2 $?d1 ?vib1 $?d2)
(test (neq ?h ?h1))
(not (h-rel-mod_id ?h $?))
(not (h-rel-mod_id ?h1 $?))
(not (got_default_in_fact ?h))
(id-word ? of)
=>
        (retract ?f0 ?f1)
        (assert (hnd_rel_name-h_id-c_ids ?h1 ?r1 - ?h2 $?d ?vib $?d1 ?vib1 $?d2))
)


;============================= combine comp ids ==================================

;comp  14         15    ;  aux  15     16   17  => comp   14       15     16  17
;comp sammohiwa karawe  ;  aux karawe rahe hEM  => comp sammohiwa karawe rahe hEM 
;[vyuwpanna kiyA] [jA sakawA hE] => vyuwpanna kiyA jA sakawA hE
(defrule combine_comp_and_aux
(declare (salience 852))
?f0<-(id-grp_type-ids ?id comp $?d1 ?c $?d2)
?f1<-(id-grp_type-ids ?id1 aux|case ?c $?ids1)
=>
	(retract ?f0 ?f1)
	(bind $?newids (create$ ))
	(loop-for-count (?i 1 (length $?ids1))
		(if (eq (integerp (member$ (nth$ ?i $?ids1) $?d2)) FALSE) then
                        (bind $?newids (create$ $?newids (nth$ ?i $?ids1)))
		)
	)
	(bind $?ids (sort > (create$ $?d1 ?c $?d2 $?newids)))
	(assert (id-grp_type-ids ?id1 comp $?ids))
)
;---------------------------------------------------------------------------
;(id-grp_type-ids 23 comp 21 23)
;(id-grp_type-ids 23 neg 22 23)    ==> (id-grp_type-ids 23 comp-neg 21 22 23)
(defrule combine_grp_type_for_modified_ids
(declare (salience 851))
?f0<-(id-grp_type-ids ?id ?t&~aux&~case $?ids)
?f1<-(id-grp_type-ids ?id ?t1&~aux&~case $?ids1)
(test (neq ?t ?t1))
=>
	(retract ?f0 ?f1)
	(bind $?newids (create$ ))
	(loop-for-count (?i 1 (length $?ids))
		(bind ?j (nth$ ?i $?ids))
		(if (eq (integerp (member$ ?j $?ids1)) FALSE) then
			(bind $?newids (create$ $?newids ?j))
		)
	)
	(bind $?ids (sort > (create$ $?newids $?ids1)))
	(bind ?type (string-to-field (str-cat ?t"-"?t1)))
	(assert (id-grp_type-ids ?id ?type $?ids))
)
;==================================== modify id with comp ids ======================
(defrule add_grouped_ids
(declare (salience 850))
(id-grp_type-ids ?id ?t&~case&~adv $?ids)
?f0<-(hnd_rel_name-h_id-c_ids ?h ?rel $?v  -  $?d ?id $?d1)
(not (h-rel-mod_id ?h ?rel ?id))
=>
	(retract ?f0)
	(bind $?newids (create$ ))
        (loop-for-count (?i 1 (length $?ids)) ; to remove repetations
                (bind ?j (nth$ ?i $?ids))
                (if (and (eq (integerp (member$ ?j $?d)) FALSE)  (eq (integerp (member$ ?j $?d1)) FALSE)) then
                        (bind $?newids (create$ $?newids ?j))
                )
        )
	(assert (hnd_rel_name-h_id-c_ids ?h ?rel $?v  -  $?d $?newids $?d1))
	(assert (h-rel-mod_id ?h ?rel ?id))
)
;---------------------------------------------------------------------------
(defrule get_default_in_fact
(declare (salience 840))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?rel $?v  -  $?ids $?d)
(id-grp_type-ids ?id ? $?ids)
(not (got_default_in_fact ?h))
=>
	(retract ?f0)
	(assert (hnd_rel_name-h_id-c_ids ?h ?rel $?v  -  $?ids - $?d))
	(assert (got_default_in_fact ?h))
)
;---------------------------------------------------------------------------
(defrule get_default_in_fact1
(declare (salience 830))
?f0<-(hnd_rel_name-h_id-c_ids ?h ?rel $?v  - ?i $?d)
(not (got_default_in_fact ?h))
=>
	(retract ?f0)
	(assert (hnd_rel_name-h_id-c_ids ?h ?rel $?v  - ?i -  $?d))
	(assert (got_default_in_fact ?h))
)

;========================= get head_ids for the relation ================

;(hnd_rel_name-h_id-c_ids 47  cc  -  46  -  47)
(defrule get_mod_rel_ids
(declare (salience 825))
(hnd_rel_name-h_id-c_ids ?id ?rel -  ?i  -  $?d)
(not (relation_name-rel_ids_tmp ?id $?))
=>
        (assert (relation_name-rel_ids_tmp ?id ?rel ?i $?d))
)
;---------------------------------------------------------------------------
;(hnd_rel_name-h_id-c_ids 10 nsubjpass - 11 12 - 10)
(defrule get_mod_rel_ids1
(declare (salience 825))
(hnd_rel_name-h_id-c_ids ?id ?rel -  $?ids  -  ?c $?d)
(id-grp_type-ids ?h ? $?ids)
(not (relation_name-rel_ids_tmp ?id $?))
=>
        (assert (relation_name-rel_ids_tmp ?id ?rel ?h  ?c $?d))
)
;---------------------------------------------------------------------------
;(hnd_rel_name-h_id-c_ids 37 nmod 36 37 - 38 39 40 41 42 - 35 36 37)
(defrule get_mod_rel_ids2
(declare (salience 820))
(hnd_rel_name-h_id-c_ids ?id ?rel $?d - $?in - ?c $?ids)
(id-grp_type-ids ?h ? $?in)
(not (relation_name-rel_ids_tmp ?id $?))
=>
	(bind $?ids (delete-member$ (create$ ?c $?ids) $?d))
	(assert (relation_name-rel_ids_tmp ?id ?rel ?h $?ids))
) 
;---------------------------------------------------------------------------
;(hnd_rel_name-h_id-c_ids 18 dobj 18 - 13 - 16 17 18)
(defrule get_mod_rel_ids3
(declare (salience 815))
(hnd_rel_name-h_id-c_ids ?id ?rel $?d - ?in - ?c $?ids)
(not (relation_name-rel_ids_tmp ?id $?))
=>
        (bind $?ids (delete-member$ (create$ ?c $?ids) $?d))
        (assert (relation_name-rel_ids_tmp ?id ?rel ?in $?ids))
)

;=============================== generate word file for grouped ids ============

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
(defrule replace_id_with_word_for_nos
(declare (salience 101))
?f<-(hnd_rel_name-h_id-c_ids ?id ?rel $?d ?id1 $?d1)
?f1<-(manual_id-word ?id1 ?h_mng)
(test (numberp ?h_mng))
=>
        (retract ?f)
        (bind ?h_mng (string-to-field (str-cat @ ?h_mng)))
	(assert (hnd_rel_name-h_id-c_ids ?id ?rel $?d ?h_mng $?d1))
)

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


(defrule modify_adv_fact
(declare (salience 10))
(rel_name-grouped_rel_hids advmod ?id $?p $?ids $?p1)
?f0<-(id-grp_type-ids ?h adv $?ids)
(not (modified_adv_fact ?id))
=>
	(retract ?f0)
	(assert (id-grp_type-ids ?h adv $?p $?ids $?p1))
	(assert (modified_adv_fact ?id))
)
