
(defrule fetch0
(declare (salience 5000))
(id-root ?id fetch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fetching )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ArkaRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fetch.clp  	fetch0   "  ?id "  ArkaRaka )" crlf))
)

;"fetching","Adj","1.ArkaRaka"
;This model in the fashion show has a fetching dress.
;
(defrule fetch1
(declare (salience 4900))
(id-root ?id fetch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAkara_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fetch.clp 	fetch1   "  ?id "  jAkara_lA )" crlf))
)

;"fetch","V","1.jAkara_lAnA"
;Please go && fetch some chairs.
;--"2.mUlya_prApwi"
;This hose will fetch atleast Rs.1.million if sold.
;
;