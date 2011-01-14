
(defrule terminal0
(declare (salience 5000))
(id-root ?id terminal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwya_rogI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terminal.clp 	terminal0   "  ?id "  anwya_rogI )" crlf))
)

;"terminal","Adj","1.anwya_rogI"
;She has terminal illness.
;
(defrule terminal1
(declare (salience 4900))
(id-root ?id terminal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AKirI_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terminal.clp 	terminal1   "  ?id "  AKirI_sWAna )" crlf))
)

;"terminal","N","1.AKirI_sWAna"
;You have to catch the flight from the terminal.
;--"2.vixyuwa_cakra_kA_anwima_sirA"
;There are positive && negative terminals in the battery.
;
