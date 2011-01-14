
(defrule prejudice0
(declare (salience 5000))
(id-root ?id prejudice)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id prejudiced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pUrvAgrAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  prejudice.clp  	prejudice0   "  ?id "  pUrvAgrAhI )" crlf))
)

;"prejudiced","Adj","1.pUrvAgrAhI"
;He came to me alleging that I was prejudiced against him.
;
(defrule prejudice1
(declare (salience 4900))
(id-root ?id prejudice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrvAgraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prejudice.clp 	prejudice1   "  ?id "  pUrvAgraha )" crlf))
)

;"prejudice","N","1.pUrvAgraha"
;Henry has strong prejudice against john.
;
;