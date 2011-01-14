
(defrule overload0
(declare (salience 5000))
(id-root ?id overload)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI_laxAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overload.clp 	overload0   "  ?id "  BArI_laxAna )" crlf))
)

;"overload","N","1.BArI_laxAna"
;Children are suffering from overload of information
;
(defrule overload1
(declare (salience 4900))
(id-root ?id overload)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_lAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overload.clp 	overload1   "  ?id "  bahuwa_lAxa )" crlf))
)

;"overload","VT","1.bahuwa_lAxanA"
;The truck was overloaded with bricks
;
