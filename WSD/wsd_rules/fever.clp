
(defrule fever0
(declare (salience 5000))
(id-root ?id fever)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fevered )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id buKAra_se_graswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fever.clp  	fever0   "  ?id "  buKAra_se_graswa )" crlf))
)

;"fevered","Adj","1.buKAra_se_graswa"
;I cooled his fevered body by starting the fan.
;--"2.awi_uwwejiwa_honA"
;He normally has fevered negotiations with the employee's unions.
;
(defrule fever1
(declare (salience 4900))
(id-root ?id fever)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buKAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fever.clp 	fever1   "  ?id "  buKAra )" crlf))
)

;"fever","N","1.buKAra"
;He has a very high fever.
;--"2.uwwejanA"
;I waited for my new car in fever of excitement.
;
;