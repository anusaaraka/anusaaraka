
(defrule substantial0
(declare (salience 5000))
(id-root ?id substantial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sArWaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  substantial.clp 	substantial0   "  ?id "  sArWaka )" crlf))
)

(defrule substantial1
(declare (salience 4900))
(id-root ?id substantial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCI_mAwrA_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  substantial.clp 	substantial1   "  ?id "  acCI_mAwrA_meM )" crlf))
)

;"substantial","Adj","1.acCI mAwrA meM"
;There was substantial improvement in his health.
;
;