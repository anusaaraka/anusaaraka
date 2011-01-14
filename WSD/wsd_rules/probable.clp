
(defrule probable0
(declare (salience 5000))
(id-root ?id probable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBaviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  probable.clp 	probable0   "  ?id "  saMBaviwa )" crlf))
)

;"probable","Adj","1.saMBaviwa"
;Increasing air-pollution is the most probable explanation to depleting ozone layer.
;
(defrule probable1
(declare (salience 4900))
(id-root ?id probable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBAvya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  probable.clp 	probable1   "  ?id "  saMBAvya )" crlf))
)

;"probable","N","1.saMBAvya"
;Probables for the next year's tournament were selected in the camp.
;
