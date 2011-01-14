
(defrule unnerve0
(declare (salience 5000))
(id-root ?id unnerve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id unnerving )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hawowsAhiwa_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  unnerve.clp  	unnerve0   "  ?id "  hawowsAhiwa_huA )" crlf))
)

;"unnerving","Adj","1.hawowsAhiwa_huA"
;His sudden demise was unnerving.
;
(defrule unnerve1
(declare (salience 4900))
(id-root ?id unnerve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hawowsAha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unnerve.clp 	unnerve1   "  ?id "  hawowsAha_kara )" crlf))
)

;"unnerve","VT","1.hawowsAha_karanA"
;His sudden demise unnerved my spirit to live.
;
;