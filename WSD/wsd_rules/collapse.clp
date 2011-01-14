
(defrule collapse0
(declare (salience 5000))
(id-root ?id collapse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Daha_jAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  collapse.clp 	collapse0   "  ?id "  Daha_jAnA )" crlf))
)

;default_sense && category=noun	viXvaMsa	0
;"collapse","N","1.viXvaMsa"
;The collapse of the Soviet Union has ended the cold war.
;--"2.asaPalawA"
;The collapse of negotiations between the two nations has further aggravated tension in the border.
;
(defrule collapse1
(declare (salience 4900))
(id-root ?id collapse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Daha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  collapse.clp 	collapse1   "  ?id "  Daha_jA )" crlf))
)

;default_sense && category=verb	tUtakara_gira_jA	0
;"collapse","V","1.tUtakara_gira_jAnA"
;The building collapsed due to earthquake.
;--"2.bimAra_padZanA"
;He felt giddy && collapsed on the way to the hospital.
;--"3.pawana_honA"
;The company collapsed due to lack of capital.
;--"4.acAnaka_giranA"
;Share market collapsed due to Kargil conflict.
;--"5.simatanA"
;Use chair that collapse for small spaces.
;
