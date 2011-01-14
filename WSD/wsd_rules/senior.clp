
(defrule senior0
(declare (salience 5000))
(id-root ?id senior)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agraja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  senior.clp 	senior0   "  ?id "  agraja )" crlf))
)

(defrule senior1
(declare (salience 4900))
(id-root ?id senior)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id variRTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  senior.clp 	senior1   "  ?id "  variRTa )" crlf))
)

;"senior","Adj","1.variRTa"
;My brother is a senior lecturer in that University.
;--"2.jyeRTa"
;Being a senior, he is eligible to vote this time.
;
;