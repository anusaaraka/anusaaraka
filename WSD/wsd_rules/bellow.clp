
(defrule bellow0
(declare (salience 5000))
(id-root ?id bellow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XOMkanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bellow.clp 	bellow0   "  ?id "  XOMkanI )" crlf))
)

;"bellow","N","1.XOMkanI"
(defrule bellow1
(declare (salience 4900))
(id-root ?id bellow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIdZA_ke_kAraNa_ro))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bellow.clp 	bellow1   "  ?id "  pIdZA_ke_kAraNa_ro )" crlf))
)

;"bellow","V","1.pIdZA_ke_kAraNa_ronA"
;The patients bellowed in the hospital.
;--"2.gusse_se_cillAnA"
;She bellowed at him for making offensive remarks.
;
