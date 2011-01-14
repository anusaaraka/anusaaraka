
(defrule sizzle0
(declare (salience 5000))
(id-root ?id sizzle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sizzling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uwwejaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sizzle.clp  	sizzle0   "  ?id "  uwwejaka )" crlf))
)

;"sizzling","Adj","1.uwwejaka"
;It is a sizzling weather.
;
(defrule sizzle1
(declare (salience 4900))
(id-root ?id sizzle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZakadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sizzle.clp 	sizzle1   "  ?id "  kadZakadZA )" crlf))
)

;"sizzle","V","1.kadZakadZAnA"
;He sizzled with anger.
;
;