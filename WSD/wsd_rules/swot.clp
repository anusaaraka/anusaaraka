
(defrule swot0
(declare (salience 5000))
(id-root ?id swot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina_pariSrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swot.clp 	swot0   "  ?id "  kaTina_pariSrama )" crlf))
)

;"swot","N","1.kaTina_pariSrama"
(defrule swot1
(declare (salience 4900))
(id-root ?id swot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina_pariSrama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swot.clp 	swot1   "  ?id "  kaTina_pariSrama_kara )" crlf))
)

;"swot","V","1.kaTina_pariSrama_karanA"
;He is swotting for his board exams.
;
