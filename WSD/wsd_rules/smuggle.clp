
(defrule smuggle0
(declare (salience 5000))
(id-root ?id smuggle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id smuggling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id waskarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  smuggle.clp  	smuggle0   "  ?id "  waskarI )" crlf))
)

;"smuggling","N","1.waskarI"
;There is a lot of smuggling on the border.
;
(defrule smuggle1
(declare (salience 4900))
(id-root ?id smuggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waskara-vyApAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smuggle.clp 	smuggle1   "  ?id "  waskara-vyApAra_kara )" crlf))
)

;"smuggle","V","1.waskara-vyApAra karanA"
;The smugglers smuggle across the border.
;
;