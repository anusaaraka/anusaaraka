
(defrule respondent0
(declare (salience 5000))
(id-root ?id respondent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id javAbaxeha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  respondent.clp 	respondent0   "  ?id "  javAbaxeha )" crlf))
)

;"respondent","Adj","1.javAbaxeha/uwwaraxAyI"
; --1.I am not respondent to any Body.
;
(defrule respondent1
(declare (salience 4900))
(id-root ?id respondent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawivAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  respondent.clp 	respondent1   "  ?id "  prawivAxI )" crlf))
)

;"respondent","N","1.prawivAxI"
;
