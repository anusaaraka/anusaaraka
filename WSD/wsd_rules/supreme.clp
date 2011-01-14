
(defrule supreme0
(declare (salience 5000))
(id-root ?id supreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uccawama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  supreme.clp 	supreme0   "  ?id "  uccawama )" crlf))
)

(defrule supreme1
(declare (salience 4900))
(id-root ?id supreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarvocca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  supreme.clp 	supreme1   "  ?id "  sarvocca )" crlf))
)

;"supreme","Adj","1.sarvocca"
;He filed a petition for his case in the Supreme Court.
;
;
