
(defrule correct0
(declare (salience 5000))
(id-root ?id correct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  correct.clp 	correct0   "  ?id "  sahI )" crlf))
)

;"correct","Adj","1.sahI"
;He gave correct answers to all the questions in the exam.
;
(defrule correct1
(declare (salience 4900))
(id-root ?id correct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  correct.clp 	correct1   "  ?id "  TIka_kara )" crlf))
)

;"correct","V","1.TIka_karanA/SoXanA"
;Teacher was correcting the answer's of the students.
;
