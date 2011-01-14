

;Added by sheetal (10-09-09).
(defrule discipline0
(declare (salience 5000))
(id-root ?id discipline)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id disciplining )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuSAsiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discipline.clp       discipline0   "  ?id "  anuSAsiwa_kara)" crlf))
)

(defrule discipline1
(declare (salience 4900))
(id-root ?id discipline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuSAsana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discipline.clp 	discipline1   "  ?id "  anuSAsana )" crlf))
)

;"discipline","N","1.anuSAsana"
;There is no discipline amongst the students.
;--"2.viRaya"
;He is engaged in research work in a scientific discipline.
;
(defrule discipline2
(declare (salience 4800))
(id-root ?id discipline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuSAsiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discipline.clp 	discipline2   "  ?id "  anuSAsiwa_kara )" crlf))
)

;"discipline","VT","1.anuSAsiwa_karanA"
;Parents must discipline their children.
;
