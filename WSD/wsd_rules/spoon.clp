
(defrule spoon0
(declare (salience 5000))
(id-root ?id spoon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cammaca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spoon.clp 	spoon0   "  ?id "  cammaca )" crlf))
)

;"spoon","N","1.cammaca"
;Without spoon we can't eat ice-cream.
;
(defrule spoon1
(declare (salience 4900))
(id-root ?id spoon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cammaca_se_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spoon.clp 	spoon1   "  ?id "  cammaca_se_le )" crlf))
)

;"spoon","V","1.cammaca_se_lenA"
;Spoon sugar from the packet into the bowl.
;
