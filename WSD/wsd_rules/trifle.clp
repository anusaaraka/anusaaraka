
(defrule trifle0
(declare (salience 5000))
(id-root ?id trifle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id trifling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wucCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  trifle.clp  	trifle0   "  ?id "  wucCa )" crlf))
)

;"trifling","Adj","1.wucCa"
(defrule trifle1
(declare (salience 4900))
(id-root ?id trifle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-with_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " trifle.clp trifle1 " ?id "  Kela )" crlf)) 
)

(defrule trifle2
(declare (salience 4800))
(id-root ?id trifle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-with_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " trifle.clp trifle2 " ?id "  Kela )" crlf)) 
)

(defrule trifle3
(declare (salience 4700))
(id-root ?id trifle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-with_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " trifle.clp trifle3 " ?id "  Kela )" crlf)) 
)

(defrule trifle4
(declare (salience 4600))
(id-root ?id trifle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trifle.clp	trifle4  "  ?id "  " ?id1 "  Kela  )" crlf))
)

(defrule trifle5
(declare (salience 4500))
(id-root ?id trifle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trifle.clp 	trifle5   "  ?id "  Kela )" crlf))
)

(defrule trifle6
(declare (salience 4400))
(id-root ?id trifle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cutaputa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trifle.clp 	trifle6   "  ?id "  Cutaputa )" crlf))
)

;"trifle","N","1.Cutaputa{bAwa}"
;They made an issue over the trifle.
;--"2.CotI_motI_XanarASi"
;It was a trifle amount for her to spend.
;--"2.keka_se_banI_eka_miTAI"
;Her mother made a trifle pudding for the breakfast.
;
;


;@@@ Added by Prachi Rathore[1-4-14]
;He trifled away all his efforts.[shiksharthi-kosh]
;उसने उसके सब प्रयास व्यर्थ कर दिए .  
(defrule trifle7
(declare (salience 4600))
(id-root ?id trifle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyarWa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trifle.clp	trifle7  "  ?id "  " ?id1 "  vyarWa_kara_xe )" crlf))
)


;@@@ Added by Prachi Rathore[1-4-14]
;He trifles away his precious time. [shiksharthi-kosh]
;वह उसका मूल्यवान समय व्यर्थ गँवा देता है . 
(defrule trifle8
(declare (salience 4600))
(id-root ?id trifle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 time)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyarWa_gazvA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trifle.clp	trifle8  "  ?id "  " ?id1 "  vyarWa_gazvA_xe )" crlf))
)
