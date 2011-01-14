
(defrule contest0
(declare (salience 5000))
(id-root ?id contest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiyogiwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contest.clp 	contest0   "  ?id "  prawiyogiwA )" crlf))
)

;"contest","N","1.prawiyogiwA"
;Her daughter has won the dance contest.
;--"2.saMGarRa"
;There was a tough contest for the leadership.
;
(defrule contest1
(declare (salience 4900))
(id-root ?id contest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukAbalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contest.clp 	contest1   "  ?id "  mukAbalA_kara )" crlf))
)

;"contest","VT","1.mukAbalA_karanA"
;They contested for the post of speaker in the parliament.
;--"2.warka_karanA"
;His step brother contested for his right in the property.
;
