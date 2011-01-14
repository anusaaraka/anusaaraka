
(defrule radio0
(declare (salience 5000))
(id-root ?id radio)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id redio))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  radio.clp 	radio0   "  ?id "  redio )" crlf))
)

;default_sense && category=noun	bewAra_kA_wAra	0
;"radio","N","1.bewAra_kA_wAra"
;Contact an aircraft by radio signals.   
;
(defrule radio1
(declare (salience 4900))
(id-root ?id radio)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id redio_signala_se_saMxeSa_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  radio.clp 	radio1   "  ?id "  redio_signala_se_saMxeSa_Beja )" crlf))
)

;default_sense && category=verb	bewAra_kA_wAra_Beja	0
;"radio","VTI","1.bewAra_kA_wAra_BejanA"
;We radioed to the police control room that we are in trouble. 
;
