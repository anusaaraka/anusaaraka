
(defrule brag0
(declare (salience 5000))
(id-root ?id brag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dIMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brag.clp 	brag0   "  ?id "  dIMga )" crlf))
)

;"brag","N","1.dIMga"
;His brag is worse than his fight
;
(defrule brag1
(declare (salience 4900))
(id-root ?id brag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dIMga_hAzka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brag.clp 	brag1   "  ?id "  dIMga_hAzka )" crlf))
)

;"brag","VT","1.dIMga_hAzkanA"
;He is always bragging about his achievemets.
;
