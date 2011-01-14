;Added by sheetal(14-03-10)
;Grace may not be possible to fix the problem .
(defrule may_not_0_tam0
(declare (salience 5000))
(id-TAM ?id may_not_0)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id be)
(kriyA-subject  ?id ?sub)
(id-cat_coarse ?sub PropN|noun)
=>
(retract ?mng)
(assert (kriyA_id-subject_viBakwi ?id ke_liye))
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id  may_not_0 -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  may_not_0_tam.clp         may_not_0_tam0  "  ?id "  - )" crlf))
)
