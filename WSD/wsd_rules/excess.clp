;Priyank Bhatnagar (prnk.bhatnagar@gmail.com) 11/June/2011
;excess as adjective.
;He is trying to lose excess weight. 
;vaha awirikwa vajana Kone ke liye prayAsa_kara rahA hE.
(defrule excess0
(declare (salience 5100))
(id-root ?id excess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awirikwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " excess.clp	excess0  "  ?id "  " "  awirikwa )" crlf))
)

;Priyank Bhatnagar (prnk.bhatnagar@gmail.com) 11/June/2011
;to excess. 
;The word breakthrough gets used to excess in describing technological advances.;Sabxa Bexana wakanIkI sambanXI PElanA varNana karane meM jarUrawa_se jyAxA upayoga kiyA jAwA hE.
(defrule excess1
(declare (salience 5100))
(id-root ?id excess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-to_saMbanXI ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jarUrawa_se_jyAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " excess.clp	excess1  "  ?id "  " ?id1 "  jarUrawa_se_jyAxA  )" crlf))
)

;13/June/2011
;The book suffers from an excess of unfocused detail.
;puswaka upeyYakRawa byOrA ke eka awirikwa se ko JelawI hE.
(defrule excess2
(declare (salience 5100))
(id-root ?id excess)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-object ? ?id) (kriyA-subject ? ?id) (viSeRya-of_saMbanXI ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awirikwa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " excess.clp	excess2  "  ?id "  " " awirikwa  )" crlf))
)
