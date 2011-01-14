
(defrule fork0
(declare (salience 5000))
(id-root ?id fork)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id forked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kAzte_jEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fork.clp  	fork0   "  ?id "  kAzte_jEsA )" crlf))
)

;"forked","Adj","1.kAzte_jEsA"
;Snake has a forked tongue.
;
;
(defrule fork1
(declare (salience 4900))
(id-root ?id fork)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 axA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fork.clp	fork1  "  ?id "  " ?id1 "  axA_kara  )" crlf))
)

;She forked out five thousand rupees to her landlord.
;usane makAna mAlika ko pAzca hajZAra rupaE axA kara xie
(defrule fork2
(declare (salience 4800))
(id-root ?id fork)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fork.clp 	fork2   "  ?id "  nikAla_xe )" crlf))
)

;default_sense && category=verb	viBAjiwa_ho	0
;"fork","VI","1.viBAjiwa_honA"
;This road forks just beyond the bridge.
;--"2.kAzte_se_nikAlanA/KoxanA_Axi"
;The farmer forked the manure into the soil.
;
;
