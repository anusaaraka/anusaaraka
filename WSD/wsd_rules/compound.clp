
(defrule compound0
(declare (salience 5000))
(id-root ?id compound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miSraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compound.clp 	compound0   "  ?id "  miSraNa )" crlf))
)

(defrule compound1
(declare (salience 4900))
(id-root ?id compound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compound.clp 	compound1   "  ?id "  mila_jA )" crlf))
)

;"compound","V","1.mila_jAnA"
;The test tube in which the chemicals were compounded fell from her. 
;
;