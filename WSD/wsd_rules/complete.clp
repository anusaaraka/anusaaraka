
(defrule complete0
(declare (salience 5000))
(id-root ?id complete)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  complete.clp 	complete0   "  ?id "  pUrA )" crlf))
)

;"complete","Adj","1.pUrA"
;You should have a complete meal everyday.
;
(defrule complete1
(declare (salience 4900))
(id-root ?id complete)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  complete.clp 	complete1   "  ?id "  pUrA_kara )" crlf))
)

;"complete","V","1.pUrA_karanA"
;Did you complete your homework?
;
