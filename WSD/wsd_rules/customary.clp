;@@@ Added by Preeti(5-4-14)
;Is it customary to tip hairdressers in this country? [Oxford Advanced Learner's Dictionary]
;kyA isa xeSa meM keSa prasAXaka ko tIpa xenekA calana hE?
(defrule customary0
(id-root ?id customary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  customary.clp 	customary0   "  ?id "  calana )" crlf))
)


;@@@ Added by Preeti(5-4-14)
;She arranged everything with her customary efficiency. [Oxford Advanced Learner's Dictionary]
;usane apanI viSiRta kuSalawA ke sAWa saba-kuCa vyavasWA kiyA.
(defrule customary1
(declare (salience 1000))
(id-root ?id customary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ? ?id) (viSeRya-viSeRaka  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  customary.clp 	customary1   "  ?id "  viSiRta )" crlf))
)
