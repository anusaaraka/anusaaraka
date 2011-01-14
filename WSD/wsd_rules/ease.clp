
(defrule ease0
(declare (salience 5000))
(id-root ?id ease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ease.clp 	ease0   "  ?id "  ArAma_kA )" crlf))
)

;"ease","N","1.ArAma_kA"
;We have to follow a life of ease.
;--"2.sugamawA"
;We have put the books here for ease of access.
;
(defrule ease1
(declare (salience 4900))
(id-root ?id ease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ease.clp 	ease1   "  ?id "  ArAma_xe )" crlf))
)

;"ease","VT","1.ArAma_xenA"
;He eased the burden of debt by implementing many schemes.
;--"2.wanAva_kama_karanA"
;The medicines eased his tension.
;--"3.mUlya_kama_honA"
;Interest rates have eased since May.
;
