
(defrule shaky0
(declare (salience 5000))
(id-root ?id shaky)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kampAyamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shaky.clp 	shaky0   "  ?id "  kampAyamAna )" crlf))
)

(defrule shaky1
(declare (salience 4900))
(id-root ?id shaky)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kampAyamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shaky.clp 	shaky1   "  ?id "  kampAyamAna )" crlf))
)

;"shaky","Adj","1.kampAyamAna"
;Her hands are shaky because she's nervous.
;--"2.asWira"
;The government is looking rather shaky at the moment.
;
;
