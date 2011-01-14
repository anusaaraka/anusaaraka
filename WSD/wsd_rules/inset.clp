
(defrule inset0
(declare (salience 5000))
(id-root ?id inset)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jadZA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inset.clp 	inset0   "  ?id "  jadZA_huA )" crlf))
)

;"inset","N","1.jadZA_huA"
;This room has a mantelpiece with gasfire inset  .
;
(defrule inset1
(declare (salience 4900))
(id-root ?id inset)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inset.clp 	inset1   "  ?id "  jadZa )" crlf))
)

;"inset","V","1.jadZanA"
;Inset the border with dainty flower design..
;
