
;Added by Meena(23.06.10)
;We searched all morning for the missing papers and finally discovered them in a drawer . 
(defrule discover0
(declare (salience 5000))
(id-root ?id discover)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(kriyA-kriyA_viSeRaNa ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DUzDZa_le)) 
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discover.clp       discover0   "  ?id "   DUzDZa_le )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "   discover.clp       discover0   "  ?id " ne )" crlf)
)
)



;Salience reduced by Meena(23.6.10)
;Added by sheetal(18-6-10)
;When Mrs.Chitnis discovered that her husband was an adulterer she divorced him .
(defrule discover1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id discover)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 predict)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_laga))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discover.clp       discover1   "  ?id "   pawA_laga )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "   discover.clp       discover0   "  ?id " ko )" crlf)
)
)
;
