
(defrule living0
(declare (salience 5000))
(id-root ?id living)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  living.clp 	living0   "  ?id "  jIviwa )" crlf))
)

;"living","Adj","1.jIviwa"
;Living organisms.
;--"2.kriyASIla"
;Living custom.
;
(defrule living1
(declare (salience 4900))
(id-root ?id living)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjIvikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  living.clp 	living1   "  ?id "  AjIvikA )" crlf))
)

;"living","N","1.AjIvikA"
;Everybody has to work for a living.
;--"2.jIvana_yApana_viXi"
;Simple living && high thinking.
;

;Added by Sheetal (09-09-09) 
(defrule sh-living2
(declare (salience 5001))
(id-word ?id living)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verbal_noun)
(or (id-word =(+ ?id 1) in|on)(id-word =(- ?id 2) idea))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  living.clp    sh-living2   "  ?id "  rahanA )" crlf))
)
;I like the idea of living in the countryside but I am not sure I would like the reality .
;I do not like the idea of living so far away from my family .

