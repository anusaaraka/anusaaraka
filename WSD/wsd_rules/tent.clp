
(defrule tent0
(declare (salience 5000))
(id-root ?id tent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wambU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tent.clp 	tent0   "  ?id "  wambU )" crlf))
)

;"tent","N","1.wambU"
;A tent has to be pitched for the function.
;
(defrule tent1
(declare (salience 4900))
(id-root ?id tent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id derA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tent.clp 	tent1   "  ?id "  derA_lagA )" crlf))
)

;"tent","VTI","1.derA_lagA"
;He tented the tarpaulin on th eriver bank.
;
