
(defrule banquet0
(declare (salience 5000))
(id-root ?id banquet)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id banqueting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Bojowsava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  banquet.clp  	banquet0   "  ?id "  Bojowsava )" crlf))
)

;"banqueting","Adj","1.Bojowsava"
;Her father is the owner of the town's banqueting hall.
;
(defrule banquet1
(declare (salience 4900))
(id-root ?id banquet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Boja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  banquet.clp 	banquet1   "  ?id "  Boja )" crlf))
)

;"banquet","N","1.Boja"
;My friend had the privilege of attending a state banquet in honour of the visiting French president.
;
;
