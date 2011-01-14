
(defrule penetrate0
(declare (salience 5000))
(id-root ?id penetrate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id penetrating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sUkRma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  penetrate.clp  	penetrate0   "  ?id "  sUkRma )" crlf))
)

;"penetrating","Adj","1.sUkRma"
;She is enough penetrate to understand this long chapter.
;--"2.veXaka"
;A penetrating cry heard from our neighbour's house.
;
(defrule penetrate1
(declare (salience 4900))
(id-root ?id penetrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gusa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  penetrate.clp 	penetrate1   "  ?id "  Gusa )" crlf))
)

;"penetrate","V","1.GusanA"
;The surgeons knife penetrated deep into the patient body.
;
;