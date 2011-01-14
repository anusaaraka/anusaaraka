
(defrule taste0
(declare (salience 5000))
(id-root ?id taste)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taste.clp 	taste0   "  ?id "  svAxa )" crlf))
)

(defrule taste1
(declare (salience 4900))
(id-root ?id taste)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taste.clp 	taste1   "  ?id "  svAxa_le )" crlf))
)

;"taste","VTI","1.svAxa_le"
;Taste the curry .
;
;