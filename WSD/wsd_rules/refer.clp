
(defrule refer0
(declare (salience 5000))
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxarBa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer0   "  ?id "  saMxarBa_xe )" crlf))
)

;"refer","V","1.saMxarBa_xe"
(defrule refer1
(declare (salience 4900))
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer1   "  ?id "  saMkewa_kara )" crlf))
)

;"refer","VTI","1.saMkewa_karanA"
;Does this remark refer to you?  
;--"2.sOMpanA"
;The matter has been referred to the committee.
;--"3.havAlA_xenA"
;The advocate frequently referred to his notes.
;--"4.parAmarSa_hewu_BejanA"
;You should refer a patient to a specialist for treatment.
;
