
(defrule fluid0
(declare (salience 5000))
(id-root ?id fluid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fluid.clp 	fluid0   "  ?id "  warala )" crlf))
)

;"fluid","Adj","1.warala"
;Milk is a fluid substance.
;--"2.lacIlA"
;We have a fluid arrangement of work here.
;She had a fluid grace in her dance.
;
(defrule fluid1
(declare (salience 4900))
(id-root ?id fluid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xrava_paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fluid.clp 	fluid1   "  ?id "  xrava_paxArWa )" crlf))
)

;"fluid","N","1.xrava_paxArWa"
;In diseases like dysentary there is a lot of fluid from the body which should be replenished to save life of patient.
;
