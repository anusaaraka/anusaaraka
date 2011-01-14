
(defrule tongue0
(declare (salience 5000))
(id-root ?id tongue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tongue.clp 	tongue0   "  ?id "  jIBa )" crlf))
)

;"tongue","N","1.jIBa"
;Clean your tongue well.
;--"2.bolI"
;He is comfortable when he speaks in his mother tongue.
;--"3.bahirviRta_pattI"
;The tongue of my shoe has fallen somewhere. .
;
(defrule tongue1
(declare (salience 4900))
(id-root ?id tongue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tongue.clp 	tongue1   "  ?id "  bola )" crlf))
)

;"tongue","VT","1.bola[vyaMgya_se]"
;He has a bad tongue && hurts everyone.
;
