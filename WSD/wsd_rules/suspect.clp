
(defrule suspect0
(declare (salience 5000))
(id-root ?id suspect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanxehayukwa_manuRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suspect.clp 	suspect0   "  ?id "  sanxehayukwa_manuRya )" crlf))
)

;"suspect","Adj","1.sanxehayukwa_manuRya"
;Two suspects ran away after seeing the police.
;
(defrule suspect1
(declare (salience 4900))
(id-root ?id suspect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanxeha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suspect.clp 	suspect1   "  ?id "  sanxeha_kara )" crlf))
)

;"suspect","V","1.sanxeha_karanA"
;Police suspects the Ram when he was seen with the robberers.
;
