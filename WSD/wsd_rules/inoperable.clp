
(defrule inoperable0
(declare (salience 5000))
(id-root ?id inoperable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ApareSana_ke_ayogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inoperable.clp 	inoperable0   "  ?id "  ApareSana_ke_ayogya )" crlf))
)

(defrule inoperable1
(declare (salience 4900))
(id-root ?id inoperable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisakA_Salya-cikiwsA_na_ho_sake))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inoperable.clp 	inoperable1   "  ?id "  jisakA_Salya-cikiwsA_na_ho_sake )" crlf))
)

;"inoperable","Adj","1.jisakA_Salya-cikiwsA_na_ho_sake"
;The patient was worried as his tumour was inoperable.
;--"2.niRkriya"
;The saboteur held all the work inoperable.
;
;
