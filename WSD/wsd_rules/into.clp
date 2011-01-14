
(defrule into0
(declare (salience 5000))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) integer|whole number|number )
(id-word =(+ ?id 1) integer|whole number|number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into0   "  ?id "  guNA )" crlf))
)

(defrule into1
(declare (salience 4900))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) inquiry)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into1   "  ?id "  kI )" crlf))
)

(defrule into2
(declare (salience 4800))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) custody|business|human)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into2   "  ?id "  meM )" crlf))
)

(defrule into3
(declare (salience 4700))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_aMxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into3   "  ?id "  ke_aMxara )" crlf))
)

;"into","Prep","1.aMxara_ko"
;You come into the house.
;--"2.guNiwa_karane_para"
;5 into 1.is fifty.
;
