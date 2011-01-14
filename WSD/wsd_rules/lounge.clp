
(defrule lounge0
(declare (salience 5000))
(id-root ?id lounge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lOYMja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lounge.clp 	lounge0   "  ?id "  lOYMja )" crlf))
)

;"lounge","N","1.lOYMja"
;A lot of people were waiting at the airport lounge to get some news of the hijacked plane.
;--"2.bETaka"
;She has furnished her lounge very tastefully.
;
(defrule lounge1
(declare (salience 4900))
(id-root ?id lounge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lounge.clp 	lounge1   "  ?id "  alasA )" crlf))
)

;"lounge","V","1.alasAnA"
(defrule lounge2
(declare (salience 4800))
(id-root ?id lounge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lounge.clp 	lounge2   "  ?id "  alasA )" crlf))
)

;"lounge","VT","1.alasAnA"
;He is seen lounging around the parks && streets.
;
