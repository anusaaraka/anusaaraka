
(defrule barter0
(declare (salience 5000))
(id-root ?id barter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axalA-baxalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  barter.clp 	barter0   "  ?id "  axalA-baxalI )" crlf))
)

;"barter","N","1.axalA-baxalI/vinimaya"
;In ancient times wheat was a barter for machinery.
;
(defrule barter1
(declare (salience 4900))
(id-root ?id barter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu-vinimaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  barter.clp 	barter1   "  ?id "  vaswu-vinimaya_kara )" crlf))
)

;"barter","V","1.vaswu-vinimaya_karanA"
;In ancient times wheat was bartered for machinery.
;
