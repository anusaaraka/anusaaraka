
(defrule hitch0
(declare (salience 5000))
(id-root ?id hitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hitch.clp 	hitch0   "  ?id "  Jataka )" crlf))
)

(defrule hitch1
(declare (salience 4900))
(id-root ?id hitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JatakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hitch.clp 	hitch1   "  ?id "  JatakA )" crlf))
)

;"hitch","N","1.JatakA/XakkA/atakAva"
;usane jIwU ko 'hitch'(XakkA mAra) kara girA xiyA.
;
;