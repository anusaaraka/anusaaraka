
(defrule upgrade0
(declare (salience 5000))
(id-root ?id upgrade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upgrade.clp 	upgrade0   "  ?id "  caDZAI )" crlf))
)

;"upgrade","N","1.caDZAI"
;There has been a major upgrade in defence technology.
;
(defrule upgrade1
(declare (salience 4900))
(id-root ?id upgrade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unnawi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upgrade.clp 	upgrade1   "  ?id "  unnawi_kara )" crlf))
)

;"upgrade","VT","1.unnawi_karanA"
;We should upgrade the defence technology.
;
