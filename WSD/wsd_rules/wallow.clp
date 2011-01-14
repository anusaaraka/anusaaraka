
(defrule wallow0
(declare (salience 5000))
(id-root ?id wallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lotanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wallow.clp 	wallow0   "  ?id "  lotanA )" crlf))
)

;"wallow","N","1.lotanA"
;People wallow in bath spas
;
(defrule wallow1
(declare (salience 4900))
(id-root ?id wallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmaxayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wallow.clp 	wallow1   "  ?id "  AwmaxayA )" crlf))
)

;"wallow","VI","1.AwmaxayA"
;wallow in grief
;--"1.lotanA"
;An elephant is wallowing in the mudo
;
