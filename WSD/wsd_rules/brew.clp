
(defrule brew0
(declare (salience 5000))
(id-root ?id brew)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id umadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brew.clp 	brew0   "  ?id "  umadZa )" crlf))
)

;"brew","VI","1.umadZanA"
;The tea is brewing
;
(defrule brew1
(declare (salience 4900))
(id-root ?id brew)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maxya_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brew.clp 	brew1   "  ?id "  maxya_banA )" crlf))
)

;"brew","VT","1.maxya_banAnA"
;They brew wine every year.
;
