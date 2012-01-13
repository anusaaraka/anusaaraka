;Added the verb "resemble" in the list.(Meena 21.10.09)
;It did not resemble any living creature.
(defrule did_not_0_tam0
(declare (salience 5000))
(id-TAM ?id did_not_0)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  know|resemble)
=>
(retract ?mng)
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id did_not_0 wA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-preceeding_part_of_verb "?*wsd_dir* "  did_not_0_tam.clp         did_not_0_tam0  "?id" nahIM)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  did_not_0_tam.clp  	did_not_0_tam0  "  ?id "  wA_WA )" crlf))
)

;I did not know him.
(defrule did_not_0_tam1
(declare (salience 4900))
(id-TAM ?id did_not_0)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id did_not_0 yA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-preceeding_part_of_verb "?*wsd_dir* "  did_not_0_tam.clp         did_not_0_tam1  "?id" nahIM)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  did_not_0_tam.clp  	did_not_0_tam1  "  ?id "  yA_WA )" crlf))
)

;I did not go there.
