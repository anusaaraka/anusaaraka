
(defrule pump0
(declare (salience 5000))
(id-root ?id pump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pampa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pump.clp 	pump0   "  ?id "  pampa )" crlf))
)

;"pump","N","1.pampa/xamakala"
;The mechanic used pump to fill air in  my bicycle.
;
(defrule pump1
(declare (salience 4900))
(id-root ?id pump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pump.clp 	pump1   "  ?id "  Bara )" crlf))
)

;"pump","V","1.BaranA"
;The doctor immediately pumped oxygen to the patient's heart to bring his beat to normal.
;--"2.pAnI_nikAlanA"
;He used a motor to pump water from the well.
;
