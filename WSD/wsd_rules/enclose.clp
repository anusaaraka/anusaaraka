;Added by sheetal(10/6/10)
(defrule enclose0
(declare (salience 5000))
(id-root ?id enclose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with|herewith)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enclose.clp       enclose0   "  ?id "  Beja )" crlf))
)




;Added by Meena(14.6.10)
;The park that encloses the monument has recently been enlarged .
(defrule enclose1
(declare (salience 5000))
(id-root ?id enclose)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 monument)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gera))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enclose.clp      enclose1   "  ?id "  Gera )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enclose.clp      enclose1   "  ?id " ko )" crlf)
)
)


