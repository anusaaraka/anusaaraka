
(defrule nick0
(declare (salience 5000))
(id-root ?id nick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaroMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nick.clp 	nick0   "  ?id "  KaroMca )" crlf))
)

;"nick","N","1.KaroMca"
;The small nick in the cloth became big.
;
(defrule nick1
(declare (salience 4900))
(id-root ?id nick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nick.clp 	nick1   "  ?id "  Cexa_kara )" crlf))
)

;"nick","VT","1.Cexa_karanA"
;The barber's knife nicked his cheek.
;
