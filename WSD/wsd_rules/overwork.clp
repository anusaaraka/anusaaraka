
(defrule overwork0
(declare (salience 5000))
(id-root ?id overwork)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaXika_kArya_yA_pariSrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overwork.clp 	overwork0   "  ?id "  awyaXika_kArya_yA_pariSrama )" crlf))
)

;"overwork","N","1.awyaXika_kArya_yA_pariSrama"
;He became ill from overwork
;
(defrule overwork1
(declare (salience 4900))
(id-root ?id overwork)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyanwa_pariSrama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overwork.clp 	overwork1   "  ?id "  awyanwa_pariSrama_kara )" crlf))
)

;"overwork","VTI","1.awyanwa_pariSrama_karanA"
;The teachers overworked the whole day
;
