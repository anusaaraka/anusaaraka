
(defrule lumber0
(declare (salience 5000))
(id-root ?id lumber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kATa_kabAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lumber.clp 	lumber0   "  ?id "  kATa_kabAdZa )" crlf))
)

;"lumber","N","1.kATa_kabAdZa"
;Sell the lumber to get some money.
;
(defrule lumber1
(declare (salience 4900))
(id-root ?id lumber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lumber.clp 	lumber1   "  ?id "  BAra_xe )" crlf))
)

;"lumber","VT","1.BAra_xenA"
;Hari was lumbered with the task of compiling his letters.
;
