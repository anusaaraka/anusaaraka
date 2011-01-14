
(defrule prepossess0
(declare (salience 5000))
(id-root ?id prepossess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id prepossessing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AkarRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  prepossess.clp  	prepossess0   "  ?id "  AkarRaka )" crlf))
)

;"prepossessing","Adj","1.AkarRaka"
;His appearance is not very prepossessing.
;
(defrule prepossess1
(declare (salience 4900))
(id-root ?id prepossess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prepossess.clp 	prepossess1   "  ?id "  praBAviwa_kara )" crlf))
)

;"prepossess","V","1.praBAviwa_kara"
