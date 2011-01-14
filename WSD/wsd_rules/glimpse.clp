
(defrule glimpse0
(declare (salience 5000))
(id-root ?id glimpse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jalaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glimpse.clp 	glimpse0   "  ?id "  Jalaka )" crlf))
)

;"glimpse","N","1.Jalaka"
;The crowd had a glimpse of their favourite star.
;
(defrule glimpse1
(declare (salience 4900))
(id-root ?id glimpse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxI_se_eka_najZara_dZAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glimpse.clp 	glimpse1   "  ?id "  jalxI_se_eka_najZara_dZAla )" crlf))
)

;"glimpse","V","1.jalxI_se_eka_najZara_dZAlanA"
;I glimpsed outside from the window. 
;
