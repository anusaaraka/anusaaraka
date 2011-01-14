
(defrule cocoon0
(declare (salience 5000))
(id-root ?id cocoon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cocoon.clp 	cocoon0   "  ?id "  koyA )" crlf))
)

;"cocoon","N","1.koyA"
;Cocoon is made by larva insect.
;
(defrule cocoon1
(declare (salience 4900))
(id-root ?id cocoon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuniyA_se_alaga_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cocoon.clp 	cocoon1   "  ?id "  xuniyA_se_alaga_raha )" crlf))
)

;"cocoon","V","1.xuniyA_se_alaga_rahanA"
;She cocooned herself in her own world.
;
