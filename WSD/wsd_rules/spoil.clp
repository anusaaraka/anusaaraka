
(defrule spoil0
(declare (salience 5000))
(id-root ?id spoil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spoil.clp 	spoil0   "  ?id "  lUta )" crlf))
)

;"spoil","N","1.lUta"
;The spoils are distributed equally among the thieves.
;--"2.PZAyaxA_munAPA"
;The officers shared spoils of trender.
;
(defrule spoil1
(declare (salience 4900))
(id-root ?id spoil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bigAdZaxe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spoil.clp 	spoil1   "  ?id "  bigAdZaxe )" crlf))
)

;"spoil","V","1.bigAdZaxenA/KarAba_kara_xenA"
;A mental elephant spoiled the field completely.
;--"2.lAdZa-pyAra_se_bigAdZanA"
;Our neighbours spoil their children.
;
