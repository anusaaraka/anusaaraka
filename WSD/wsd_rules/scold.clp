
(defrule scold0
(declare (salience 5000))
(id-root ?id scold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id scolding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id dAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  scold.clp  	scold0   "  ?id "  dAzta )" crlf))
)

;"scolding","N","1.dAzta/JadZakI"
;I got a scolding from her, for doing the same mistake again && again.
;
(defrule scold1
(declare (salience 4900))
(id-root ?id scold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scold.clp 	scold1   "  ?id "  dAzta )" crlf))
)

;"scold","V","1.dAztanA"
;I will scold you , If you will do this mistake.
;
;