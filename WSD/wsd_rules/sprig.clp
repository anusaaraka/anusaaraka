
(defrule sprig0
(declare (salience 5000))
(id-root ?id sprig)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sprigged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id tahanIxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sprig.clp  	sprig0   "  ?id "  tahanIxAra )" crlf))
)

;"sprigged","Adj","1.tahanIxAra"
;Mango tree is a sprigged one.
;
(defrule sprig1
(declare (salience 4900))
(id-root ?id sprig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tahanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sprig.clp 	sprig1   "  ?id "  tahanI )" crlf))
)

;"sprig","N","1.tahanI"
;I saw a guava on a sprig.
;
;