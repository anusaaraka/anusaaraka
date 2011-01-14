
(defrule automatic0
(declare (salience 5000))
(id-root ?id automatic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svacAliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  automatic.clp 	automatic0   "  ?id "  svacAliwa )" crlf))
)

(defrule automatic1
(declare (salience 4900))
(id-root ?id automatic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svacAliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  automatic.clp 	automatic1   "  ?id "  svacAliwa )" crlf))
)

;"automatic","Adj","1.svacAliwa"
;All the controls in the car are automatic.
;kAra ke saBI kaMtrolsa svacAliwa hEM.
;--"2.aviveciwa"
;For most of us breathing is automatic.
;hama me se aXikawara ke lie sAMsa lenA aviveciwa hE.
;
;