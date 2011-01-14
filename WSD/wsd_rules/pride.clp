
(defrule pride0
(declare (salience 5000))
(id-root ?id pride)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBimAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pride.clp 	pride0   "  ?id "  aBimAna )" crlf))
)

;"pride","N","1.aBimAna"
;The pride of our nation was Bapuji.
;--"2.AwmABimAna"
;Don't hurt one's pride.
;--"3.SeroM_kA_samUha"
;There is a pride in the nearby  forest.
;
(defrule pride1
(declare (salience 4900))
(id-root ?id pride)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pride.clp 	pride1   "  ?id "  garva_kara )" crlf))
)

;"pride","V","1.garva_karanA"
;Pride yourself on your achievements.
;
