
(defrule solution0
(declare (salience 5000))
(id-root ?id solution)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 turn)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solution.clp 	solution0   "  ?id "  Gola )" crlf))
)

(defrule solution1
(declare (salience 4900))
(id-root ?id solution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solution.clp 	solution1   "  ?id "  hala )" crlf))
)

;default_sense && category=noun	samasyA_kA_samAXAna_karane_kA_warIkA	0
;"solution","N","1.samasyA_kA_samAXAna_karane_kA_warIkA"
;India should find a solution to the kashmir problem.
;--"2.uwwara"
;Problems in physics should be solved without seeing the soluton.
;--"3.Gola"
;A solution of sugar in water.
;
