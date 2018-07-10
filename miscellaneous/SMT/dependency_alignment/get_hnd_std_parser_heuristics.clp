; This file is added by Shirisha Manju

(defglobal ?*s_file* = d_fp)
(defglobal ?*hnd_rel_debug_f* = h_rel_debug)

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(slot tam (default 0))(multislot tam_components (default 0))(multislot group_ids (default 0)))

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (multislot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))

(deftemplate parser_align (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

;===================================== Removing aux/prep ids from grp =============================
(defrule cp_dummy_grp_fact
(declare (salience 1201))
(id-grp_type-ids ?i ?t $?p)
(not (id-grp_type-ids_tmp ?i $?))
=>
	(assert (id-grp_type-ids_word ?i ?t $?p))
	(assert (id-grp_type-ids_tmp ?i ?t $?p))
)
;--------------------------------------------------------------------------
;prawikriyA kara sakane ke lie => prawikriyA kara sakane
(defrule rm_prep_ids_from_com_grp
(declare (salience 1200))
(prep_ids_list $? ?id $?)
?f0<-(id-grp_type-ids ?i ?t $?p ?id $?p1)
=>
        (retract ?f0)
        (assert (id-grp_type-ids ?i ?t $?p $?p1))
)
;--------------------------------------------------------------------------
;prawikriyA kara sakane => prawikriyA kara
(defrule rm_aux_ids_from_com_grp
(declare (salience 1200))
?f0<-(id-grp_type-ids ?i ?t $?p ?p1 ?id $?p2)
?f1<-(rel_name-grouped_rel_hids ?rel ?in $?r ?p1 ?id $?r1)
(manual_id-word ?id sakane)
=>
        (retract ?f0 ?f1)
        (assert (id-grp_type-ids ?i ?t $?p ?p1 $?p2))
	(assert (rel_name-grouped_rel_hids ?rel ?in $?r ?p1 $?r1))
)
;--------------------------------------------------------------------------
(defrule rm_grouped_id
(declare (salience 1150))
(id-grp_type-ids ?i ? $?ids ?h)
?f0<-(rel_name-grouped_rel_hids ?rel&~root ?in $?p $?ids ?h $?p1)
(test (neq (length $?ids) 0))
=>
       (retract ?f0)
       (assert (rel_name-grouped_rel_hids ?rel ?in $?p ?i $?p1))
)
;--------------------------------------------------------------------------
(defrule rm_prep_ids_from_grp1
(declare (salience 1100))
(prep_ids_list $? ?id $?)
?f0<-(rel_name-grouped_rel_hids ?rel $?p ?id $?p1)
=>
        (retract ?f0)
        (assert (rel_name-grouped_rel_hids ?rel $?p $?p1))
)
;--------------------------------------------------------------------------
(defrule replace_grp_wrds
(declare (salience 1))
?f0<-(id-grp_type-ids_word ?h ?t $?p ?id $?p1)
(manual_id-word ?id ?w)
=>
	(retract ?f0)
	(assert (id-grp_type-ids_word ?h ?t $?p ?w $?p1))
)

(defrule replace_grp_wrds1
(declare (salience 1050))
?f0<-(id-grp_type-ids ?h ?t $?p ?id $?p1)
(manual_id-word ?id ?w)
=>
        (retract ?f0)
        (assert (id-grp_type-ids ?h ?t $?p ?w $?p1))
)
;prekRaNa kiyA hE => prekRaNa kara
(defrule modify_grp_mng_for_root
(declare (salience 1040))
?f0<-(id-grp_type-ids ?h ?t $?p ?w $?p1)
(id-word-root-tam ? ?w ?r&kara|ho ?)
(not (id-grp_type-ids ?h ?t $?p ?r))
=>
	(retract ?f0)
	(assert (id-grp_type-ids ?h ?t $?p ?r))
) 
;======================================= Alignment rules with initial ids ==========================
(defrule align_nmod_with_dic_mng
(declare (salience 1020))
(rel_name-sids nmod:of ?ah ?ac)
(hnd_rel_name-h_id-c_ids ? nmod:ke|nmod:kA - ?mh ?mc $?)
(manual_word_info (head_id ?mh) (root_components $?hmng))
(manual_word_info (head_id ?mc) (root_components $?cmng))
(database_info (components $?hmng ) (group_ids ?ah ))
(database_info (components $?cmng ) (group_ids ?ac ))
=>
	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?ah ?mh nmod align_nmod_with_dic_mng 2))
	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?ac ?mc nmod align_nmod_with_dic_mng 2))
)

(defrule align_nmod_child_dic_mng
(declare (salience 1019))
(rel_name-sids nmod:of ?ah ?ac)
(hnd_rel_name-h_id-c_ids ? nmod:ke|nmod:kA - ?mh ?mc $?)
(manual_word_info (head_id ?mh) (root_components $?hmng))
(database_info (components $?hmng ) (group_ids ?ah ))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?ac ? ? align_nmod_with_dic_mng ?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mc ? align_nmod_with_dic_mng ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?ac ?mc nmod align_nmod 2))
)



;(defrule modify_lvl_with_dic
;(declare (salience 1010))
;?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?d ?l)
;(manual_word_info (head_id ?mid) (root_components $?mng))
;(database_info (components $?mng ) (group_ids ?aid ))
;(not (modified_level ?mid))
;=>
;        (retract ?f0)
;        (bind ?lvl (+ ?l 1))
;        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?d ?lvl))
;        (assert (modified_level ?mid))
;)



;====================================== Alignment with grouped ids ==================================
(defrule align_group_root
(declare (salience 1000))
(rel_name-grouped_rel_hids root 0 $? ?mverb) 
(rel_name-grouped_rel_eids root 0 $? ?averb)
(not (got_align_fact $?))
=>
	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb root align_root 2))
)
;---------------------------------------------------------------------------------------------
;if both head and child are compound
;(advcl praSaswa ho  vicAra kara) ==> (xcomp  led  deal)
;prApwa kara =>   prApwa ho
(defrule align_with_dic_for_com
(declare (salience 960))
(rel_name-grouped_rel_eids ?r ?h $? ?c)
(rel_name-grouped_rel_hids ?rel ?mh $? ?mc)
(or (id-grp_type-ids ?mc ? $?cmng)(id-grp_type-ids ?mc ? $?cmng se))
(or (database_info (components $?cmng)(group_ids $? ?c $?))(database_info (components ? $?cmng)(group_ids ?c)) (database_info (components $?cmng ?v&meM|se)(group_ids $? ?c $?))(id-Apertium_output ?c $?cmng))
(or (id-grp_type-ids ?mh ? $?mng)(id-grp_type-ids ?mh ? $?mng kara|ho))
(or (database_info (components $?mng)(group_ids ?h))(database_info (components ? $?mng)(group_ids ?h))(database_info (components $?mng kara|ho)(group_ids ?h)))
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?c ?mc ?rel align_with_dic ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?c ?mc ?rel align_with_dic 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?h ?mh ?rel align_with_dic 2))
)
;---------------------------------------------------------------------------------------------
;if child compound
;(advcl     build   interact) 
;(parataxis banAyA  prawikriyA kara)
(defrule align_with_dic_for_com1
(declare (salience 950))
(rel_name-grouped_rel_eids ?r ?h $? ?c)
(rel_name-grouped_rel_hids ?rel ?mh $? ?mc)
(id-grp_type-ids ?mc ? $?cmng)
(or (database_info (components $?cmng)(group_ids ?c))(database_info (components ? $?cmng)(group_ids ?c)))
;(or (manual_word_info (root $?mng)(group_ids $? ?mh $?))(manual_word_info (word $?mng)(group_ids $? ?mh $?)))
(or (manual_word_info (root_components $?mng)(group_ids $? ?mh $?))(manual_word_info (word $?mng)(group_ids $? ?mh $?)))
(database_info (components $?mng)(group_ids ?h))
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?c ?mc ?rel align_with_dic ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?c ?mc ?rel align_with_dic 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?h ?mh ?rel align_with_dic 2))
)
;---------------------------------------------------------------------------------------------
(defrule align_with_dic
(declare (salience 909))
(rel_name-grouped_rel_eids ? ?h $? ?c)
(rel_name-grouped_rel_hids ?rel ?mh $? ?mc)
(or (manual_id-word ?mc ?r) (and (manual_id-word ?mc ?w)(or (id-word-root-tam ?mc ?w ?r ?)(man_word-root-cat ?w ?r ?))))
(or (database_info (components ?r)(group_ids ?c)) (id-Apertium_output ?c ?r)(and (id-word ?c ?word)(word-transliterate_mng ?word ?r)))
(and (manual_id-word ?mh ?w1)(or (man_word-root-cat ?w1 $?r1 ?)(id-word-root-tam ?mh ?w1 $?r1 ?)))
(or(database_info (components $?r1)(group_ids ?h))(id-HM-source ?h ? $?r1 WSD_root_mng)(and (id-word ?h ?wd1)(word-transliterate_mng ?wd1 $?r1)))
(not (man_id_decided ?mid))
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?c ?mc ? align_with_dic ?))
(not (id-grp_type-ids_word ? ? $? ?mc $?))
(not (id-grp_type-ids_word ? ? $? ?mh $?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?c ?mc ?rel align_with_dic 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?h ?mh ?rel align_with_dic 2))
)
;---------------------------------------------------------------------------------------------
;advmod   govern                similarly
;advcl    niyanwriwa_karawe     isI_prakAra
(defrule align_with_dic1
(declare (salience 909))
(rel_name-grouped_rel_eids ? ?h ?c)
(rel_name-grouped_rel_hids ?rel ?mh $?ids ?mc)
(or (manual_word_info (root_components $?cmng)(group_ids $?ids ?mc)) (manual_word_info (word $?cmng)(group_ids $?ids ?mc)))
;(or (manual_word_info (root $?cmng)(group_ids $?ids ?mc)) (manual_word_info (word $?cmng)(group_ids $?ids ?mc)))
(database_info (components $?cmng)(group_ids ?c))
(or (manual_word_info (root_components $?mng)(group_ids $? ?mh $?))(manual_word_info (word $?mng)(group_ids $? ?mh $?)))
;(or (manual_word_info (root $?mng)(group_ids $? ?mh $?))(manual_word_info (word $?mng)(group_ids $? ?mh $?)))
(database_info (components $?mng)(group_ids ?h))
(not (man_id_decided ?mid))
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?c ?mc ? align_with_dic ?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?c ?mc ? align_with_dic1 ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?c ?mc ?rel align_with_dic1 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?h ?mh ?rel align_with_dic1 2))
)
;---------------------------------------------------------------------------------------------
;(defrule align_with_hindi_wordnet
;(declare (salience 908))
;(rel_name-grouped_rel_eids ? ?h $? ?c)
;(rel_name-grouped_rel_hids ?rel ?mh $? ?mc)
;(manual_id-word ?mc ?cmng)
;(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?cmng))) "FALSE"))
;;(or (database_info (meaning ?mng) (group_ids $? ?c $?))(id-Apertium_output ?c ?mng))
;;(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng))) "FALSE"))
;;(test (eq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?cmng))) (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng)))))
;;(manual_id-word ?mh ?hmng)
;;(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?hmng))) "FALSE"))
;;(or (database_info (meaning ?mng1) (group_ids $? ?h $?))(id-Apertium_output ?h ?mng1))
;;(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng1))) "FALSE"))
;;(test (eq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?hmng))) (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng1)))))
;;(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mc ? align_with_dic ?))
;=>
;        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?c ?mc ?rel align_with_dic 2))
;        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?h ?mh ?rel align_with_dic 1))
;)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_towards
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:towards ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:kI_ora ?mverb $? ?mid)
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ? ? align_with_dic|align_with_dic1 ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?r1 align_nmod 1))
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_about
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:about ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:ke_bAre_meM ?mverb $? ?mid)
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ? ? align_with_dic|align_with_dic1 ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?r1 align_nmod 1))
)
;---------------------------------------------------------------------------------------------
;The inquiring and imaginative human mind has responded to the wonder and awe [of] [nature] in different ways.
;[prakqwi ke] Ese AScaryoM evaM vismayoM ke prawi mAnava kA kalpanASIla waWA anveRI maswiRka viBinna prakAra se apanI prawikriyAez vyakwa karawA rahA hE.
(defrule align_nmod_of_apos
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:of|nmod:apos ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:ke|nmod:kA|nmod:kI ?mverb $? ?mid)
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ? ? align_with_dic|align_with_dic1 ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?r1 align_nmod 1))
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_since/from
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:since|nmod:from ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:se ?mverb $? ?mid)
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ? ? align_with_dic|align_with_dic1 ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?r1 align_nmod 1))
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_with
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:with ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:se|nmod:ke_sAwa ?mverb $? ?mid)
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ? ? align_with_dic ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?r1 align_nmod 1))
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_in
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:in ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:meM ?mverb $? ?mid)
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ? ? align_with_dic ?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid ? align_with_dic ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?r1 align_nmod 1))
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_as
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:as ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:ke_rUpa_meM ?mverb $? ?mid)
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ? ? align_with_dic|align_with_dic1 ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?r1 align_nmod 1))
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_after
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:after ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:ke_bAxa ?mverb $? ?mid)
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ? ? align_with_dic|align_with_dic1 ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?r1 align_nmod 1))
)
;---------------------------------------------------------------------------------------------
;The inquiring and imaginative human mind has responded [to] the wonder and [awe] of nature in different ways.
;prakqwi ke Ese AScaryoM evaM [vismayoM ke prawi] mAnava kA kalpanASIla waWA anveRI maswiRka viBinna prakAra se apanI prawikriyAez vyakwa karawA rahA hE.
(defrule align_nmod_to
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:to ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:ke_prawi|nmod:ke_lie ?mverb $? ?mid)
(not (man_id_decided ?mid))
(not (anu_id_decided ?aid))
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid ? align_with_dic|align_with_dic1 ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?r1 align_nmod 1))
)
;---------------------------------------------------------------------------------------------
(defrule align_nmod_by
(declare (salience 900))
(rel_name-grouped_rel_eids  ?r&nmod:by ?averb $? ?aid)
(rel_name-grouped_rel_hids ?r1&nmod:xvArA|ke_xvArA ?mverb $? ?mid)
(not (man_id_decided ?mid))
(not (anu_id_decided ?aid))
(not (got_align_fact $?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid ? align_with_dic|align_with_dic1 ?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod 2))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?r1 align_nmod 1))
)
;---------------------------------------------------------------------------------------------
; nmod:ke_anwargawa <=> nmod:in
(defrule align_nmod_with_dic
(declare (salience 890))
(rel_name-grouped_rel_eids  ?r $? ?aid)
(rel_name-grouped_rel_hids ?r1 $? ?mid)
(test (and (neq (str-index ":" ?r) FALSE) (neq (str-index ":" ?r1) FALSE)))
(database_info (root ?root)(meaning ?mng))
(test (eq ?root (string-to-field (sub-string (+ (str-index ":" ?r) 1)(length ?r) ?r))))
(test (eq ?mng (string-to-field (sub-string (+ (str-index ":" ?r1) 1)(length ?r1) ?r1))))
;(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid ? align_nmod_with_dic ?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid ? align_with_dic|align_with_dic1|align_nmod ?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ? ? align_with_dic|align_with_dic1|align_nmod ?))
(not (man_id_decided ?mid))
(not (anu_id_decided ?aid))
(not (got_align_fact $?))
=>
	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r1 align_nmod_with_dic 1))
)
;---------------------------------------------------------------------------------------------
;The inquiring and imaginative human mind has responded to the wonder and [awe] of nature in different ways.
;prakqwi ke Ese AScaryoM evaM [vismayoM] ke prawi mAnava kA kalpanASIla waWA anveRI maswiRka viBinna prakAra se apanI prawikriyAez vyakwa karawA rahA hE.
(defrule align_conj_h
(declare (salience 900))
(anu_id-man_id-rel_name-rule_name-confidence_level ?av ?mv root ? ?)
(rel_name-grouped_rel_eids ? ?av $? ?ac $? ?aid)
(id-word ?ac and|or)
(rel_name-grouped_rel_hids ?r ?nv $? ?mc $? ?mid)
(manual_id-word ?mc evaM|waWA)
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ? align_conj_h ?))
(not (man_id_decided ?mid))
(not (anu_id_decided ?aid))
(not (modified_level ?mid))
(not (got_align_fact $?))
=>
	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?r align_conj_h 2))
)
;---------------------------------------------------------------------------------------------
(defrule align_conj
(declare (salience 900))
(rel_name-grouped_rel_eids cc ?aid ?ac)
(rel_name-grouped_rel_hids cc ?mid ?mc)
(id-word ?aid ?aw)
(manual_id-word ?mid ?mw)
(database_info (root ?aw) (meaning ?mw))
(not (got_align_fact $?))
=>
	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid cc align_conj 1))
	(assert (anu_id-man_id-rel_name-rule_name-confidence_level ?ac ?mc cc align_conj 1))
)
;---------------------------------------------------------------------------------------------
;The inquiring and imaginative human mind has responded to the wonder and awe of nature in [different] ways.
;prakqwi ke Ese AScaryoM evaM vismayoM ke prawi mAnava kA kalpanASIla waWA anveRI maswiRka [viBinna] prakAra se apanI prawikriyAez vyakwa karawA rahA hE.
(defrule align_edges
(declare (salience 95))
(rel_name-grouped_rel_eids  ?rel ?averb $? ?aid)
(rel_name-grouped_rel_hids ?rel ?mverb $? ?mid)
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid ? align_root|align_edges1|align_with_dic|align_with_dic1|align_nmod ?))
(not (anu_id_decided ?aid))
(not (got_align_fact $?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?rel align_edges 1))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?rel align_edges 1))
)

(defrule align_edges1
(declare (salience 94))
(rel_name-grouped_rel_eids  ?rel ?averb $? ?aid)
(rel_name-grouped_rel_hids ?rl ?mverb $? ?mid)
(test (neq ?rel ?rl))
(test (eq (sub-string 1 4 ?rel)(sub-string 1 4 ?rl)))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid ? align_root|align_with_dic|align_with_dic1|align_nmod ?))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ? align_root|align_edges|align_edges1|align_with_dic|align_with_dic1|align_nmod|align_nmod_with_dic ?))
(not (anu_id_decided ?aid))
(not (got_align_fact $?))
=>
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?rl align_edges1 1))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?averb ?mverb ?rl align_edges 1))
)
;---------------------------------------------------------------------------------------------
(defrule check_root_align
(declare (salience 50))
(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?)
(rel_name-grouped_rel_hids root 0  $? ?mid)
(rel_name-grouped_rel_eids root 0 $? ?aid)
(manual_id-word ?mid ?mng)
(man_word-root-cat ?mng ?root ?)
(not (or (database_info (components $? ?mng $?)(group_ids ?aid))(database_info (components $? ?root $?)(group_ids ?aid))))
=>
	(assert (roots_mismatch))
)
;---------------------------------------------------------------------------------------------
(defrule modify_lvl_for_root
(declare (salience 25))
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid root ?r ?l)
(manual_id-word ?mid ?mng)
(man_word-root-cat ?mng ?root ?)
(database_info (components $? ?root $?) (group_ids $? ?aid $?))
(not (modified_level ?mid))
=>
        (retract ?f0)
        (bind ?lvl (+ ?l 1))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid root ?r ?lvl))
        (assert (modified_level ?mid))
)
;---------------------------------------------------------------------------------------------
(defrule modify_lvl_with_root
(declare (salience 20))
(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid root ?r ?l)
(rel_name-grouped_rel_hids ? ?mid $? ?mid1)
(rel_name-grouped_rel_eids ? ?aid $? ?aid1)
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid1 ?mid1 $?d ?l)
=>
	(retract ?f0)
	(bind ?lvl (+ ?l 1))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid1 ?mid1 $?d ?lvl))
        (assert (modified_level ?mid1))
)
;---------------------------------------------------------------------------------------------
(defrule modify_lvl_with_word_in_dic
(declare (salience 20))
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?d ?l)
(or (manual_id-word ?mid ?mng)(id-hyphen_word-vib ?mid -  $? ?mng $? - ?))
(or (database_info (components ?mng ) (group_ids ?aid ))(database_info (components $? ?mng $?)(database_type multi) (group_ids $? ?aid $?)))
;(database_info (components $? ?mng $?) (group_ids $? ?aid $?))
(not (modified_level ?mid))
=>
        (retract ?f0)
        (bind ?lvl (+ ?l 1))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?d ?lvl))
        (assert (modified_level ?mid))
)
;---------------------------------------------------------------------------------------------
;pilgrimages = wIrWa = wIrWayAwrA
(defrule modify_lvl_with_partial_word_in_dic
(declare (salience 20))
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?d ?l)
(manual_id-word ?mid ?mng)
(test (neq (numberp ?mng) TRUE))
(database_info (components ?mng1 ) (group_ids ?aid ))
(test (eq (string-to-field (sub-string 1 (length ?mng) ?mng1)) ?mng))
(not (modified_level ?mid))
=>
        (retract ?f0)
        (bind ?lvl (+ ?l 1))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?d ?lvl))
        (assert (modified_level ?mid))
)
;---------------------------------------------------------------------------------------------
(defrule modify_lvl_with_root_in_dic
(declare (salience 20))
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?d ?l)
(manual_id-word ?mid ?mng)
(man_word-root-cat ?mng ?root ?)
(database_info (components ?root) (group_ids ?aid ))
(not (modified_level ?mid))
=>
        (retract ?f0)
        (bind ?lvl (+ ?l 1))
        (assert (anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid $?d ?lvl))
        (assert (modified_level ?mid))
)
;---------------------------------------------------------------------------------------------
(defrule get_align_fact
(declare (salience 5))
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?rel ?r ?l&:(> ?l 1))
(not (anu_id-man_id-rel_name-rule_name-confidence_level ? ? ? ? ?l1&:(> ?l1 ?l)))
(not (man_id_decided ?mid))
=>
	(retract ?f0)
;	(assert	(anu_id-man_id ?aid ?mid ?r))
	(assert	(anu_id-man_id-src-rule_name ?aid ?mid parsers_match ?r))
	(assert (got_align_fact ?aid ?mid))
	(assert (anu_id_decided ?aid))
        (assert (man_id_decided ?mid))
)
(defrule rm_anu_wrong_fact
(declare (salience 6))
(anu_id_decided ?aid)
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid $?)
=>
	(retract ?f0)
)
(defrule rm_man_wrong_fact
(declare (salience 6))
(man_id_decided ?mid)
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ? ?mid $?)
=>
        (retract ?f0)
)

;---------------------------------------------------------------------------------------------
(defrule get_align_fact1
(declare (salience -6))
?f0<-(anu_id-man_id-rel_name-rule_name-confidence_level ?aid ?mid ?rel ?r ?l)
=>
        (retract ?f0)
	(assert	(anu_id-man_id-src-rule_name ?aid ?mid parsers_match ?r))
	(assert (got_align_fact ?aid ?mid))
;        (assert (man_id_decided ?mid))
;	(assert (anu_id_decided ?aid))
)

;---------------------------------------------------------------------------------------------
(defrule create_file
(declare (salience -8))
;(anu_id-man_id ?aid ?mid $?)
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(rel_name-grouped_rel_eids ? $? ?aid)
(rel_name-grouped_rel_hids ? ? $?ids)
(test (member$ ?mid $?ids))
(not (info_created ?aid ?mid))
=>
	(bind ?id (nth$ (length $?ids) $?ids))
        (bind ?f_name (str-cat ?id "_info"))
	(printout ?*s_file* crlf ?f_name "	"?aid crlf)
        (assert (info_created ?aid ?mid))
)
;---------------------------------------------------------------------------------------------
(defrule create_file1
(declare (salience -9))
?f0<-(rel_name-grouped_rel_eids $? ?aid)
(not (anu_id-man_id-src-rule_name ?aid $?))
;(not (anu_id-man_id ?aid $?))
=>
	(retract ?f0)
	(printout ?*s_file* crlf "No match found = " ?aid crlf)
)
;-------------------------------------------------------------------------------------
(defrule get_parser_align_with_grp_ids
(declare (salience -10))
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(id-Apertium_output ?aid $?amng)
(id-grp_type-ids_tmp ?id ? $? ?mid $?)
?f0<-(id-grp_type-ids_word ?id ? $?man_mng)
=>
	(retract ?f0)
	(assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?amng)(man_meaning $?man_mng)))
)

(defrule get_parser_align_info
(declare (salience -11))
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(id-Apertium_output ?aid $?amng)
(not (parser_align (man_id ?mid)))
=>
        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?amng)(man_meaning ?mid )))
)

(defrule get_parser_align_info1
(declare (salience -12))
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(not (id-Apertium_output ?aid $?amng))
=>
        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning -)(man_meaning ?mid )))
)

;-------------------------------------------------------------------------------------
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

