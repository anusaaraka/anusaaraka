
(defrule fifteen0
(declare (salience 5000))
(id-root ?id fifteen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id panxraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fifteen.clp 	fifteen0   "  ?id "  panxraha )" crlf))
)

;"fifteen","Det","1.panxraha"
;There were fifteen types of dishes at the feast.
;
(defrule fifteen1
(declare (salience 4900))
(id-root ?id fifteen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id panxraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fifteen.clp 	fifteen1   "  ?id "  panxraha )" crlf))
)

;"fifteen","N","1.panxraha"
;She is fifteen now.
;
(defrule fifteen2
(declare (salience 4800))
(id-root ?id fifteen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id panxraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fifteen.clp 	fifteen2   "  ?id "  panxraha )" crlf))
)

;"fifteen","Pron","1.panxraha"
;He is in the first three students of his class.
;
