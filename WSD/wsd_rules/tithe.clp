
(defrule tithe0
(declare (salience 5000))
(id-root ?id tithe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xasavAz_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tithe.clp 	tithe0   "  ?id "  xasavAz_BAga )" crlf))
)

;"tithe","N","1.xasavAz_BAga"
;The landlord is demanding a tithe of the produce from the farmer .
;
(defrule tithe1
(declare (salience 4900))
(id-root ?id tithe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xasavAz_BAga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tithe.clp 	tithe1   "  ?id "  xasavAz_BAga_xe )" crlf))
)

;"tithe","V","1.xasavAz_BAga_xenA"
;The farmer gave a tithe to his landlord.
;
