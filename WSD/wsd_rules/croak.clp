
(defrule croak0
(declare (salience 5000))
(id-root ?id croak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tarra-tarra_kI_AvAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  croak.clp 	croak0   "  ?id "  tarra-tarra_kI_AvAjZa )" crlf))
)

;"croak","N","1.tarra-tarra_kI_AvAjZa"
;Why are you making croaking sound like frog?
;
(defrule croak1
(declare (salience 4900))
(id-root ?id croak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  croak.clp 	croak1   "  ?id "  BarrA )" crlf))
)

;"croak","V","1.BarrAnA"
;Because of his sore throat,he croaked out a few words.  
;
