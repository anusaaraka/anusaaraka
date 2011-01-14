
(defrule sole0
(declare (salience 5000))
(id-root ?id sole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekamAwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sole.clp 	sole0   "  ?id "  ekamAwra )" crlf))
)

;"sole","Adj","1.ekamAwra/akelA"
;His sole responsibility was of his parents.
;
(defrule sole1
(declare (salience 4900))
(id-root ?id sole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEra_kI_walavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sole.clp 	sole1   "  ?id "  pEra_kI_walavA )" crlf))
)

;"sole","N","1.pEra_kI_walavA"
;A shoe is not completed with out a sole.
;--"2.kukurajIBI"
;Sole is mainly eaten by people living in wastal areas.
;
