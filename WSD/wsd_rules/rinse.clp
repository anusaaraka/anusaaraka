
(defrule rinse0
(declare (salience 5000))
(id-root ?id rinse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XulAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rinse.clp 	rinse0   "  ?id "  XulAI )" crlf))
)

;"rinse","N","1.XulAI"
;The washing machine has just started its rinse cycle. 
;
(defrule rinse1
(declare (salience 4900))
(id-root ?id rinse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaMgAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rinse.clp 	rinse1   "  ?id "  KaMgAla )" crlf))
)

;"rinse","VT","1.KaMgAlanA"
;Rinse the clothes with clean water.
;
