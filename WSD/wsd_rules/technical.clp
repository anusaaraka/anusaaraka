
(defrule technical0
(declare (salience 5000))
(id-root ?id technical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wakanIkI-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  technical.clp 	technical0   "  ?id "  wakanIkI- )" crlf))
)

(defrule technical1
(declare (salience 4900))
(id-root ?id technical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wakanIkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  technical.clp 	technical1   "  ?id "  wakanIkI )" crlf))
)

;"technical","Adj","1.wakanIkI"
;There are many technical courses for students.
;--"2.pAriBARika"
;There are many technical terms in biology.
;--"3.kAnUnI"
;The lawyer opened with a legal arguement over a technical point.
;
;
