
(defrule reproach0
(declare (salience 5000))
(id-root ?id reproach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRAropa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproach.clp 	reproach0   "  ?id "  xoRAropa )" crlf))
)

;"reproach","N","1.xoRAropa"
;She heaped reproaches upon her new servent.
;
(defrule reproach1
(declare (salience 4900))
(id-root ?id reproach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproach.clp 	reproach1   "  ?id "  xoRa_lagA )" crlf))
)

;"reproach","VT","1.xoRa_lagAnA"
;Don't reproach any body for being late
;
