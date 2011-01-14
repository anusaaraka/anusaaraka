
(defrule wager0
(declare (salience 5000))
(id-root ?id wager)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wager.clp 	wager0   "  ?id "  hodZa )" crlf))
)

;"wager","N","1.hodZa"
;He put a wager on India's win against the South Africa in the World Cup.
;
(defrule wager1
(declare (salience 4900))
(id-root ?id wager)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzva_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wager.clp 	wager1   "  ?id "  xAzva_lagA )" crlf))
)

;"wager","VT","1.xAzva_lagAnA"
;He took a wager on who would win in the Wimbledon 
;
