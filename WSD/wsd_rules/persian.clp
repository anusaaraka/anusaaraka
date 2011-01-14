
(defrule persian0
(declare (salience 5000))
(id-root ?id persian)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PArasI_BARA_yA_PArasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  persian.clp 	persian0   "  ?id "  PArasI_BARA_yA_PArasI )" crlf))
)

;"persian","Adj","1.PArasI_BARA_yA_PArasI{nivAsI}"
;Persian is the language  of Persia (country) && the inhabitants are known as Persians.
;
(defrule persian1
(declare (salience 4900))
(id-root ?id persian)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PArasI_BARA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  persian.clp 	persian1   "  ?id "  PArasI_BARA )" crlf))
)

;"persian","N","1.PArasI_BARA"
;The language of persia is known as persian.
;
