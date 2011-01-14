
(defrule photograph0
(declare (salience 5000))
(id-root ?id photograph)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PZoto))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  photograph.clp 	photograph0   "  ?id "  PZoto )" crlf))
)

(defrule photograph1
(declare (salience 4900))
(id-root ?id photograph)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PZoto_KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  photograph.clp 	photograph1   "  ?id "  PZoto_KIMca )" crlf))
)

;"photograph","V","1.PZoto_KIMcanA"
;I am photographing a rare plant.
;
;