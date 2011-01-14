
(defrule true0
(declare (salience 5000))
(id-root ?id true)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  true.clp 	true0   "  ?id "  sawya )" crlf))
)

;"true","Adj","1.sawya"
;It was a true story.
;--"2.asalI"
;He claimed to be the true owner of the land.
;--"3.sahI"
;The man showed the true document.
;--"4.saccA"
;He is a true friend of mine.
;
(defrule true1
(declare (salience 4900))
(id-root ?id true)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawyawA_pUrvaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  true.clp 	true1   "  ?id "  sawyawA_pUrvaka )" crlf))
)

;"true","Adv","1.sawyawA_pUrvaka"
;He behaved true to his words.
;
