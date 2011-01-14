
(defrule cooper0
(declare (salience 5000))
(id-root ?id cooper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xadZabA_banAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cooper.clp 	cooper0   "  ?id "  xadZabA_banAne_vAlA )" crlf))
)

;"cooper","N","1.xadZabA_banAne_vAlA"
;He works as a cooper in the factory.
;
(defrule cooper1
(declare (salience 4900))
(id-root ?id cooper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marammawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cooper.clp 	cooper1   "  ?id "  marammawa_kara )" crlf))
)

;"cooper","VT","1.marammawa_karanA/jodZa_xenA"
;He coopered five drums since morning.
;
