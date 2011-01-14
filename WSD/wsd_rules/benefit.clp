
(defrule benefit0
(declare (salience 5000))
(id-root ?id benefit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  benefit.clp 	benefit0   "  ?id "  lABa )" crlf))
)

;"benefit","N","1.lABa"
;There are many benefits of nuclear energy.
;
(defrule benefit1
(declare (salience 4900))
(id-root ?id benefit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BalA_kara))
(assert (kriyA_id-object_viBakwi ?id kA));added by sheetal
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  benefit.clp 	benefit1   "  ?id "  BalA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  benefit.clp   benefit1   "  ?id "  kA )" crlf))
)

;"benefit","VT","1.BalA_karanA"
;The new facilities have benefitted the hostel inmates.
;
