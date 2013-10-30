
(defrule peep0
(declare (salience 5000))
(id-root ?id peep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JAzka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peep.clp	peep0  "  ?id "  " ?id1 "  JAzka  )" crlf))
)

(defrule peep1
(declare (salience 4900))
(id-root ?id peep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JAzka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peep.clp	peep1  "  ?id "  " ?id1 "  JAzka  )" crlf))
)

(defrule peep2
(declare (salience 4800))
(id-root ?id peep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIM-cIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peep.clp 	peep2   "  ?id "  cIM-cIM )" crlf))
)

;"peep","N","1.cIM-cIM"
;I heard a peep from the floor which I late discovered were mice.
;--"1.JAzkI"
;The girl took a peep through the bedroom door to make sure that baby is asleep in her cot.
;
(defrule peep3
(declare (salience 4700))
(id-root ?id peep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIM-cIM_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peep.clp 	peep3   "  ?id "  cIM-cIM_kara )" crlf))
)

;"peep","V","1.cIM-cIM_karanA"
;The class girls had been silent for the entire period with out peeping.
;--"1.JAzkanA"
;The man was peeping through the hole.
;
