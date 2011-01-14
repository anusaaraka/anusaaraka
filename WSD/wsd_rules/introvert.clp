
(defrule introvert0
(declare (salience 5000))
(id-root ?id introvert)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id introverted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aMwarmuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  introvert.clp  	introvert0   "  ?id "  aMwarmuKI )" crlf))
)

;"introverted","Adj","1.aMwarmuKI"
;He became introverted when he grew older.
;
(defrule introvert1
(declare (salience 4900))
(id-root ?id introvert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwarmuKI_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introvert.clp 	introvert1   "  ?id "  anwarmuKI_vyakwi )" crlf))
)

;"introvert","N","1.anwarmuKI_vyakwi"
;He is an introvert who does not take part in any activities.
;
;