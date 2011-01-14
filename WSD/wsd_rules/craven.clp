
(defrule craven0
(declare (salience 5000))
(id-root ?id craven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id darapoka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  craven.clp 	craven0   "  ?id "  darapoka )" crlf))
)

;"craven","Adj","1.darapoka"
;The craven fellow turned && ran.
;
(defrule craven1
(declare (salience 4900))
(id-root ?id craven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAyara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  craven.clp 	craven1   "  ?id "  kAyara )" crlf))
)

;"craven","N","1.kAyara/uwsAhahIna_manuRya"
;Due to his bad health,he became craven. 
;
