
(defrule rebuke0
(declare (salience 5000))
(id-root ?id rebuke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PatakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rebuke.clp 	rebuke0   "  ?id "  PatakAra )" crlf))
)

;"rebuke","N","1.PatakAra"
;Servant got a rebuke from his master. 
;
(defrule rebuke1
(declare (salience 4900))
(id-root ?id rebuke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burA-BalA_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rebuke.clp 	rebuke1   "  ?id "  burA-BalA_kaha )" crlf))
)

;"rebuke","VT","1.burA-BalA_kahanA"
;Do not rebuke me for it would lead us into a disaster.
;
