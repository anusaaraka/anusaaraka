
(defrule jaundice0
(declare (salience 5000))
(id-root ?id jaundice)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id jaundiced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vikqwa_vicAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  jaundice.clp  	jaundice0   "  ?id "  vikqwa_vicAra )" crlf))
)

;"jaundiced","Adj","1.vikqwa_vicAra"
;He has a jaundiced perception of people.
;
(defrule jaundice1
(declare (salience 4900))
(id-root ?id jaundice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIliyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jaundice.clp 	jaundice1   "  ?id "  pIliyA )" crlf))
)

;"jaundice","N","1.pIliyA"
;Jaundice is a disease of the liver.
;
;