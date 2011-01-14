
(defrule primitive0
(declare (salience 5000))
(id-root ?id primitive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axima))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primitive.clp 	primitive0   "  ?id "  Axima )" crlf))
)

(defrule primitive1
(declare (salience 4900))
(id-root ?id primitive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAcIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primitive.clp 	primitive1   "  ?id "  prAcIna )" crlf))
)

;"primitive","Adj","1.prAcIna"
;Evidence of the primitive civilisation have helped us to imagine our own history.
;
;