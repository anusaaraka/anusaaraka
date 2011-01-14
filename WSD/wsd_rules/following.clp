
(defrule following0
(declare (salience 5000))
(id-root ?id following)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aglA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  following.clp 	following0   "  ?id "  aglA )" crlf))
)

(defrule following1
(declare (salience 4900))
(id-root ?id following)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hone_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  following.clp 	following1   "  ?id "  hone_para )" crlf))
)

;"following","Prep","1.hone_para"
;There was a major uprising following his arrest.
;
;
