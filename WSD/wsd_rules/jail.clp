
(defrule jail0
(declare (salience 5000))
(id-root ?id jail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArAgAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jail.clp 	jail0   "  ?id "  kArAgAra )" crlf))
)

;"jail","N","1.kArAgAra"
;The criminal was put in the jail.
;
(defrule jail1
(declare (salience 4900))
(id-root ?id jail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArAvAsa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jail.clp 	jail1   "  ?id "  kArAvAsa_ho )" crlf))
)

;"jail","V","1.kArAvAsa_honA"
;He was jailed for 10yrs.
;
