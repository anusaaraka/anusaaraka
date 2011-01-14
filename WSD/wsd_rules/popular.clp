
(defrule popular0
(declare (salience 5000))
(id-root ?id popular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lokapriya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  popular.clp 	popular0   "  ?id "  lokapriya )" crlf))
)

;"popular","Adj","1.lokapriya"
(defrule popular1
(declare (salience 4900))
(id-root ?id popular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lokapriya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  popular.clp 	popular1   "  ?id "  lokapriya )" crlf))
)

;"popular","N","1.lokapriya"
;Disco theques are now-a-days very popular among youths.
;--"2.janapriya"
;Ritu beri's designs are very popular among the people all over India.
;--"3.loka-/jana-"
;He is a leader with widespread popular support.
;
