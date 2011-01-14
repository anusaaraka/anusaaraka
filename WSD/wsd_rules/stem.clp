
(defrule stem0
(declare (salience 5000))
(id-root ?id stem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stem.clp 	stem0   "  ?id "  wanA )" crlf))
)

(defrule stem1
(declare (salience 4900))
(id-root ?id stem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stem.clp 	stem1   "  ?id "  roka )" crlf))
)

;"stem","V","1.rokanA"
;Doctor bandaged the cut to stem the bleeding.
;--"2.jadZa"  
;Ignorance is the stem of racial discrimination.
;
;