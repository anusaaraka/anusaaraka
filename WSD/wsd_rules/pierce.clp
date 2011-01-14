
(defrule pierce0
(declare (salience 5000))
(id-root ?id pierce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id piercing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wIvra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pierce.clp  	pierce0   "  ?id "  wIvra )" crlf))
)

;"piercing","Adj","1.wIvra"
;She gave a piercing shriek.
;
(defrule pierce1
(declare (salience 4900))
(id-root ?id pierce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pierce.clp 	pierce1   "  ?id "  Cexiwa_kara )" crlf))
)

;"pierce","V","1.Cexiwa_karanA"
;The bullet pierced his hand.
;--"2.cuBAnA"
;she pierced that pencil nib on my finger.
;--"3.praBAviwa_karanA"
;Her speech pierced the audience.
;
