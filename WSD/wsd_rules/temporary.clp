
(defrule temporary0
(declare (salience 5000))
(id-root ?id temporary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asWAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  temporary.clp 	temporary0   "  ?id "  asWAyI )" crlf))
)

(defrule temporary1
(declare (salience 4900))
(id-root ?id temporary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpakAlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  temporary.clp 	temporary1   "  ?id "  alpakAlika )" crlf))
)

;"temporary","Adj","1.alpakAlika"
;He had a temporary job.
;
;
