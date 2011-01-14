
(defrule lapse0
(declare (salience 5000))
(id-root ?id lapse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lapse.clp 	lapse0   "  ?id "  cUka )" crlf))
)

;"lapse","N","1.cUka"
;He will not pardon you for this lapse.
;This lapse on your part may ruin your career.
;--"2.samApwi"
;With the lapse of time he may overcome his griet.
;
(defrule lapse1
(declare (salience 4900))
(id-root ?id lapse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lapse.clp 	lapse1   "  ?id "  raxxa_ho_jA )" crlf))
)

;"lapse","V","1.raxxa_ho_jAnA"
;The House allowed the bill to lapse.
;--"2.avanawa_ho_jAnA"
;Uncared for movements lapse into decay as time passes.
;
