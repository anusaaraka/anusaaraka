
(defrule crab0
(declare (salience 5000))
(id-root ?id crab)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id crabbed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id liKAI_jo_paDZI_na_jA_sake))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  crab.clp  	crab0   "  ?id "  liKAI_jo_paDZI_na_jA_sake )" crlf))
)

;"crabbed","Adj","1.liKAI_jo_paDZI_na_jA_sake"
;No one can read his crabbed handwriting. 
;
(defrule crab1
(declare (salience 4900))
(id-root ?id crab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kekadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crab.clp 	crab1   "  ?id "  kekadZA )" crlf))
)

;"crab","N","1.kekadZA"
;he caught a crab && lost the race
;--"2.karka_rASira"
;--"3.jafgalI_seva"
;
;
