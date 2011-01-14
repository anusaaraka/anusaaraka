
;Added by Meena(25.6.10)
;Why is there such a divorce between the arts and the sciences in this country's schools ?
(defrule divorce00
(declare (salience 5000))
(id-root ?id divorce)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-between_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pArWakya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divorce.clp   divorce00   "  ?id " pArWakya )" crlf))
)





(defrule divorce0
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id divorce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divorce.clp 	divorce0   "  ?id "  walAka )" crlf))
)

;"divorce","N","1.walAka/vivAha_vicCexa"
;They decided to have a divorce.
;--"2.pqWakIkaraNa"
;




;Added by Meena(24.6.10)
;How can you divorce the issues of environmental protection and overpopulation?
(defrule divorce1
(declare (salience 4900))
(id-root ?id divorce)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 issue)
(kriyA-object ?id ?id1)
(viSeRya-of_saMbanXI ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divorce.clp   divorce1   "  ?id "  alaga_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  divorce.clp      divorce1   "  ?id " ko )" crlf)
)
)





;Added by Meena(25.6.10)
;She is divorcing her husband.
(defrule divorce2
(declare (salience 4800))
(id-root ?id divorce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walAka_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divorce.clp   divorce2   "  ?id "  walAka_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  divorce.clp      divorce2   "  ?id " ko )" crlf)
)
)



;Salience reduced by Meena(24.6.10)
;Meaning modified by Sheetal(21.6.10)
;When Mrs . Chitnis discovered that her husband was an adulterer she divorced him . 
(defrule divorce3
;(declare (salience 4900))
(declare (salience 0))
(id-root ?id divorce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walAka_xe_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divorce.clp 	divorce3   "  ?id "  walAka_xe_xe )" crlf))
)

;"divorce","VT","1.walAka_xenA/vivAha_vicCexa_karanA"
;The couple divorced after only 6 months
;--"2.pqWaka_karanA"

