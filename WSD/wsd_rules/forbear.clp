
(defrule forbear0
(declare (salience 5000))
(id-root ?id forbear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id forbearing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XErya_raKanevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  forbear.clp  	forbear0   "  ?id "  XErya_raKanevAlA )" crlf))
)

;"forbearing","Adj","1.XErya_raKanevAlA"
;She is very loving && forbearing in nature.
;
(defrule forbear1
(declare (salience 4900))
(id-root ?id forbear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forbear.clp 	forbear1   "  ?id "  xUra_raha )" crlf))
)

;"forbear","V","1.xUra_rahanA/bAjZa_AnA"
;The unhappy teachers forbore from going on strike.
;
;