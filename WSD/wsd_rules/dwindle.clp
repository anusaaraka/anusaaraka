
(defrule dwindle0
(declare (salience 5000))
(id-root ?id dwindle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dwindling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kRIyamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dwindle.clp  	dwindle0   "  ?id "  kRIyamAna )" crlf))
)

;"dwindling","Adj","1.kRIyamAna"
;My hope to travel in flight is dwindling
;
(defrule dwindle1
(declare (salience 4900))
(id-root ?id dwindle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRINa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dwindle.clp 	dwindle1   "  ?id "  kRINa_ho_jA )" crlf))
)

;"dwindle","V","1.kRINa_ho_jAnA"
