
(defrule mitigate0
(declare (salience 5000))
(id-root ?id mitigate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mitigating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gamBIrawA_kama_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mitigate.clp  	mitigate0   "  ?id "  gamBIrawA_kama_karane_vAlA )" crlf))
)

;"mitigating","Adj","1.gamBIrawA kama karane vAlA"
;Be careful to explain the mitigating factors.
;
(defrule mitigate1
(declare (salience 4900))
(id-root ?id mitigate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gamBIrawA_kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mitigate.clp 	mitigate1   "  ?id "  gamBIrawA_kama_kara )" crlf))
)

;"mitigate","V","1.gamBIrawA kama karanA"
;You would have to mitigate the risks before getting the approval.
;
;