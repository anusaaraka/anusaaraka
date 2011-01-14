
(defrule tint0
(declare (salience 5000))
(id-root ?id tint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id halakA_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tint.clp 	tint0   "  ?id "  halakA_raMga )" crlf))
)

;"tint","N","1.halakA_raMga"
;He sprayed a tint of yellow color in his paintingo.
;--"2.KijAba"
;She had a tint before a party.
;
(defrule tint1
(declare (salience 4900))
(id-root ?id tint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id halakA_raMga_caDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tint.clp 	tint1   "  ?id "  halakA_raMga_caDZA )" crlf))
)

;"tint","VT","1.halakA_raMga_caDZA"
;The glasses are tinted with different colors.
;--"2.raMgawa_xenA"
;He tinted his comments with sircasm .
;
