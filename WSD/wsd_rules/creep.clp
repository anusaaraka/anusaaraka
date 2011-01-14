
(defrule creep0
(declare (salience 5000))
(id-root ?id creep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id creeping )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XIre-XIre_AsAnI_se_jFAwa_na_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  creep.clp  	creep0   "  ?id "  XIre-XIre_AsAnI_se_jFAwa_na_honA )" crlf))
)

;"creeping","Adj","1.XIre-XIre_AsAnI_se_jFAwa_na_honA"
;Her creeping disease results in cancer.  
;
(defrule creep1
(declare (salience 4900))
(id-root ?id creep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  creep.clp 	creep1   "  ?id "  reMga )" crlf))
)

;"creep","VI","1.reMganA"
;The snake crept quietly towards the frog.
;--"2.XIre_XIre_calanA"
;My friend crept up && peeked over the window. 
;--"3.PElanA{lawA_iwyAxi}"
;Ivy had crept up the wall. 
;
;
