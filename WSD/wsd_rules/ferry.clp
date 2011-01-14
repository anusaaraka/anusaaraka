
(defrule ferry0
(declare (salience 5000))
(id-root ?id ferry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZI_nAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ferry.clp 	ferry0   "  ?id "  badZI_nAva )" crlf))
)

;"ferry","N","1.badZI_nAva"
;At many places in Goa ferry is used to cross the river.
;--"2.GAta"
;I went to ferry to cross the river today.
;
(defrule ferry1
(declare (salience 4900))
(id-root ?id ferry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_sWAna_se_xUsare_sWAna_pahuzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ferry.clp 	ferry1   "  ?id "  eka_sWAna_se_xUsare_sWAna_pahuzcA )" crlf))
)

;"ferry","V","1.eka_sWAna_se_xUsare_sWAna_pahuzcAnA"
;In times of war airplanes are used to ferry men && material from one place to another.
;
