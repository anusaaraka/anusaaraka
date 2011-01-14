
(defrule shorten0
(declare (salience 5000))
(id-root ?id shorten)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shortening )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id carabI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  shorten.clp  	shorten0   "  ?id "  carabI )" crlf))
)

;"shortening","N","1.carabI"
;My mother asked me to purchase some shortening from the market.
;
(defrule shorten1
(declare (salience 4900))
(id-root ?id shorten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shorten.clp 	shorten1   "  ?id "  CotA_kara )" crlf))
)

;"shorten","V","1.CotA karanA"
;The teacher asked him to shorten the essay.
;
;