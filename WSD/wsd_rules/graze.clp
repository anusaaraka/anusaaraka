
(defrule graze0
(declare (salience 5000))
(id-root ?id graze)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id grazing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id caranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  graze.clp  	graze0   "  ?id "  caranA )" crlf))
)

;"grazing","N","1.caranA"
;The cows are grazing in the field.
;
(defrule graze1
(declare (salience 4900))
(id-root ?id graze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaroMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  graze.clp 	graze1   "  ?id "  KaroMca )" crlf))
)

;"graze","N","1.KaroMca"
(defrule graze2
(declare (salience 4800))
(id-root ?id graze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAsa_cara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  graze.clp 	graze2   "  ?id "  GAsa_cara )" crlf))
)

;"graze","V","1.GAsa_caranA"
;The horses were grazing on the green meadows.
;--"2.KaroMca_lagAnA"
;I grazed my elbow against the wall.
;--"3.CIlawe_hue_nikala_jAnA"
;The bullet grazed his shoulder.
;
