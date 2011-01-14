
(defrule reserve0
(declare (salience 5000))
(id-root ?id reserve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id reserved )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id amilanasAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reserve.clp  	reserve0   "  ?id "  amilanasAra )" crlf))
)

;"reserved","Adj","1.amilanasAra/saMkocI"
;She is too reserved to be popular.
;
(defrule reserve1
(declare (salience 4900))
(id-root ?id reserve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awirikwa_niXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reserve.clp 	reserve1   "  ?id "  awirikwa_niXi )" crlf))
)

;"reserve","N","1.awirikwa_niXi"
;--"2.rijZarva_senA"
;Reserves military forces kept back for use when needed.   
;--"3.prawibaMXa"
;Your statement is accepted without any reserve.
;--"4.nyUnawama_mUlya"
;Put a reserve of Rs.2,00000 on this house.
;
(defrule reserve2
(declare (salience 4800))
(id-root ?id reserve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reserve.clp 	reserve2   "  ?id "  bacA_raKa )" crlf))
)

;"reserve","VT","1.bacA_raKanA"
;Reserve your strength for the examination days.
;--"2.ArakRiwa_karanA"
;I decided to reserve my judgement until I knew all the facts.
;Reserve a table for two in my name.
;--"3.ArakRiwa_honA"
;These seats are reserved for ladies. 
;
