
(defrule pour0
(declare (salience 5000))
(id-root ?id pour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUsalAXAra_varRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pour.clp 	pour0   "  ?id "  mUsalAXAra_varRA )" crlf))
)

(defrule pour1
(declare (salience 4900))
(id-root ?id pour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pour.clp 	pour1   "  ?id "  baha )" crlf))
)

;"pour","V","1.bahanA"
;His tears were pouring down while he heard that news.
;--"2.bahA xenA"
;She poured out all the remaining water. 
;--"3.mUsalaXAra barasanA"
;It's pouring outside.
;--"4.pravAhiwa_honA"
;Commuters were pouring in to the station.
;
;