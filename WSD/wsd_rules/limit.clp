;@@@ Added by Nandini(30-11-13)
;"limit","V","1.sImiwa_karanA"
;Limit your speech to five minutes.
;pAzca minatoM meM apanA BASaNa sImiwa kIjie.
(defrule limit2
(declare (salience 5500))
(id-root ?id limit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 speech)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limit.clp 	limit2   "  ?id "  sImiwa_kara )" crlf))
)

;===========Default-rules ==============
;Hindi traslation added by Nandini(30-11-13)
;"limit","N","1.sImA"
;Limits of metropolitan towns are expanding day-by-day.
;mahAnagarIya nagaroM ke sImA day-by-day PEla rahe hEM.
(defrule limit0
(declare (salience 5000))
(id-root ?id limit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limit.clp 	limit0   "  ?id "  sImA )" crlf))
)
(defrule limit1
(declare (salience 4900))
(id-root ?id limit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImiwa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limit.clp 	limit1   "  ?id "  sImiwa_raha )" crlf))
)

;==========Additional-examples==========
;There is a limit to the amount of pain we can bear.
;The team performed to the limit of its capabilities.
;She knew the limits of her power.
;His arrogance knew no limits.
;The EU has set strict limits on levels of pollution.
;They were travelling at a speed that was double the legal limit.
;You can't drive you're over the limit
;We were reaching the limits of civilization.
;We were reaching the limits of civilization.
