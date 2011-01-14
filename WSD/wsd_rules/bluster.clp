
(defrule bluster0
(declare (salience 5000))
(id-root ?id bluster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SeKIbAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bluster.clp 	bluster0   "  ?id "  SeKIbAja )" crlf))
)

;"bluster","N","1.SeKIbAja"
;A bluster ends up making fool of himself.
;
(defrule bluster1
(declare (salience 4900))
(id-root ?id bluster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XamakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bluster.clp 	bluster1   "  ?id "  XamakA )" crlf))
)

;"bluster","VT","1.XamakAnA"
;The union blustered the authority to end up the mismanagement.
;
