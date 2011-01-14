
(defrule motivate0
(declare (salience 5000))
(id-root ?id motivate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id motivated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aBipreriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  motivate.clp  	motivate0   "  ?id "  aBipreriwa )" crlf))
)

;"motivated","Adj","1.aBipreriwa"
;Sarojini Naidu was motivated by the call of Gandhiji.
;
(defrule motivate1
(declare (salience 4900))
(id-root ?id motivate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  motivate.clp 	motivate1   "  ?id "  preriwa_kara )" crlf))
)

;"motivate","V","1.preriwa_karanA"
;My teacher used to motivate me to acquire a good profession.
;
