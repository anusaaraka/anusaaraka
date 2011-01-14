
(defrule rustle0
(declare (salience 5000))
(id-root ?id rustle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JadZaJadZAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rustle.clp 	rustle0   "  ?id "  JadZaJadZAhata )" crlf))
)

;"rustle","N","1.JadZaJadZAhata"
;You can hear the rustle of leaves in peak summer.
;
(defrule rustle1
(declare (salience 4900))
(id-root ?id rustle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JadZaJadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rustle.clp 	rustle1   "  ?id "  JadZaJadZA )" crlf))
)

;"rustle","VI","1.JadZaJadZA"
;I get annoyed when the people rustle their packets of pop corn during the
;movie.
;
