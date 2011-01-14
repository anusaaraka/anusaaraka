;Added by Meena(25.02.10)
;Certain phenomena can be approached better by certain techniques.
(defrule certain0
(declare (salience 5000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 technique)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certain.clp   certain0   "  ?id "  KAsa )" crlf))
)


;Added by Meena(25.02.10)
;Certain phenomena can be approached better by certain techniques.
(defrule certain1
(declare (salience 4000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 ~death)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certain.clp   certain1   "  ?id "  kuCa )" crlf))
)


;Salience reduced by Meena(25.02.10)
(defrule certain2
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certain.clp 	certain2   "  ?id "  niSciwa )" crlf))
)

;"certain","Adj","1.niSciwa"
;You must set aside a certain sum each week.
;


;Salience reduced by Meena(25.02.10)
(defrule certain3
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certain.clp 	certain3   "  ?id "  kuCa )" crlf))
)

;"certain","Pron","1.kuCa"
;Certain of those present had had too much to drink.
;
