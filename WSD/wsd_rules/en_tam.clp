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

;@@@ Added by Pramila(BU) on 17-02-2014
;Overcome by curiosity, the boy looked through the window.  ;oald
;जिज्ञासा के वशीभूत होकर , लड़के ने खिड़की से देखा.
(defrule en_tam1
(declare (salience 5000))
(id-TAM ?id en)
?mng <-(meaning_to_be_decided ?id)
(AjFArWaka_kriyA  ?id)
(kriyA-by_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id en 0_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  en_tam.clp        en_tam1  "  ?id "  0_kara )" crlf))
)


(defrule en_tam2
(declare (salience 4999))
(id-TAM ?id en)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id en yA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  en_tam.clp        en_tam2  "  ?id "  yA_huA )" crlf))
)

