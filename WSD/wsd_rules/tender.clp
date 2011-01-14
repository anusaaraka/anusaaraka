
(defrule tender0
(declare (salience 5000))
(id-root ?id tender)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id komala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tender.clp 	tender0   "  ?id "  komala )" crlf))
)

;"tender","Adj","1.komala"
(defrule tender1
(declare (salience 4900))
(id-root ?id tender)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivixA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tender.clp 	tender1   "  ?id "  nivixA )" crlf))
)

;"tender","N","1.nivixA"
;Quote the lowest tender.
;--"2.IMXana_gAdI"
;
(defrule tender2
(declare (salience 4800))
(id-root ?id tender)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tender.clp 	tender2   "  ?id "  peSa_kara )" crlf))
)

;"tender","VT","1.peSa_karanA{nivixA}"
;The Company tenderered its application for the construction of the school building.
;
