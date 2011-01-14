
(defrule several0
(declare (salience 5000))
(id-root ?id several)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aneka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  several.clp 	several0   "  ?id "  aneka )" crlf))
)

;"several","Det","1.aneka"
;Several people were killed in bomb explosion.
;
(defrule several1
(declare (salience 4900))
(id-root ?id several)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  several.clp 	several1   "  ?id "  kaI )" crlf))
)

;"several","Pron","1.kaI"
;Several of the paintings were destroyed in the fire.
;
