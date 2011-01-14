
(defrule resort0
(declare (salience 5000))
(id-root ?id resort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASraya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resort.clp 	resort0   "  ?id "  ASraya )" crlf))
)

;"resort","N","1.ASraya"
;A beach to which many people resort
;--"2.aMwima_cArA"
;I have come to you for advice as a last resort.
;
(defrule resort1
(declare (salience 4900))
(id-root ?id resort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SaraNa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resort.clp 	resort1   "  ?id "  SaraNa_le )" crlf))
)

;"resort","VT","1.SaraNa_lenA"
;If negotiations fail,we will have to resort to hunger strike. 
;
