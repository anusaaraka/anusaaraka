
(defrule convene0
(declare (salience 5000))
(id-root ?id convene)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekawra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convene.clp 	convene0   "  ?id "  ekawra_ho )" crlf))
)

;"convene","VI","1.ekawra_honA/baturanA"
;The council convened last week.
;The students were convened in the auditorium.
;
(defrule convene1
(declare (salience 4900))
(id-root ?id convene)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ayojana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convene.clp 	convene1   "  ?id "  Ayojana_kara )" crlf))
)

;"convene","VT","1.Ayojana_karanA"
;The council convened last week
;--"2.ekawra_karanA"
;The students were convened in the auditorium
;
