
(defrule vex0
(declare (salience 5000))
(id-root ?id vex)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gussA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vex.clp 	vex0   "  ?id "  gussA_kara )" crlf))
)

(defrule vex1
(declare (salience 4900))
(id-root ?id vex)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gussA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vex.clp 	vex1   "  ?id "  gussA_ho )" crlf))
)

;"vex","VT","1.gussA_karanA[honA]"
;Their lies would vex anyone.
;--"2.cinwiwa_honA"
;Her failures vexed him.
;
