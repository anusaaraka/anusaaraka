

;Added by Meena(23.3.10)
;If you were a middle-class American without a job , who would you vote for . 
(defrule would_0_tam0
(declare (salience 5000))
(id-TAM ?id would_0)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?subj1)
(kriyA-subject ?id1 ?subj2)
(id-word ?id1 were)
(id-word ?subj1 ?word1)
(id-word ?subj2 ?word2)
(test (and (eq ?word1 ?word2)(neq ?id ?id1)))
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id would_0 wA))
;(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  would_0_tam.clp    would_0_tam0  "  ?id " wA )" crlf))
)

