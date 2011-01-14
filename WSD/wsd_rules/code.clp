
(defrule code0
(declare (salience 5000))
(id-root ?id code)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMhiwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  code.clp 	code0   "  ?id "  saMhiwA )" crlf))
)

(defrule code1
(declare (salience 4900))
(id-root ?id code)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUta_saMkewa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  code.clp 	code1   "  ?id "  kUta_saMkewa_xe )" crlf))
)

;"code","V","1.kUta_saMkewa_xenA"
;The Intelligence agency coded the messages.
;
;