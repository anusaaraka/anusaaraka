
(defrule forlorn0
(declare (salience 5000))
(id-root ?id forlorn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAyUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forlorn.clp 	forlorn0   "  ?id "  mAyUsa )" crlf))
)

(defrule forlorn1
(declare (salience 4900))
(id-root ?id forlorn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAcAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forlorn.clp 	forlorn1   "  ?id "  lAcAra )" crlf))
)

;"forlorn","Adj","1.lAcAra"
;A forlorn orphan was begging on the street.
;--"2.EsI_ASA_jo_pUrI_na_ho_sake"
;I made a forlorn attempt to shed weight.
;--"3.akelA
;The hermits prefer to live in a forelorn place.
;
;
