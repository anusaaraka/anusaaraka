
(defrule characteristic0
;(declare (salience 5000));salience changed
(id-root ?id characteristic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  characteristic.clp 	characteristic0   "  ?id "  viSeRa )" crlf))
)

;"characteristic","Adj","1.viSeRa"
;He spoke in his characteristic style.
;
(defrule characteristic1
(declare (salience 4900))
(id-root ?id characteristic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta_lakRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  characteristic.clp 	characteristic1   "  ?id "  viSiRta_lakRaNa )" crlf))
)

;"characteristic","N","1.viSiRta_lakRaNa"
;Such remarks are not characteristic of him.
;

;Removed 'characterstic.clp' file as the spelling is wrong. Added the rules here. These rules need to be improved. So commenting them.
; Suggested by Chaitanya Sir. Commented by Roja (27-12-13)
;"characteristic","Adj","1.cAriwrika"
;(defrule characteristic1
;(declare (salience 4900))
;(id-root ?id characteristic)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id cAriwrika))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  characteristic.clp     characteristic1   "  ?id "  cAriwrika )" crlf))
;)
;;"characterstic","N","1.viSeRa_guNa"
;(defrule characteristic2
;(declare (salience 4800))
;(id-root ?id characteristic)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id viSeRa_guNa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  characteristic.clp     characteristic2   "  ?id "  viSeRa_guNa )" crlf))
;)

;@@@ Added by Preeti(1-5-14)
;Grey stone is characteristic of buildings in that area. [Cambridge Learner’s Dictionary]
;BUre pawWara usa kRewra meM imArawoM kA vESiRtya hE.
(defrule characteristic2
(declare (salience 1000))
(id-root ?id characteristic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vESiRtya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  characteristic.clp 	characteristic2   "  ?id "   vESiRtya )" crlf))
)
