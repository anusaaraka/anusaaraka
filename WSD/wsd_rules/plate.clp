
(defrule plate0
(declare (salience 5000))
(id-root ?id plate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id plating )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id caxxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plate.clp  	plate0   "  ?id "  caxxara )" crlf))
)

;"plating","N","1.caxxara"
;The plating is beginning to wear off.
(defrule plate1
(declare (salience 4900))
(id-root ?id plate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pleta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plate.clp 	plate1   "  ?id "  pleta )" crlf))
)

(defrule plate2
(declare (salience 4800))
(id-root ?id plate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mulammA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plate.clp 	plate2   "  ?id "  mulammA_lagA )" crlf))
)

;"plate","V","1.mulammA lagAnA"
;The copper trey is plated with silver.
;
;
