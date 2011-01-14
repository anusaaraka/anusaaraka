;Added by sheetal
;The position we talked about is gone.
(defrule en_tam0
(declare (salience 5000))
(id-TAM ?id en)
(subject-subject_samAnAXikaraNa  ?sub ?id)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id en 0_cukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  en_tam.clp        en_tam0  "  ?id "  0_cukA )" crlf))
)



(defrule en_tam1
(declare (salience 4999))
(id-TAM ?id en)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id en yA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  en_tam.clp        en_tam1  "  ?id "  yA_huA )" crlf))
)

