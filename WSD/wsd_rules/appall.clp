
(defrule appall0
(declare (salience 5000))
(id-root ?id appall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id appalling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BayaMkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  appall.clp  	appall0   "  ?id "  BayaMkara )" crlf))
)

;"appalling","Adj","1.BayaMkara"
;Flood victims are struggling to survive in appalling conditions in Orissa.
;
(defrule appall1
(declare (salience 4900))
(id-root ?id appall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vismiwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appall.clp 	appall1   "  ?id "  vismiwa_kara_xe )" crlf))
)

;"appall","V","1.vismiwa_kara_xenA"
;That architecture apalled him.
;
;
