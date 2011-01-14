
(defrule demean0
(declare (salience 5000))
(id-root ?id demean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demeaning )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gOrava_kama_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  demean.clp  	demean0   "  ?id "  gOrava_kama_honA )" crlf))
)

;"demeaning","Adj","1.gOrava_kama_honA"
;She found it very demeaning to work under their contract.
;
(defrule demean1
(declare (salience 4900))
(id-root ?id demean)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIcA_xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demean.clp 	demean1   "  ?id "  nIcA_xiKA )" crlf))
)

;"demean","VT","1.nIcA_xiKAnA"
;Man always tries to demean women.
;puruRa hameSA mahilAoM ko nIcA xiKAne kI koSiSa karawe hE.
;
;
