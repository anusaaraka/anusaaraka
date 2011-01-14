
(defrule ache0
(declare (salience 5000))
(id-root ?id ache)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ache.clp 	ache0   "  ?id "  pIdZA )" crlf))
)

;"ache","N","1.pIdZA"
;My body was in all aches && pains after the accident.
;
(defrule ache1
(declare (salience 4900))
(id-root ?id ache)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ache.clp 	ache1   "  ?id "  xarxa_kara )" crlf))
)

;"ache","V","1.xarxa_karanA"
;My heart aches on seeing her suffer.
;
