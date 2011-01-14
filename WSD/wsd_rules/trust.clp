
(defrule trust0
(declare (salience 5000))
(id-root ?id trust)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id trusting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viSvAsa_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  trust.clp  	trust0   "  ?id "  viSvAsa_karane_vAlA )" crlf))
)

;"trusting","Adj","1.viSvAsa_karane_vAlA"
;You have a trusting nature.
;
(defrule trust1
(declare (salience 4900))
(id-root ?id trust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nyAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trust.clp 	trust1   "  ?id "  nyAsa )" crlf))
)

(defrule trust2
(declare (salience 4800))
(id-root ?id trust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarosA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trust.clp 	trust2   "  ?id "  BarosA_kara )" crlf))
)

;"trust","VTI","1.BarosA_karanA"
;I trust you.
;You have to trust the woman before leaving your daughter.
;--"2.ASA_karanA"
;I trust [that]he is having good health.
;
;