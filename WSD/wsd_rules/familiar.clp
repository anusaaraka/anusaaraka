
(defrule familiar0
(declare (salience 5000))
(id-root ?id familiar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnA_pahacAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiar.clp 	familiar0   "  ?id "  jAnA_pahacAnA )" crlf))
)

(defrule familiar1
(declare (salience 4900))
(id-root ?id familiar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnA-mAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiar.clp 	familiar1   "  ?id "  jAnA-mAnA )" crlf))
)

;"familiar","Adj","1.jAnA-mAnA"
;Amitabh Bacchan is a very a familiar figure.
;--"2.pariciwa"
;I am very familiar with people of Ratlam.
;
;