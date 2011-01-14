
(defrule bloom0
(declare (salience 5000))
(id-root ?id bloom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bloom.clp 	bloom0   "  ?id "  PUla )" crlf))
)

;"bloom","N","1.PUla"
;These roses have beautiful booms during the summer months.
;--"2.SiKara{sOnxarya_kA}"
;She is in the bloom of her youth.
;
(defrule bloom1
(declare (salience 4900))
(id-root ?id bloom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAra_para_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bloom.clp 	bloom1   "  ?id "  bahAra_para_A )" crlf))
)

;"bloom","VI","1.bahAra_para_AnA"
;The cherry tree bloomed
;
