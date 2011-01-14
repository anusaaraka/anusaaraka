
(defrule prize0
(declare (salience 5000))
(id-root ?id prize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlyavAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prize.clp 	prize0   "  ?id "  mUlyavAna )" crlf))
)

;"prize","Adj","1.mUlyavAna"
;Chetak was rana pratap's prize horse.
;
(defrule prize1
(declare (salience 4900))
(id-root ?id prize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puraskAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prize.clp 	prize1   "  ?id "  puraskAra )" crlf))
)

;"prize","N","1.puraskAra"
;Tagore won the Nobel Prize for literature.
;
(defrule prize2
(declare (salience 4800))
(id-root ?id prize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawwva_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prize.clp 	prize2   "  ?id "  mahawwva_xe )" crlf))
)

;"prize","V","1.mahawwva_xenA"
;He prized his canary as a precious possession.
;
