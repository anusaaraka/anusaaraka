
(defrule delirious0
(declare (salience 5000))
(id-root ?id delirious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaXika_uwwejiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delirious.clp 	delirious0   "  ?id "  awyaXika_uwwejiwa )" crlf))
)

(defrule delirious1
(declare (salience 4900))
(id-root ?id delirious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behoSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delirious.clp 	delirious1   "  ?id "  behoSa )" crlf))
)

;"delirious","Adj","1.behoSa"
;The beggar appeared to be sick && delirious && could not move properly.
;--"2.unmawwa{KuSI_se}"
;The performer faced a delirious crowd.
;Hari was delirious while opening the gift.
;
;
