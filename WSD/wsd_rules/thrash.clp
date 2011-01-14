
(defrule thrash0
(declare (salience 5000))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id thrashing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pitAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  thrash.clp  	thrash0   "  ?id "  pitAI )" crlf))
)

;"thrashing","N","1.pitAI"
;The teacher gave him a good thrashing.
;
(defrule thrash1
(declare (salience 4900))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgIwa_ke_sAWa_pArtI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thrash.clp 	thrash1   "  ?id "  saMgIwa_ke_sAWa_pArtI )" crlf))
)

;"thrash","N","1.saMgIwa_ke_sAWa_pArtI"
;We will have a thrash after the exams.
;
(defrule thrash2
(declare (salience 4800))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thrash.clp 	thrash2   "  ?id "  pIta )" crlf))
)

;"thrash","VT","1.pIta"
;Tom was thrashed by his master for not earning a penny.
;--"2.[anOpacArika]parAjiwa_karanA"
;Indian team was thrashed by the West Indian team.
;
