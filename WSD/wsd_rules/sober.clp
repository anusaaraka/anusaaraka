
(defrule sober0
(declare (salience 5000))
(id-root ?id sober)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sobering )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gamBIrawA_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sober.clp  	sober0   "  ?id "  gamBIrawA_kI_ora )" crlf))
)

;"sobering","Adj","1.gamBIrawA_kI_ora"
;The incident had a sobering effect on all.
;
(defrule sober1
(declare (salience 4900))
(id-root ?id sober)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwuliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sober.clp 	sober1   "  ?id "  saMwuliwa )" crlf))
)

(defrule sober2
(declare (salience 4800))
(id-root ?id sober)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id amawwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sober.clp 	sober2   "  ?id "  amawwa )" crlf))
)

;"sober","Adj","1.amawwa"
;Were you completely sober when you said that?
;--"2.saMyamI/samaJaxAra" A boy of your age should be sober"
;
;