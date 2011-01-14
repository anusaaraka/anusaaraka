
(defrule international0
(declare (salience 5000))
(id-root ?id international)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwarrARtrIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  international.clp 	international0   "  ?id "  anwarrARtrIya )" crlf))
)

;"international","Adj","1.anwarrARtrIya"
;He is a player of international repute.
;
(defrule international1
(declare (salience 4900))
(id-root ?id international)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwarrARtrIya_saMGatana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  international.clp 	international1   "  ?id "  anwarrARtrIya_saMGatana )" crlf))
)

;"international","N","1.anwarrARtrIya_saMGatana"
;UNICEF,concerned with the health && education of the children is.
;international.
;
