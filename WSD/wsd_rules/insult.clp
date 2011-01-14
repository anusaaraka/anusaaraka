
(defrule insult0
(declare (salience 5000))
(id-root ?id insult)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id insulting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id apamAnajanaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  insult.clp  	insult0   "  ?id "  apamAnajanaka )" crlf))
)

;"insulting","Adj","1.apamAnajanaka"
;Her anger rose by the insulting remarks of the passerby.
;
(defrule insult1
(declare (salience 4900))
(id-root ?id insult)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insult.clp 	insult1   "  ?id "  apamAna )" crlf))
)

;"insult","N","1.apamAna"
;The lady hurled insults at the waiter .
;
(defrule insult2
(declare (salience 4800))
(id-root ?id insult)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apamAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insult.clp 	insult2   "  ?id "  apamAna_kara )" crlf))
)

;"insult","VT","1.apamAna_karanA"
;He insulted her with his rude remarks.
;
