
(defrule stiff0
(declare (salience 5000))
(id-root ?id stiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stiff.clp 	stiff0   "  ?id "  kadZA )" crlf))
)

;"stiff","Adj","1.kadZA"
;The wire is too stiff to be bent.
;--"2.kaTina"
;The examination paper was too stiff to be solved by the students.
;--"3.haTIlA"
;The manager of the five star hotels is very stiff.
;--"4.BArI_kImawa"
;The diamond necklace is too stiff to be bought by a common man.
;
(defrule stiff1
(declare (salience 4900))
(id-root ?id stiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stiff.clp 	stiff1   "  ?id "  lASa )" crlf))
)

;"stiff","N","1.lASa"
;It was a very pathetic sight when Rajan's stiff was lying in the coffin for the funeral.
;
