
(defrule tattoo0
(declare (salience 5000))
(id-root ?id tattoo)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id goxanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tattoo.clp 	tattoo0   "  ?id "  goxanA )" crlf))
)

;"tattoo","N","1.goxanA"
;The tribal girl had a tattoo on her wrist.
;
(defrule tattoo1
(declare (salience 4900))
(id-root ?id tattoo)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wvacA_para_goxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tattoo.clp 	tattoo1   "  ?id "  wvacA_para_goxa )" crlf))
)

;"tattoo","VTI","1.wvacA_para_goxanA"
;He tattooed his face.
;
