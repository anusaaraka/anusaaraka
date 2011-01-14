
(defrule outcast0
(declare (salience 5000))
(id-root ?id outcast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahiRkqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outcast.clp 	outcast0   "  ?id "  bahiRkqwa )" crlf))
)

;"outcast","Adj","1.bahiRkqwa"
;He married a foreigner. He was outcast by his kith && kin.
;
(defrule outcast1
(declare (salience 4900))
(id-root ?id outcast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahiRkqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outcast.clp 	outcast1   "  ?id "  bahiRkqwa )" crlf))
)

;"outcast","N","1.bahiRkqwa"
;He married a foreigner. He was outcast by his kith && kin.
;
