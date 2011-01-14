
(defrule bag0
(declare (salience 5000))
(id-root ?id bag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bag.clp 	bag0   "  ?id "  WElA )" crlf))
)

(defrule bag1
(declare (salience 4900))
(id-root ?id bag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WEle_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bag.clp 	bag1   "  ?id "  WEle_meM_raKa )" crlf))
)

;"bag","VT","1.WEle_meM_raKanA"
;They bagged the best vegetables in the basket.
;--"2.le_lanA"
;She has already bagged the most comfortable chair.
;usane pahale hI sabase ArAmaxAyaka kursI pakadZa lI.
;--"3.JUlanA"
;Her trousers were bagging from the knee.
;
;