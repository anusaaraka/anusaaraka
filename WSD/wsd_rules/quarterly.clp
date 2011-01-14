
(defrule quarterly0
(declare (salience 5000))
(id-root ?id quarterly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wrEmAsika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quarterly.clp 	quarterly0   "  ?id "  wrEmAsika )" crlf))
)

;"quarterly","Adj","1.wrEmAsika"
;They are expected to submit quarterly reports.
;They issue the quarterly magazine
;
(defrule quarterly1
(declare (salience 4900))
(id-root ?id quarterly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wrEmAsika_kI_rIwi_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quarterly.clp 	quarterly1   "  ?id "  wrEmAsika_kI_rIwi_se )" crlf))
)

;"quarterly","Adv","1.wrEmAsika_kI_rIwi_se"
;Interest is compounded quarterly
;
(defrule quarterly2
(declare (salience 4800))
(id-root ?id quarterly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wrEmAsika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quarterly.clp 	quarterly2   "  ?id "  wrEmAsika )" crlf))
)

;"quarterly","N","1.wrEmAsika"
;The new quarterly on Indian politics is quite good.
;
