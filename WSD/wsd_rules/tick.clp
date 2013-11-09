
(defrule tick0
(declare (salience 5000))
(id-root ?id tick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ticking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gilAPa_kA_motA_kapadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tick.clp  	tick0   "  ?id "  gilAPa_kA_motA_kapadA )" crlf))
)

;"ticking","N","1.gilAPa_kA_motA_kapadA"
;He purchased a ticking from the shop.
;
(defrule tick1
(declare (salience 4900))
(id-root ?id tick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-over_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukwa_cala));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tick.clp tick1 " ?id "  mukwa_cala )" crlf)) 
)

(defrule tick2
(declare (salience 4800))
(id-root ?id tick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mukwa_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tick.clp	tick2  "  ?id "  " ?id1 "  mukwa_cala  )" crlf))
)

(defrule tick3
(declare (salience 4700))
(id-root ?id tick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tika_tika_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tick.clp 	tick3   "  ?id "  tika_tika_kara )" crlf))
)

;default_sense && category=verb	tika_karanA[niSAna_lagAnA]	0
;"tick","VT","1.tika_karanA[niSAna_lagAnA]"
;He ticked the payments made.
;
;
