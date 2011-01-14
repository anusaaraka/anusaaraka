
(defrule cost0
(declare (salience 5000))
(id-root ?id cost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cost.clp 	cost0   "  ?id "  KarcA )" crlf))
)

(defrule cost1
(declare (salience 4900))
(id-root ?id cost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAma_padZa))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cost.clp 	cost1   "  ?id "  xAma_padZa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  cost.clp      cost1   "  ?id " kA )" crlf))
)

;"cost","V","1.xAma_padZanA"
;--"2.nukasAna_pahuzcanA"
;This mistake cost him his job.
;
;
