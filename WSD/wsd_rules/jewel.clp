
(defrule jewel0
(declare (salience 5000))
(id-root ?id jewel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id jewelled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id maNi_se_sajA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  jewel.clp  	jewel0   "  ?id "  maNi_se_sajA_huA )" crlf))
)

;"jewelled","Adj","1.maNi_se_sajA_huA"
;His bought a jewelled watch.
;
(defrule jewel1
(declare (salience 4900))
(id-root ?id jewel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id javAharAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jewel.clp 	jewel1   "  ?id "  javAharAwa )" crlf))
)

;default_sense && category=noun	maNi	0
;"jewel","N","1.maNi"
;There are lots of jewels on display in the museum.
;
;