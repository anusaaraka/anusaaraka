;"sunken","Adj","1.jalamagna"
;The squa divers had discovered a sunker ship on Friday.
;
(defrule sink0
(declare (salience 5000))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sunken )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jalamagna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sink.clp  	sink0   "  ?id "  jalamagna )" crlf))
)

(defrule sink1
(declare (salience 4900))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink1   "  ?id "  dUba )" crlf))
)

(defrule sink2
(declare (salience 4800))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hOxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink2   "  ?id "  hOxI )" crlf))
)

;"sink","N","1.hOxI"
;Utensils are washed in the kitchen sink.
;
;
