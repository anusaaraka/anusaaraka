
(defrule stir0
(declare (salience 5000))
(id-root ?id stir)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stirring )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saxamA_pahuzcAnevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stir.clp  	stir0   "  ?id "  saxamA_pahuzcAnevAlA )" crlf))
)

;"stirring","Adj","1.saxamA pahuzcAnevAlA"
;The story of the beggar was quite stirring.
;
(defrule stir1
(declare (salience 4900))
(id-root ?id stir)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id halacala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stir.clp 	stir1   "  ?id "  halacala )" crlf))
)

;"stir","N","1.halacala"
;I gave a stir to the tea in order to dissolve the sugar.
;--"2.hilA_xenevAlA"
;Her sudden death was quite a stir.
;
(defrule stir2
(declare (salience 4800))
(id-root ?id stir)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stir.clp 	stir2   "  ?id "  hila )" crlf))
)

;"stir","V","1.hilanA"
;He sat there for two hours without stirring.
;--"2.hilAnA"
;She stirred the tea with a spoon.
;Slight music stirred him into action.
;
