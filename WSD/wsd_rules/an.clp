
;Added by Meena(27.4.10)
;He felt an utter fool . 
(defrule an0
(declare (salience 5000))
(id-root ?id an)
?mng <-(meaning_to_be_decided ?id)
;(id-root =(+ ?id 1) ?word)
(viSeRya-viSeRaNa ?id1 =(+ ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  an.clp        an0   "  ?id "  - )" crlf))
)






(defrule an1
(declare (salience 10)) ; Salience reduced by Roja (27-12-13)
(id-root ?id an)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner);$$$ Modified category from 'Art' to 'determiner' by Roja. (27-12-13)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  an.clp 	an1   "  ?id "  eka )" crlf))
)




;Modified by Meena(28.4.10)
;Added by Meena(4.12.09)
;An income tax increase may be necessary .
(defrule an2
(declare (salience 4900))
(id-root ?id an)
?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) ?word)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 =(+ ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  an.clp        an2   "  ?id "  - )" crlf))
)


;Salience reduced by Meena(4.12.09)
(defrule an3
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id an)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  an.clp 	an3   "  ?id "  eka )" crlf))
)

;"an","Art","2.eka"
;She bought an umbrella.
;
