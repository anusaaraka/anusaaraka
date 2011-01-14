
(defrule gash0
(declare (salience 5000))
(id-root ?id gash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA_GAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gash.clp 	gash0   "  ?id "  gaharA_GAva )" crlf))
)

;"gash","N","1.gaharA_GAva"
;The accident left a deep gash on his back.
;
(defrule gash1
(declare (salience 4900))
(id-root ?id gash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA_GAva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gash.clp 	gash1   "  ?id "  gaharA_GAva_kara )" crlf))
)

;"gash","VT","1.gaharA_GAva_karanA"
;He gashed her hand with a knife.
;
