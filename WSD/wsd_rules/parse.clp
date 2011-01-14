

;Discussed with Chaitanyaji for the right hindi word for parse(SAbxabiXa_honA)(Meena)
(defrule parse0
(declare (salience 5000))
(id-root ?id parse)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 sentence)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
;(assert (id-wsd_root_mng ?id paxavyAKyA_kara))
(assert (id-wsd_root_mng ?id SAbxaboXa_ho))   
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parse.clp    parse0   "  ?id "  SAbxaboXa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  parse.clp    parse0   "  ?id " kA )" crlf))
)

(defrule parse1
(declare (salience 5000))
(id-root ?id parse)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAbxaboXa_kara))
;(assert (id-wsd_root_mng ?id SAbxaboXa_ho))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parse.clp    parse1   "  ?id "  SAbxaboXa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  parse.clp    parse1   "  ?id " kA )" crlf)
)
)


