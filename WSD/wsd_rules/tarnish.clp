
(defrule tarnish0
(declare (salience 5000))
(id-root ?id tarnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tarnish.clp 	tarnish0   "  ?id "  XabbA )" crlf))
)

;"tarnish","N","1.XabbA"
;He polished the metal to remove the tarnish.
;
(defrule tarnish1
(declare (salience 4900))
(id-root ?id tarnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malina_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tarnish.clp 	tarnish1   "  ?id "  malina_ho )" crlf))
)

;"tarnish","VI","1.malina_honA"
;The silver was tarnished by the long exposure to the air.
;
(defrule tarnish2
(declare (salience 4800))
(id-root ?id tarnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalaMkiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tarnish.clp 	tarnish2   "  ?id "  kalaMkiwa_kara )" crlf))
)

;"tarnish","VT","1.kalaMkiwa_kara"
;His reputation was tarnished by misdeed.
;
