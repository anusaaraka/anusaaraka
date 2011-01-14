
(defrule west0
(declare (salience 5000))
(id-root ?id west)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paScimI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  west.clp 	west0   "  ?id "  paScimI )" crlf))
)

;"west","Adj","1.paScimI"
;The cyclone has crossed the west coast.
;
(defrule west1
(declare (salience 4900))
(id-root ?id west)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paScima_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  west.clp 	west1   "  ?id "  paScima_kI_ora )" crlf))
)

;"west","Adv","1.paScima_kI_ora"
;Our house faces west.
;
(defrule west2
(declare (salience 4800))
(id-root ?id west)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paScima))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  west.clp 	west2   "  ?id "  paScima )" crlf))
)

;"west","N","1.paScima"
;Sun sets in the west.
;
