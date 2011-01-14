
(defrule forage0
(declare (salience 5000))
(id-root ?id forage)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DZUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " forage.clp	forage0  "  ?id "  " ?id1 "  DZUzDa  )" crlf))
)

;She foraged about in the kitchen but din't find the knife.
;usane rasoI meM DUzDZA para cAkU nahIM milA
(defrule forage1
(declare (salience 4900))
(id-root ?id forage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forage.clp 	forage1   "  ?id "  cArA )" crlf))
)

;"forage","N","1.cArA"
;Forage is a nutritious food for cattles.
;
(defrule forage2
(declare (salience 4800))
(id-root ?id forage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koja_meM_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forage.clp 	forage2   "  ?id "  Koja_meM_GUma )" crlf))
)

;"forage","V","1.Koja_meM_GUmanA"
;Women in villages forage for firewood.
;
