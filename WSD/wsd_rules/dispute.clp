
(defrule dispute0
(declare (salience 5000))
(id-root ?id dispute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dispute.clp 	dispute0   "  ?id "  vivAxa )" crlf))
)

;"dispute","N","1.vivAxa"
;The workers' union is in dispute with the management.
;
(defrule dispute1
(declare (salience 4900))
(id-root ?id dispute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dispute.clp 	dispute1   "  ?id "  vivAxa_kara )" crlf))
)

;"dispute","VT","1.vivAxa_karanA"
;The workers' union disputed with the management on the issue of bonus.
;
