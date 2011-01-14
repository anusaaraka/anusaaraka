
(defrule rid0
(declare (salience 5000))
(id-root ?id rid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rid.clp 	rid0   "  ?id "  mukwa_kara )" crlf))
)

;"rid","VT","1.mukwa_karanA"
;He wants to get rid of his bad company. 
;
(defrule rid1
(declare (salience 4900))
(id-root ?id rid)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ridden )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id se_pUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rid.clp  	rid1   "  ?id "  se_pUrNa )" crlf))
)

;"ridden","Adj","1.se_pUrNa"
;She was ridden by guilt after the accident.
;
;
;
