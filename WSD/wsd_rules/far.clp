
(defrule far0
(declare (salience 5000))
(id-root ?id far)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  far.clp 	far0   "  ?id "  xUra )" crlf))
)

;"far","Adj","1.xUra"
;She stood at the far end of the street.
;
(defrule far1
(declare (salience 4900))
(id-root ?id far)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  far.clp 	far1   "  ?id "  xUra )" crlf))
)

;"far","Adv","1.xUra"
;How far is the post-office from here.
;--"2.bahuwa"
;Murali has fallen far behind his schedule.
;
