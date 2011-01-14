
;Modified by Meena(24.02.10)
;Added by Meena(20.11.09)
;It had only a tenth of the sun's mass but showed some wobbling which could be due to planets in its orbit . 
(defrule due0
(declare (salience 5000))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(viSeRya-to_saMbanXI  ?id ?)
;(idiom_type_1  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ke_kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " due.clp	due0  "  ?id "  " ?id1 "  ke_kAraNa  )" crlf))
)


;Salience reduced by Meena(20.11.09)
(defrule due1
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  due.clp 	due1   "  ?id "  xeya )" crlf))
)

;"due","Adj","1.xeya/qNa"
;Payment is due
;All due respect
;Gave my comments due consideration
;--"2.prawIkRiwa"
;The train is due in 1.minutes
;
(defrule due2
(declare (salience 4900))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  due.clp 	due2   "  ?id "  xeya )" crlf))
)

;"due","N","1.xeya/qNa"
;Give the devil his due
;The society dropped him for non-payment of dues
;
