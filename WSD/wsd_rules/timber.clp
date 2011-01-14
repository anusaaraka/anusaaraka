
(defrule timber0
(declare (salience 5000))
(id-root ?id timber)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id timbered )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id imArawI_lakadI_se_banA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  timber.clp  	timber0   "  ?id "  imArawI_lakadI_se_banA_huA )" crlf))
)

;"timbered","Adj","1.imArawI_lakadI_se_banA_huA"
;On both sides of the path are the timbered huts.
;
(defrule timber1
(declare (salience 4900))
(id-root ?id timber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakadI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  timber.clp 	timber1   "  ?id "  lakadI )" crlf))
)

;"timber","N","1.lakadI{imArawI}"
;Timber is used for the construction of buildings.
;--"2.kadI"
;They have erected timber for the construction of the building.
;
(defrule timber2
(declare (salience 4800))
(id-root ?id timber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakadZI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  timber.clp 	timber2   "  ?id "  lakadZI_lagA )" crlf))
)

;"timber","VT","1.lakadZI_lagA"
;The carpenter brought materials to timber the door .
;
