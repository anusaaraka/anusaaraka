
(defrule disgrace0
(declare (salience 5000))
(id-root ?id disgrace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalaMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disgrace.clp 	disgrace0   "  ?id "  kalaMka )" crlf))
)

;"disgrace","N","1.kalaMka"
;His behavior has brought disgrace on himself && on his family.
;
(defrule disgrace1
(declare (salience 4900))
(id-root ?id disgrace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apamAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disgrace.clp 	disgrace1   "  ?id "  apamAna_kara )" crlf))
)

;"disgrace","VT","1.apamAna_karanA"
;He got drunk && disgraced himself in the party.
;
