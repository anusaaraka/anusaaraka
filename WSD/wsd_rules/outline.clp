
(defrule outline0
(declare (salience 5000))
(id-root ?id outline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpareKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outline.clp 	outline0   "  ?id "  rUpareKA )" crlf))
)

;"outline","N","1.rUpareKA"
;That is an outline map of Maharashtra.
;
(defrule outline1
(declare (salience 4900))
(id-root ?id outline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpareKA_AreKiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outline.clp 	outline1   "  ?id "  rUpareKA_AreKiwa_kara )" crlf))
)

;"outline","V","1.rUpareKA_AreKiwa_karanA"
;You must outline the important sentences with a marker.
;

;Added by sheetal(5-01-10).
(defrule outline2
(declare (salience 4950))
(id-root ?id outline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI ?id ?id1)
(id-word ?id1 marker)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golIkqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outline.clp   outline2   "  ?id "  golIkqwa_kara )" crlf))
)
