
(defrule peeve0
(declare (salience 5000))
(id-root ?id peeve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id peeved )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kruxXa_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  peeve.clp  	peeve0   "  ?id "  kruxXa_huA )" crlf))
)

;"peeved","Adj","1.kruxXa huA"
;When I told Lata on phone that I saw her with Mohan she was so peeved that she scolded me.
;
(defrule peeve1
(declare (salience 4900))
(id-root ?id peeve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peeve.clp 	peeve1   "  ?id "  ciDZA )" crlf))
)

;"peeve","V","1.ciDZAnA"
;I am already sad because of my half yearly results, so please do not peeve me further by laughing at me.
;
;