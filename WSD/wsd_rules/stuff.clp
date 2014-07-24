
(defrule stuff0
(declare (salience 5000))
(id-root ?id stuff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmagrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stuff.clp 	stuff0   "  ?id "  sAmagrI )" crlf))
)
;$$$$$$
;Modified by jagriti(11.12.2013)......default meaning modified from TUzsanA to BaranA
(defrule stuff1
(declare (salience 4900))
(id-root ?id stuff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stuff.clp 	stuff1   "  ?id "  Bara )" crlf))
)

;"stuff","V","1.TUzsanA"
;He stuffed the bag with his books.
;
;
