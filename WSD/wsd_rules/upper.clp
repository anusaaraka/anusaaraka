


;Added by Meena(23.3.10)
;The upper middle-class tend to go into business.
(defrule upper0
(declare (salience 5000))
(id-root ?id upper)
?mng <-(meaning_to_be_decided ?id)
(or (viSeRya-viSeRaNa ?id1 ?id)(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upper.clp     upper0   "  ?id "  ucca )" crlf))
)




;Salience reduced by Meena(23.3.10)
(defrule upper1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id upper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upper.clp 	upper1   "  ?id "  UparavAlA )" crlf))
)

;"upper","Adj","1.UparavAlA"
;I reserved an upper birht totravel comfortable in the train.
;--"2.uccawara"
;The upper sections of a society are often unaware of the problems of the lower classes.
;





;Salience reduced by Meena(23.3.10)
(defrule upper2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id upper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jUwe_Axi_kA_Upara_kA_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upper.clp 	upper2   "  ?id "  jUwe_Axi_kA_Upara_kA_BAga )" crlf))
)

;"upper","N","1.jUwe_Axi_kA_Upara_kA_BAga"
;The leather uppers were not available with the cobbler.
;
