
(defrule program0
(declare (salience 5000))
(id-root ?id program)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id progrAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  program.clp 	program0   "  ?id "  progrAma )" crlf))
)
;Modified by Sukhada. yojanA => progrAma.

;"program","N","1.yojanA"
;Now a days some useful programs are being prepared.
;
(defrule program1
(declare (salience 4900))
(id-root ?id program)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojanA_yA_programa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  program.clp 	program1   "  ?id "  yojanA_yA_programa_banA )" crlf))
)

;"program","V","1.yojanA_yA_programa_banAnA"
;The computer is programmed to receive instructions from the user.
;
