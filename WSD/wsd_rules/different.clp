;Modified by Meena(9.3.10);deleted (id-word =(+ ?id 1) pl) added (viSeRya-wulanAwmaka.......)
;Thomas Edison tried two thousand different materials in search of a filament for the light bulb .(9th parse) 
(defrule different0
(declare (salience 5000))
(id-root ?id different)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-wulanAwmaka_viSeRaNa  ?id1 ?id)
;(id-word =(+ ?id 1) pl)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_alaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  different.clp 	different0   "  ?id "  alaga_alaga )" crlf))
)







(defrule different1
(declare (salience 4900))
(id-root ?id different)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) sg)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  different.clp 	different1   "  ?id "  alaga )" crlf))
)

(defrule different2
(declare (salience 4800))
(id-root ?id different)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  different.clp 	different2   "  ?id "  alaga )" crlf))
)

;"different","Adj","1.alaga"
;Both of them took different approaches to the problem.
;
;
