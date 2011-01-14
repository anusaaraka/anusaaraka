
(defrule flag0
(declare (salience 5000))
(id-root ?id flag)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flagged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pawWara_jadanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flag.clp  	flag0   "  ?id "  pawWara_jadanA )" crlf))
)

;"flagged","Adj","1.pawWara_jadanA"
;The courtyard is flagged with flagstone.
;
;
(defrule flag1
(declare (salience 4900))
(id-root ?id flag)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAWa_xekara_roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flag.clp	flag1  "  ?id "  " ?id1 "  hAWa_xekara_roka  )" crlf))
)

;You might be able to flag the car down?
;wuma SAyaxa gAdZI ko hAWa xekara roka sakawe ho?
(defrule flag2
(declare (salience 4800))
(id-root ?id flag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JaMdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flag.clp 	flag2   "  ?id "  JaMdA )" crlf))
)

;"flag","N","1.JaMdA"
;National flag is flown on all Government Buildings.
;--"2.eka_waraha_kA_pedZa"
;Flag plant normally grows near water.
;
(defrule flag3
(declare (salience 4700))
(id-root ?id flag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flag.clp 	flag3   "  ?id "  saMkewa_xe )" crlf))
)

;"flag","V","1.saMkewa_xenA"
;He flagged down the taxi.
;All items in this shop are flagged to indicate the prices.
;--"2.kamajZora_honA"
;Due to age the chairman's interest in the company was flagging.
;
