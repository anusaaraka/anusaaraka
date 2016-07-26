;@@@ Added by Preeti(7-12-13)
;She is a very capable teacher. 
;vaha eka awyanwa yogya SikRaka hE.
(defrule capable2
(declare (salience 4950))
(id-root ?id capable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  capable.clp 	capable2   "  ?id "  yogya )" crlf))
)


;(defrule capable0
;(declare (salience 5000))
;(id-root ?id capable)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id kRamawAvAna))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  capable.clp 	;capable0   "  ?id "  kRamawAvAna )" crlf))
;)

(defrule capable1
(declare (salience 4900))
(id-root ?id capable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  capable.clp 	capable1   "  ?id "  samarWa )" crlf))
)

;"capable","Adj","1.samarWa"
;Capable of winning
;A passage capable of misinterpretation
;No one believed her capable of murder
;
;
