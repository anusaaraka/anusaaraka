
(defrule toast0
(declare (salience 5000))
(id-root ?id toast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tosta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toast.clp 	toast0   "  ?id "  tosta )" crlf))
)

;"toast","N","1.tosta{sikI_breda}"
;Rama prepared toasts for breakfast.
;--"2.tosta{kisI_ke_svAsWya_yA_SuBakAmanAoM_ke_liye_SarAba_pIne_kI_kriyA}"
;They all proposed a toast for her birthday.
;
(defrule toast1
(declare (salience 4900))
(id-root ?id toast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toast.clp 	toast1   "  ?id "  sika )" crlf))
)

;"toast","VI","1.sikanA"
;Standing in the hot sun for full two hours she was toasted completely.
;
(defrule toast2
(declare (salience 4800))
(id-root ?id toast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toast.clp 	toast2   "  ?id "  BUna )" crlf))
)

;"toast","VT","1.BUna/seMka"
;She always toasts bread for breakfast.
;--"2.svAsWya_yA_SuBakAmanA_ke_lie_SarAba_pInA"
;Let us toast the birthday girl!.
;
