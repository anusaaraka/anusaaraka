
(defrule skirmish0
(declare (salience 5000))
(id-root ?id skirmish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skirmish.clp 	skirmish0   "  ?id "  JagadZA )" crlf))
)

;"skirmish","N","1.JagadZA/vAxa-vivAxa"
;The two brothers had a skirmish over the disputed land.
;
(defrule skirmish1
(declare (salience 4900))
(id-root ?id skirmish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cote_tukadZoM_meM_BidZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skirmish.clp 	skirmish1   "  ?id "  Cote_tukadZoM_meM_BidZa )" crlf))
)

;"skirmish","V","1.Cote_tukadZoM_meM_BidZanA"
;They skirmished over the property.
;
