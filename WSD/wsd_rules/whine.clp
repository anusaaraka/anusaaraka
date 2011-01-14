
(defrule whine0
(declare (salience 5000))
(id-root ?id whine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karNaBexI_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whine.clp 	whine0   "  ?id "  karNaBexI_AvAja )" crlf))
)

;"whine","N","1.karNaBexI_AvAja"
;The whine coming from the machines was unbearable.
;--"2.cIKa"
;The whine of the child distracted many people.
;
(defrule whine1
(declare (salience 4900))
(id-root ?id whine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whine.clp 	whine1   "  ?id "  karAha )" crlf))
)

;"whine","VT","1.karAhanA"
;The girl was whinning from pain.
;
