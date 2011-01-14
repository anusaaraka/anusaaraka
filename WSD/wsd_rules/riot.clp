
(defrule riot0
(declare (salience 5000))
(id-root ?id riot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaMgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  riot.clp 	riot0   "  ?id "  xaMgA )" crlf))
)

(defrule riot1
(declare (salience 4900))
(id-root ?id riot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaMgA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  riot.clp 	riot1   "  ?id "  xaMgA_kara )" crlf))
)

;"riot","VT","1.xaMgA_karanA"
;During campaigning protesters rioted with opposition.
;
;