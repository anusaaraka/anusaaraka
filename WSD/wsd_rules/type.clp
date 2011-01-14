
(defrule type0
(declare (salience 5000))
(id-root ?id type)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  type.clp 	type0   "  ?id "  prakAra )" crlf))
)

;"type","N","1.prakAra"
;There are various types of roses in the garden.
;
(defrule type1
(declare (salience 4900))
(id-root ?id type)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tAIpa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  type.clp 	type1   "  ?id "  tAIpa_kara )" crlf))
)

;"type","VT","1.tAIpa_karanA{taMkaNa_karanA}"
;He has to type the script.
;This typewriter types well.
;
