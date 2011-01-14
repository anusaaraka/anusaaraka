
(defrule sleeve0
(declare (salience 5000))
(id-root ?id sleeve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sleeved )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AswInavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sleeve.clp  	sleeve0   "  ?id "  AswInavAlA )" crlf))
)

;"sleeved","Adj","1.AswInavAlA"
(defrule sleeve1
(declare (salience 4900))
(id-root ?id sleeve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sleeve.clp 	sleeve1   "  ?id "  bAzha )" crlf))
)

;"sleeve","N","1.bAzha{kapadZe_kI}"
;--"2.bAzha{kapadZe_kI}/AswIna"
;He scolded his tailor for making the sleeves tight.
;
