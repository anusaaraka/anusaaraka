
(defrule treasure0
(declare (salience 5000))
(id-root ?id treasure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KajAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  treasure.clp 	treasure0   "  ?id "  KajAnA )" crlf))
)

;"treasure","N","1.KajAnA"
;They found a treasure .
;Ramayana is a treasure which is always placed on a high plank .
;--"2.bahumUlya"
;She is a great treasure to everyone.
;
(defrule treasure1
(declare (salience 4900))
(id-root ?id treasure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahumUlya_samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  treasure.clp 	treasure1   "  ?id "  bahumUlya_samaJa )" crlf))
)

;"treasure","V","1.bahumUlya_samaJanA"
;We have to treasure our ancient monuments.
;--"2.saMjoe_raKanA"
;I shall treasure the memory of our time together.
;
