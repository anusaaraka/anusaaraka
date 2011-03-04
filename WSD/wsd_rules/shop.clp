
(defrule shop0
(declare (salience 5000))
(id-root ?id shop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xukAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shop.clp 	shop0   "  ?id "  xukAna )" crlf))
)

;"shop","N","1.xukAna"
;I went to the chemist's shop to buy some medicines.
;--"2.kAraKAnA"
;



;Modified by Meena(3.3.11)
;Ulsoor lake is an ideal place for sightseeing, boating and shopping. 
(defrule shop1
(declare (salience 4900))
(id-root ?id shop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shopping)
(id-cat_coarse ?id verb|verbal_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarIxArI_kara))
;(assert (id-wsd_root_mng ?id bAjZAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shop.clp 	shop1   "  ?id "  KarIxArI_kara )" crlf))
)

;"shop","V","1.bAjZAra_karanA"
;I'm shopping for Christmas presents.
;


