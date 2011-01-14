
(defrule tremble0
(declare (salience 5000))
(id-root ?id tremble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kampana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tremble.clp 	tremble0   "  ?id "  kampana )" crlf))
)

;"tremble","N","1.kampana"
;She showed a tremble in her face.
;
(defrule tremble1
(declare (salience 4900))
(id-root ?id tremble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tremble.clp 	tremble1   "  ?id "  kAzpa )" crlf))
)

;"tremble","VT","1.kAzpanA"
;Her voice trembled with fear when she got the news.
;--"2.WaraWarAnA"
;Leaves swayed && trembled by the cool breeze .
;
