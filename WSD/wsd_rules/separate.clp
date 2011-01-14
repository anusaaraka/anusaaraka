
(defrule separate0
(declare (salience 5000))
(id-root ?id separate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  separate.clp 	separate0   "  ?id "  alaga )" crlf))
)

;"separate","Adj","1.alaga/pqWaka"
;The children sleep in seperate beds.
;--"2.Binna"
;That is a seperate issue && irrelevant to our discussion.
;
(defrule separate1
(declare (salience 4900))
(id-root ?id separate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  separate.clp 	separate1   "  ?id "  alaga_ho )" crlf))
)

;"separate","V","1.alaga_ho"
