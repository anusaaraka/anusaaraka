
(defrule attractive0
(declare (salience 5000))
(id-root ?id attractive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mohaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attractive.clp 	attractive0   "  ?id "  mohaka )" crlf))
)

(defrule attractive1
(declare (salience 4900))
(id-root ?id attractive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkarRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attractive.clp 	attractive1   "  ?id "  AkarRaka )" crlf))
)

;"attractive","Adj","1.AkarRaka"
;She has an attractive personality.
;
;
