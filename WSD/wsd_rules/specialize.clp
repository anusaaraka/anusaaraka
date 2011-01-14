
(defrule specialize0
(declare (salience 5000))
(id-root ?id specialize)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id specialized )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viSeRa_waraha_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  specialize.clp  	specialize0   "  ?id "  viSeRa_waraha_kA )" crlf))
)

;"specialized","Adj","1.viSeRa waraha kA"
;
(defrule specialize1
(declare (salience 4900))
(id-root ?id specialize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRajFa_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  specialize.clp 	specialize1   "  ?id "  viSeRajFa_bana )" crlf))
)

;"specialize","V","1.viSeRajFa bananA/viSeRa aXyayana karanA"
;He specializes in plastic surgery.
;
;