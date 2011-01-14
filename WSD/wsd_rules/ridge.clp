
(defrule ridge0
(declare (salience 5000))
(id-root ?id ridge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAlU_tIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ridge.clp 	ridge0   "  ?id "  DAlU_tIlA )" crlf))
)

;"ridge","N","1.DAlU_tIlA{_yA_pahAdZI}"
;Himalaya mountains have many prominent ridges.
;
(defrule ridge1
(declare (salience 4900))
(id-root ?id ridge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id medZa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ridge.clp 	ridge1   "  ?id "  medZa_banA )" crlf))
)

;"ridge","V","1.medZa_banAnA"
;A slightly ridged && ploughed field is good for a healthy crop.  
;
