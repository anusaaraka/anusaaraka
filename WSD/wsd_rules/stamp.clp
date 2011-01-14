
(defrule stamp0
(declare (salience 5000))
(id-root ?id stamp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tikata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stamp.clp 	stamp0   "  ?id "  tikata )" crlf))
)

;"stamp","N","1.tikata"
;I have a good collection of stamps.
;--"2.TappA"
;Tata is a stamp of quality.
;--"3.prakAra"
;Industries of different stamp hold a very high position in our society.
;
(defrule stamp1
(declare (salience 4900))
(id-root ?id stamp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEra_pataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stamp.clp 	stamp1   "  ?id "  pEra_pataka )" crlf))
)

;"stamp","V","1.pEra_patakanA"
;She stamped her foot in anger.
;--"2.TappA_lagAnA"
;They refused to stamp my driving licence.
;--"3.tikata_lagAnA"
;A letter is considered by the PandT only when it is stamped.
;--"4.praBAviwa_karanA"
;He stamped every body by his encouraging speech.
;
