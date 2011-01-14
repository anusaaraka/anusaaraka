
(defrule intense0
(declare (salience 5000))
(id-root ?id intense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMBIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intense.clp 	intense0   "  ?id "  gaMBIra )" crlf))
)

(defrule intense1
(declare (salience 4900))
(id-root ?id intense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIkRNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intense.clp 	intense1   "  ?id "  wIkRNa )" crlf))
)

;"intense","Adj","1.wIkRNa/uwkata/awimAwra"
;Tom has intense pain in his ankle.
;--"2.weja"
;Don't go out in intense heat.
;--"3.gamBIra"
;He gets very intense when he talks about politics.
;
;
