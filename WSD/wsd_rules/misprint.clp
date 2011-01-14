
(defrule misprint0
(declare (salience 5000))
(id-root ?id misprint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_CapanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  misprint.clp 	misprint0   "  ?id "  galawa_CapanA )" crlf))
)

;"misprint","N","1.galawa_CapanA"
;The newspaper apologised for the misprint.
;
(defrule misprint1
(declare (salience 4900))
(id-root ?id misprint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_Capa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  misprint.clp 	misprint1   "  ?id "  galawa_Capa )" crlf))
)

;"misprint","V","1.galawa_CapanA"
;The name of the Institute was misprinted.
;
