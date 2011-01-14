
(defrule sandpaper0
(declare (salience 5000))
(id-root ?id sandpaper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id regamAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sandpaper.clp 	sandpaper0   "  ?id "  regamAla )" crlf))
)

;"sandpaper","N","1.regamAla"
;Ravi go && buy a sandpaper.
;
(defrule sandpaper1
(declare (salience 4900))
(id-root ?id sandpaper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ragadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sandpaper.clp 	sandpaper1   "  ?id "  ragadZa )" crlf))
)

;"sandpaper","V","1.ragadZanA{regamAla_se}"
;I was sandpapering on that old door, when my friend came to my house.
;
