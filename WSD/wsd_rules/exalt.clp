
(defrule exalt0
(declare (salience 5000))
(id-root ?id exalt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id exalted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id unnawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  exalt.clp  	exalt0   "  ?id "  unnawa )" crlf))
)

;"exalted","Adj","1.unnawa"
;She occupies an exalted pot in the company.
;
(defrule exalt1
(declare (salience 4900))
(id-root ?id exalt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxa_yA_Sakwi_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exalt.clp 	exalt1   "  ?id "  paxa_yA_Sakwi_baDZA )" crlf))
)

;"exalt","VT","1.paxa_yA_Sakwi_baDZAnA"
;The poor will be exalted.
;
;
