
(defrule tonic0
(declare (salience 5000))
(id-root ?id tonic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puRtikAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tonic.clp 	tonic0   "  ?id "  puRtikAraka )" crlf))
)

;"tonic","Adj","1.puRtikAraka"
;Words of wisdom act as a tonic in the times of difficulty.
;--"2.sura-viRayaka"
;A tonic syllable carries the main stress in a word.
;--"3.wAnAwmaka"
;Tonic harmony.
;
(defrule tonic1
(declare (salience 4900))
(id-root ?id tonic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balavarXaka_ORaXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tonic.clp 	tonic1   "  ?id "  balavarXaka_ORaXi )" crlf))
)

;"tonic","N","1.balavarXaka_ORaXi"
;She took tonic to improve her health.
;
