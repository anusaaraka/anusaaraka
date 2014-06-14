;@@@ Added by Pramila(BU) on 05-03-2014
;She weighed up all the evidences.   ;oald
;उसने सभी सबूतो पर विचार किया.
(defrule weigh1
(declare (salience 5000))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up) 
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vicAra_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " weigh.clp 	weigh1  "  ?id "  "  ?id1  "  vicAra_kara  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  weigh.clp 	weigh1   "  ?id " para )" crlf))
)


;@@@ Added by Pramila(BU) on 05-03-2014
;I weighed the benefits of the plan against the risks involved.   ;oald
;मैंने संबद्ध जोखिमों से अलग योजना के फायदो पर विचार किया.
(defrule weigh2
(declare (salience 4900))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vicAra_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " weigh.clp 	weigh2  "  ?id "  "  ?id1  "  vicAra_kara  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  weigh.clp 	weigh2   "  ?id " para )" crlf))
)

;@@@ Added by Pramila(BU) on 05-03-2014
;His past record weighs heavily against him.  ;oald
;उसके पिछले रिकॉर्ड उसके खिलाफ बहुत महत्तव रखते है.
(defrule weigh3
(declare (salience 5000))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawwava_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weigh.clp 	weigh3   "  ?id "  mahawwava_raKa )" crlf))
)

;@@@ Added by Pramila(BU) on 05-03-2014
;The evidence weighs in her favour.  ;oald
;सबूत उसके पक्ष में जाते है.
(defrule weigh4
(declare (salience 5000))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weigh.clp 	weigh4   "  ?id "  jA )" crlf))
)


;@@@ Added by Pramila(BU) on 05-03-2014
;He is weighed down by grief.   ;oald
;वह दुःख से उदास हो गया है.
(defrule weigh5
(declare (salience 5000))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 down) 
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uxAsa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " weigh.clp 	weigh5  "  ?id "  "  ?id1  "  uxAsa_ho )" crlf))
)

;@@@ Added by Pramila(BU) on 05-03-2014
;We all weighed in with our suggestions.  ;oald
;हम अपने सुझावो के साथ बहस में शामिल हो गए.
(defrule weigh6
(declare (salience 5000))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 in) 
(kriyA-with_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahasa_meM_SAmila_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " weigh.clp 	weigh6  "  ?id "  "  ?id1  "  bahasa_meM_SAmila_ho_jA  )" crlf))
)


;@@@ Added by Pramila(BU) on 05-03-2014
;Something was weighing on her mind.  ;oald
;कुछ मेरे दिमाग पर बोझ डाल रहा है.
(defrule weigh7
(declare (salience 5000))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id boJa_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weigh.clp 	weigh7   "  ?id "  boJa_dAla )" crlf))
)

;@@@ Added by Pramila(BU) on 05-03-2014
;The heavy fruits have weighed down the branches.   ;shiksharthi
;भारी फलों ने शाखाओं को झुका दिया है.
(defrule weigh8
(declare (salience 4500))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 down) 
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JukA_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " weigh.clp 	weigh8  "  ?id "  "  ?id1  "  JukA_xe  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  weigh.clp 	weigh8    "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  weigh.clp 	weigh8    "  ?id " ko )" crlf)))


;@@@ Added by Pramila(BU) on 05-03-2014
;I weighed out 50 kg. of potatoes.         ;shiksharthi
;मैंने ५० किलो आलू तौल डाले.
(defrule weigh9
(declare (salience 5000))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out) 
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wOla_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " weigh.clp 	weigh9  "  ?id "  "  ?id1  "  wOla_dAla  )" crlf))
)

(defrule weigh10
(declare (salience 100))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vajana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weigh.clp 	weigh10   "  ?id "  vajana )" crlf))
)

(defrule weigh11
(declare (salience 100))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weigh.clp 	weigh11   "  ?id "  wola )" crlf))
)

;"weigh","VI","1.wolanA"
;He weighs the grains on the scales.
;One must weigh the benefits && the risks of the project. .
;--"2.vajana_honA"
;How much do you weigh?.
;--"4.laMgara_uTAnA"
;We weighed anchor.
;
;
