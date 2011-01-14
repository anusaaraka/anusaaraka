
(defrule tangible0
(declare (salience 5000))
(id-root ?id tangible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswavika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tangible.clp 	tangible0   "  ?id "  vAswavika )" crlf))
)

;"tangible","Adj","1.vAswavika"
;The clerk had tangible evidence of his work.
;--"2.sparSa_yogya"
;He has a tangible skin.
;
(defrule tangible1
(declare (salience 4900))
(id-root ?id tangible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparSa_yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tangible.clp 	tangible1   "  ?id "  sparSa_yogya )" crlf))
)

;"tangible","N","1.sparSa_yogya"
;The artefacts in the museum are not tangible.
;
