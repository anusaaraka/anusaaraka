;@@@ Added by Nandini (1-1-1014)
;The car lurched forward before hitting the tree.[Cambridge Advanced Learner’s Dictionary]
;gAdI ne peda se takarAne se pahale Age kI ora JatakA KAyA.
(defrule lurch0
(declare (salience 200))
(id-root ?id lurch)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JatakA_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lurch.clp 	lurch0   "  ?id "  JatakA_KA)" crlf))
)

;@@@ Added by Nandini (1-1-1014)
;Suddenly Rajvir's heart gave a violent lurch.
;acAnaka rajvir ke hqxaya ne eka jabaraxaswa JatakA xiyA.
(defrule lurch1
(declare (salience 100))
(id-root ?id lurch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JatakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lurch.clp 	lurch1   "  ?id "  JatakA)" crlf))
)
