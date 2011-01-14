(defrule let_0_tam0
(declare (salience 6000))
(id-TAM ?id let_0)
(id-word =(- ?id 1) us)
?mng<-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id let_0 subj))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  let_0_tam.clp        let_0_tam0  "  ?id "  subj )" crlf))
)
;Added by Sheetal (07-12-09)
;Let us go to the market .
