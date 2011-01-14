
(defrule oblige0
(declare (salience 5000))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id obliging )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id maxaxa_ke_lie_wEyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  oblige.clp  	oblige0   "  ?id "  maxaxa_ke_lie_wEyAra )" crlf))
)

;"obliging","Adj","maxaxa ke lie wEyAra"
;Elizabeth-I was a very obliging queen.
;
(defrule oblige1
(declare (salience 4900))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id oblige )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id upakqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  oblige.clp  	oblige1   "  ?id "  upakqwa )" crlf))
)

;"obliged","Adj","upakqwa"
;I am much obliged to you for your timely help.
;
;
(defrule oblige2
(declare (salience 4800))
(id-root ?id oblige)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maxaxa_karane_upakqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oblige.clp 	oblige2   "  ?id "  maxaxa_karane_upakqwa_kara )" crlf))
)

;"oblige","V","1.maxaxa_karane_upakqwa_karanA"
;He would be obliged to help.
;--"2.nEwika_niyamoM_se_majZabUra_karanA"
;No law can oblige children to take case of their aged parents.
;
