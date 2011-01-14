
(defrule flourish0
(declare (salience 5000))
(id-root ?id flourish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaMkaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flourish.clp 	flourish0   "  ?id "  alaMkaraNa )" crlf))
)

;"flourish","N","1.alaMkaraNa"
;He does everything with a flourish.
;--"2.saja-Xaja"
;The new hotel opened with a flourish.
;
(defrule flourish1
(declare (salience 4900))
(id-root ?id flourish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flourish.clp 	flourish1   "  ?id "  saPala_ho )" crlf))
)

;"flourish","V","1.saPala_honA"
;His shop is flourishing in this neighbourhood.
;--"2.svasWa_honA"
;His health is flourishing in this climate.
;--"3.hilAnA_yA_GumAnA"
;He flourished his pen at the audience to draw their attention on specific points.
;
