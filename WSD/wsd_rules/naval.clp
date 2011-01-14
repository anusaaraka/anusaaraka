
(defrule naval0
(declare (salience 5000))
(id-root ?id naval)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOsEnika-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  naval.clp 	naval0   "  ?id "  nOsEnika- )" crlf))
)

(defrule naval1
(declare (salience 4900))
(id-root ?id naval)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmuxrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  naval.clp 	naval1   "  ?id "  sAmuxrika )" crlf))
)

;"naval","Adj","1.sAmuxrika"
;The naval force of that country is very huge.
;
;
