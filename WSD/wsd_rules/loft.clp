
(defrule loft0
(declare (salience 5000))
(id-root ?id loft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id atArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loft.clp 	loft0   "  ?id "  atArI )" crlf))
)

;"loft","N","1.atArI/xuCawwI"
;Put it in the loft.
;
(defrule loft1
(declare (salience 4900))
(id-root ?id loft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loft.clp 	loft1   "  ?id "  uCAla )" crlf))
)

;"loft","V","1.uCAlanA"
;A lofted drive.
;
