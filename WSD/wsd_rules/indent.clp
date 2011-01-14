
(defrule indent0
(declare (salience 5000))
(id-root ?id indent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAzgapawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indent.clp 	indent0   "  ?id "  mAzgapawra )" crlf))
)

;"indent","N","1.mAzgapawra"
;I placed an indent for new equipments.
;
(defrule indent1
(declare (salience 4900))
(id-root ?id indent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAMwexAra_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indent.clp 	indent1   "  ?id "  xAMwexAra_banA )" crlf))
)

;"indent","V","1.xAMwexAra_banAnA"
;--"2.gadDA_banAnA"
;
