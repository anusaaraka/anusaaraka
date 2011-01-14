
(defrule flex0
(declare (salience 5000))
(id-root ?id flex)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bijalI_kA_wAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flex.clp 	flex0   "  ?id "  bijalI_kA_wAra )" crlf))
)

;"flex","N","1.bijalI_kA_wAra"
;Power to electrical appliances is provided through a flex.
;
(defrule flex1
(declare (salience 4900))
(id-root ?id flex)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flex.clp 	flex1   "  ?id "  JukA )" crlf))
)

;"flex","V","1.JukAnA"
;During excersise you should flex your arms.
;
