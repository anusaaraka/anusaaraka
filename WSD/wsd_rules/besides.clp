
(defrule besides0
(declare (salience 5000))
(id-root ?id besides)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_awirikwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  besides.clp 	besides0   "  ?id "  ke_awirikwa )" crlf))
)

;"besides","Adv","1.ke_awirikwa"
;Shiva is my eldest nephew && I have three others besides.
;
(defrule besides1
(declare (salience 4900))
(id-root ?id besides)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_alAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  besides.clp 	besides1   "  ?id "  ke_alAvA )" crlf))
)

;"besides","Prep","1.ke_alAvA"
;There will be three of us for the party,besides children.
;
