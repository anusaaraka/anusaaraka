
(defrule plunge0
(declare (salience 5000))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Japata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge0   "  ?id "  Japata )" crlf))
)

;"plunge","N","1.Japata"
;The car started with plunge.
;--"2.dubakI"
;The boy took a plunge into the lake.
;
(defrule plunge1
(declare (salience 4900))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PazsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge1   "  ?id "  PazsA )" crlf))
)

;"plunge","V","1.PazsAnA"
;The municipal workers plunged the iron rods into the drain to clean up.
;--"2.gowA_lagAnA"
;I love to plunge in swimming pool for hours.
;
