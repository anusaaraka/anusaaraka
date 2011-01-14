
(defrule toss0
(declare (salience 5000))
(id-root ?id toss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwkRepaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toss.clp 	toss0   "  ?id "  uwkRepaNa )" crlf))
)

;"toss","N","1.uwkRepaNa"
;Take a toss .
;
(defrule toss1
(declare (salience 4900))
(id-root ?id toss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toss.clp 	toss1   "  ?id "  uCAla )" crlf))
)

;"toss","VTI","1.uCAlanA"
;You toss the coin .
;--"2.karavateM_baxalawe_rahanA"
;The boy could not sleep && spent the night tossing in bed. .
;--"3.hilAnA[milAnA]"
;Toss the salad in oil.
;
