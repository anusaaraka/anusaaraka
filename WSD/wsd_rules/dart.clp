
(defrule dart0
(declare (salience 5000))
(id-root ?id dart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dart.clp 	dart0   "  ?id "  BAlA )" crlf))
)

;"dart","N","1.BAlA/ballama"
;A trekker was injured by a dart shot by the attacking tribals.
;
(defrule dart1
(declare (salience 4900))
(id-root ?id dart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Japata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dart.clp 	dart1   "  ?id "  Japata )" crlf))
)

;"dart","VI","1.JapatanA/Jatapata_cala_padZanA/nikala_padZanA"
;His forefinger darted in all directions as he spoke
;
(defrule dart2
(declare (salience 4800))
(id-root ?id dart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dart.clp 	dart2   "  ?id "  PeMka )" crlf))
)

;"dart","VT","1.PeMkanA"
