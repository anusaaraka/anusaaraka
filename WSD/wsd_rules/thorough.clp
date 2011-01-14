
(defrule thorough0
(declare (salience 5000))
(id-root ?id thorough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thorough.clp 	thorough0   "  ?id "  bilkula )" crlf))
)

(defrule thorough1
(declare (salience 4900))
(id-root ?id thorough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thorough.clp 	thorough1   "  ?id "  pUrA )" crlf))
)

;"thorough","Adj","1.pUrA"
;He is confident && thorough in his subject.
;--"2.awisAvaXAna"
;Our accountant is thorough in the accounts.
;
;
