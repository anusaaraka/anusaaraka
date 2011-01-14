
(defrule vent0
(declare (salience 5000))
(id-root ?id vent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cixra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vent.clp 	vent0   "  ?id "  Cixra )" crlf))
)

;"vent","N","1.Cixra"
;Air is coming through the vent in the kitchen
;--"2.janwu_ka_guxA"
;Vent of the birds add fertility to the soil
;--"3.kapade_yA_kota_meM_Cexa"
;There is a vent at the side of the coat
;
(defrule vent1
(declare (salience 4900))
(id-root ?id vent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vent.clp 	vent1   "  ?id "  nikAla )" crlf))
)

;"vent","VT","1.nikAlanA[uwwejaka_BAvoM_ko]"
;Sage Durvasa vented his wrath by cursing Shakuntala
;
