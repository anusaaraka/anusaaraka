
(defrule lightning0
(declare (salience 5000))
(id-root ?id lightning)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGrawama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lightning.clp 	lightning0   "  ?id "  SIGrawama )" crlf))
)

;"lightning","Adj","1.SIGrawama"
;He struck his opponent with a lightning speed.
;
(defrule lightning1
(declare (salience 4900))
(id-root ?id lightning)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wadiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lightning.clp 	lightning1   "  ?id "  wadiwa )" crlf))
)

;"lightning","N","1.wadiwa"
;Luckily there was nobody in the house when the lightening struck it.
;
