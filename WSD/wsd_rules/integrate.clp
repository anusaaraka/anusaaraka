
(defrule integrate0
(declare (salience 5000))
(id-root ?id integrate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id integrated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ekIkqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  integrate.clp  	integrate0   "  ?id "  ekIkqwa )" crlf))
)

;"integrated","Adj","1.ekIkqwa"
;Integrated network helps communication.
;
(defrule integrate1
(declare (salience 4900))
(id-root ?id integrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekIkaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  integrate.clp 	integrate1   "  ?id "  ekIkaraNa_kara )" crlf))
)

;"integrate","VT","1.ekIkaraNa_karanA"
;The students of  this school integrate immediately, despite their different backgrounds.
;"integrated","Adj","1.ekIkqwa"
;Integrated network helps communication.
;
;