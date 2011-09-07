;Modified by Meena(6.9.11)
;He had spend a brilliant day.
;It is a brilliant news, I am absolutely delighted.
(defrule brilliant0
(declare (salience 5000))
(id-root ?id brilliant)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 night|evening|time|hour|start|season|news|idea|form)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_baDiya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  brilliant.clp  	brilliant0   "  ?id "  bahuwa_baDiya )" crlf))
)



;Modified by Meena(6.9.11)
;Meanwhile, brilliant weather continued unbroken.
;The sun was brilliant;
(defrule brilliant1
(declare (salience 5000))
(id-root ?id brilliant)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 day|morning|light|sun|moon|daylight|colour|color|weather|sunshine|star|star|smile|eye)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejomaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  brilliant.clp  	brilliant1   "  ?id "  wejomaya )" crlf))
)



;Modified by Meena(6.9.11)
;He was one of the most brilliant defensive players.
;She achieved a brilliant academic career.
(defrule brilliant2
(declare (salience 0))
(id-root ?id brilliant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiBASAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  brilliant.clp  	brilliant2   "  ?id "  prawiBASAlI )" crlf))
)

