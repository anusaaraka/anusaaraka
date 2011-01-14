
(defrule redress0
(declare (salience 5000))
(id-root ?id redress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anyAya_kA_prawikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  redress.clp 	redress0   "  ?id "  anyAya_kA_prawikAra )" crlf))
)

;"redress","N","1.anyAya_kA_prawikAra"
;She should seek legal redress for unfair dismissal.   
;
(defrule redress1
(declare (salience 4900))
(id-root ?id redress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  redress.clp 	redress1   "  ?id "  sahI_kara )" crlf))
)

;"redress","VT","1.sahI_karanA"
;The union leader wanted to redress the employees grievances.  
;
