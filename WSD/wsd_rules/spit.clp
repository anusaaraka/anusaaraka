
(defrule spit0
(declare (salience 5000))
(id-root ?id spit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spit.clp 	spit0   "  ?id "  WUka )" crlf))
)

;"spit","N","1.WUka"
;Wipe the spit off his lips.
;--"2.sIKa"
;A spit is used to cook food in a barbaque.
;
(defrule spit1
(declare (salience 4900))
(id-root ?id spit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spit.clp 	spit1   "  ?id "  WUka )" crlf))
)

;"spit","V","1.WUkanA"
;You should not spit at public places.
;--"2.jZora_se_bolanA"
;The cat spat at the dog.
;
