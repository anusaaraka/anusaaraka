
(defrule hint0
(declare (salience 5000))
(id-root ?id hint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hint.clp 	hint0   "  ?id "  saMkewa )" crlf))
)

;"hint","N","1.saMkewa{parokRa}"
;kisI kisI ko BaviRya kI GatanAoM kA'hint'(ABAsa) ho jAwA hE.
;
(defrule hint1
(declare (salience 4900))
(id-root ?id hint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hint.clp 	hint1   "  ?id "  saMkewa_xe )" crlf))
)

;@@@ Added by Prachi Rathore[21-1-14]
; Some handy hints for removing stains[oald]
;कुछ आसान सुझाव है धब्बे निकालने के लिये  . 
(defrule hint2
(declare (salience 5000))
(id-root ?id hint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suJAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hint.clp 	hint2   "  ?id "  suJAva)" crlf))
)
;"hint","V","1.saMkewa_xenA"
;SikRaka ne vixyArWiyoM ko parIkRA meM Ane vAle kuCa praSnoM ke'hint' xiye.
;
