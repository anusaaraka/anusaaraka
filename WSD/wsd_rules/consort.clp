
(defrule consort0
(declare (salience 5000))
(id-root ?id consort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consort.clp 	consort0   "  ?id "  pawnI )" crlf))
)

;"consort","N","1.pawnI/pawi_KAsakara_kisI_SAsaka_kI"
;The sultans had many consorts.
;--"2.saMgIwajFoM_yA_vAxya_yaMwroM_kA_samUha"
;An orchestra by famous consort of the city came to our campus.
;
(defrule consort1
(declare (salience 4900))
(id-root ?id consort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mela_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consort.clp 	consort1   "  ?id "  mela_kara )" crlf))
)

;"consort","V","1.mela_karanA"
;Their son has been consorting with drug-addicts for quite sometime.
;
