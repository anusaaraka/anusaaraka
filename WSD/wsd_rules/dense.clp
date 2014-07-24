
(defrule dense0
(declare (salience 4000))
(id-root ?id dense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dense.clp 	dense0   "  ?id "  GanA )" crlf))
)

;@@@ added by Pramila(BU) on 12-12-2013
;How can she be so dense?       ;sentence of this file
;वह इतनी मंदबुद्धि कैसे हो सकती है ?
(defrule dense1
(declare (salience 5000))
(id-root ?id dense)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manxabuxXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dense.clp 	dense1   "  ?id "  manxabuxXi )" crlf))
)


;"dense","Adj","1.GanA"
;The deforestation of the dense forests of the central India will lead to an ecological imbalance.
;--"2.manxabuxXi
;How can she be so dense? 
;
;
;****************rule was removed***************
;meaning - GanA  (it was duplicate rule)
