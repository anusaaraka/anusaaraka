

;Added by Meena(19.5.10)
;Paul , in typically rude fashion , told him he was talking rubbish .
(defrule fashion0
(declare (salience 5000))
(id-root ?id fashion)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id  ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fashion.clp   fashion0   "  ?id "  warIkA )" crlf))
)



;Salience reduced by Meena(19.5.10)
(defrule fashion1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id fashion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PESana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fashion.clp 	fashion1   "  ?id "  PESana )" crlf))
)

;default_sense && category=noun	kArya_praNAlI	0
;"fashion","N","1.kArya_praNAlI"
;Sending messages through Email is in fashion.
;--"2.veSaBURA_kI_SElI"
;Bell-bottom pants are no more in fashion.
;
(defrule fashion2
(declare (salience 4900))
(id-root ?id fashion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRa_prakAra_kI_Akqwi_praxAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fashion.clp 	fashion2   "  ?id "  viSeRa_prakAra_kI_Akqwi_praxAna_kara )" crlf))
)

;"fashion","VT","1.viSeRa_prakAra_kI_Akqwi_praxAna_karanA"
;The potter fashioned pots from mud.
;
