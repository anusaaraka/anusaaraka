
(defrule ruby0
(declare (salience 5000))
(id-root ?id ruby)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ruby.clp 	ruby0   "  ?id "  surKa )" crlf))
)

;"ruby","Adj","1.surKa"
;She has a big dark ruby colour stone in her ring finger.  
;
(defrule ruby1
(declare (salience 4900))
(id-root ?id ruby)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAla_maNi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ruby.clp 	ruby1   "  ?id "  lAla_maNi )" crlf))
)

;"ruby","N","1.lAla_maNi"
;I have a beautiful ruby.                                
;
