;default_sense  0_cukane_ke_bAxa        0
;(defrule having_en_tam0
;(declare (salience 5000))
;(id-root ?id having_en_tam)
;=>
;(assert (id-HM ?id 0_ne_para)))

;ne_para is better than nA_ke_bAxa, since ne_para also may mean nA_ke_kAraNa, which is required in some cases.
;Having lost my money  may mean  Kone_ke_kAraNa OR Kone_ke_bAxa
(defrule having_en_tam0
(declare (salience 6000))
(id-TAM ?id having_en)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
;;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-word ?id having)
(id-cat_coarse =(+ ?id 1) verb)
(id-root ?id1 ?)
;(kriyA-subject =(+ ?id 1) ?id1)
(id-root ?id2 ?)
(kriyA-object =(+ ?id 1) ?id2)
(subject-opener ?id1 ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id having_en  0_ne_ke_bAxa))
;(assert (id-E_tam-H_tam_mng ?id having_en  0_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  having_en_tam.clp       having_en_tam0  "  ?id "   0_ne_ke_bAxa )" crlf))
)
                                                
