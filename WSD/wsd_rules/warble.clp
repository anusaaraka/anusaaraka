
(defrule warble0
(declare (salience 5000))
(id-root ?id warble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warble.clp 	warble0   "  ?id "  kUja )" crlf))
)

;"warble","VI","1.kUjanA"
;The cuckoo warbles in the tree
;
(defrule warble1
(declare (salience 4900))
(id-root ?id warble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warble.clp 	warble1   "  ?id "  gA )" crlf))
)

;"warble","VT","1.gAnA"
;The small birds warble musical notes in the morning
;
