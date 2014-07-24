;@@@ Added by Shirisha Manju (08-05-14) --- Suggested by Chaitanya Sir
;The problem is what should be our next step.
;samasyA hE ki hamArA agalA kaxama kyA honA cAhie.
(defrule should_0_tam0
(declare (salience 5000))
(id-TAM ?id should_0)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id be)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id should_0 nA_cAhiye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  should_0_tam.clp    should_0_tam0  "  ?id "  nA_cAhiye)" crlf))
)


;@@@ Added by Shirisha Manju (08-05-14) --- Suggested by Chaitanya Sir
(defrule should_0_tam1
(id-TAM ?id should_0)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id should_0 nA_cAhiye))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  should_0_tam.clp    should_0_tam1  "  ?id "  nA_cAhiye)" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  should_0_tam.clp      should_0_tam1   "  ?id "  ko )" crlf)
)

