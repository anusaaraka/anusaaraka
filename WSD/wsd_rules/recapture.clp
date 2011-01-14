
(defrule recapture0
(declare (salience 5000))
(id-root ?id recapture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_grahaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recapture.clp 	recapture0   "  ?id "  Pira_grahaNa )" crlf))
)

;"recapture","N","1.Pira_grahaNa"
;The recapture of towns occupied by the rebels.
;
(defrule recapture1
(declare (salience 4900))
(id-root ?id recapture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recapture.clp 	recapture1   "  ?id "  pakadZa )" crlf))
)

;"recapture","VT","1.pakadZanA"
;He tried to recapture the pleasures of school life.
;
