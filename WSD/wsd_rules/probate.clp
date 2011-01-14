
(defrule probate0
(declare (salience 5000))
(id-root ?id probate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramANiwa_icCApawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  probate.clp 	probate0   "  ?id "  pramANiwa_icCApawra )" crlf))
)

;"probate","N","1.pramANiwa_icCApawra"
;He was granted a probate regarding his father's will.
;
(defrule probate1
(declare (salience 4900))
(id-root ?id probate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMpramANiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  probate.clp 	probate1   "  ?id "  saMpramANiwa_kara )" crlf))
)

;"probate","V","1.saMpramANiwa_karanA"
;There is an urgent need to probate this will.
;
