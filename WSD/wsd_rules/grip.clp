
(defrule grip0
(declare (salience 5000))
(id-root ?id grip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gripping )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uwsAhiwa_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  grip.clp  	grip0   "  ?id "  uwsAhiwa_karane_vAlA )" crlf))
)

;"gripping","Adj","1.uwsAhiwa_karane_vAlA"
;The film had gripping storyline.
;
(defrule grip1
(declare (salience 4900))
(id-root ?id grip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasa_kara_pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grip.clp 	grip1   "  ?id "  kasa_kara_pakadZa )" crlf))
)

;default_sense && category=verb	pakadZa	0
;"grip","VT","1.pakadZanA"
;I gripped the overhead rod in the bus.
;
;