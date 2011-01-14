
;Added by Meena(18.5.10)
;He had an actor's typically malleable features.
(defrule typically0
(declare (salience 5000))
(id-root ?id typically)
?mng <-(meaning_to_be_decided ?id)
(viSeRaNa-viSeRaka  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAsa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  typically.clp   typically0   "  ?id "  KAsa )" crlf))
)



;Added by Meena(19.5.10)
;Paul, in typically rude fashion, told him he was talking rubbish.
(defrule typically1
(declare (salience 5000))
(id-root ?id typically)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 rude|impolite)
(viSeRaNa-viSeRaka  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axawana ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  typically.clp   typically1   "  ?id "   Axawana )" crlf))
)




;Added by Meena(18.5.10)
;Typically , she could not find her keys . 
;He was typically modest about his achievements . 
(defrule typically2
(declare (salience 5002))
(id-root ?id typically)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id1 ?verb)
(or(wall_conjunction ?id)
    (and(kriyA-kriyA_viSeRaNa ?id1 ?id)(test(< ?id1 ?id)))
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hameSA_kI_waraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  typically.clp   typically2   "  ?id "   hameSA_kI_waraha )" crlf))
)





;Added by Meena(18.5.10)
;The factory typically produces 500 chairs a week.
(defrule typically3
(declare (salience 5000))
(id-root ?id typically)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ama_wOra_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  typically.clp   typically3   "  ?id "  Ama_wOra_para )" crlf))
)











