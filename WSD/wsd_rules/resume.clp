
(defrule resume0
(declare (salience 5000))
(id-root ?id resume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resume.clp 	resume0   "  ?id "  sAra )" crlf))
)

;"resume","N","1.sAra"
;First give a resume of your lecture.
;
(defrule resume1
(declare (salience 4900))
(id-root ?id resume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_AramBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resume.clp 	resume1   "  ?id "  Pira_AramBa_kara )" crlf))
)

;"resume","VT","1.Pira_AramBa_karanA"
;After several days of leave she resumed her duties.
;
