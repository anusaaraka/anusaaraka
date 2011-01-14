
(defrule adequate0
(declare (salience 5000))
(id-root ?id adequate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adequate.clp 	adequate0   "  ?id "  paryApwa )" crlf))
)

(defrule adequate1
(declare (salience 4900))
(id-root ?id adequate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adequate.clp 	adequate1   "  ?id "  paryApwa )" crlf))
)

;"adequate","Adj","1.paryApwa"
;Whenever you go on a journey take adequate water && food.
;--"2.yogya"
;Rajat is not adequate to the task.
;
;
