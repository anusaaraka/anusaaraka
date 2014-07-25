
;$$$ Modified by Anita-4.3.2014
;His response to the accusation was rapid. [cambridge dictionary]
;अभियोग को उसका उत्तर शीघ्र था । 
(defrule rapid1
(declare (salience 4900))
(id-root ?id rapid)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ? ?id) ;Added relation by Anita
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rapid.clp 	rapid1   "  ?id "  SIGra )" crlf))
)
;@@@ Added by Anita--24.2.2014
;The world's resources are rapidly diminishing. [By mail]
;विश्व के संसाधन शीघ्रता से कम हो रहे हैं ।
(defrule rapid2
(declare (salience 4800))
(id-root ?id rapid)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ? ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGrawA_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rapid.clp 	rapid2   "  ?id "  SIGrawA_se )" crlf))
)

;"rapid","Adj","1.SIGra"
;@@@ Added by Anita--24.2.2014
;There has been a rapid increase in the prices of gold & silver recently. [old clp. sentence]
;सोने और चांदी की कीमतों में त्वरित वृद्धि हुई है ।
(defrule rapid3
(declare (salience 4700))
(id-root ?id rapid)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wvariwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rapid.clp 	rapid3   "  ?id "  wvariwa )" crlf))
)
;################################default-rule#######################################

(defrule rapid0
(id-root ?id rapid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rapid.clp 	rapid0   "  ?id "  wejZa )" crlf))
)
