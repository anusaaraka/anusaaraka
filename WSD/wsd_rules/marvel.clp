
(defrule marvel0
(declare (salience 5000))
(id-root ?id marvel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScarya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  marvel.clp 	marvel0   "  ?id "  AScarya )" crlf))
)

;"marvel","N","1.AScarya"
;It's a marvel that he escaped unhurt.
;
(defrule marvel1
(declare (salience 4900))
(id-root ?id marvel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScaryacakiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  marvel.clp 	marvel1   "  ?id "  AScaryacakiwa_ho )" crlf))
)

;"marvel","V","1.AScaryacakiwa_ho"
