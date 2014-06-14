;$$$  Modified the meaning by Preeti(7-12-13)
;The project wasted a considerable amount of time and money. 
;pariyojanA ne samaya Ora pEse kI eka mahawvapUrNa mAwrA vyarWa_meM_barabAxa kI.
(defrule considerable0
(declare (salience 5000))
(id-root ?id considerable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  considerable.clp 	considerable0   "  ?id "  kAPI )" crlf))
)
;@@@ Added by Preeti(7-12-13)
;The origins of human language remain a matter of considerable debate. [by mail]
;mAnavIya BARA kA mUla mahawvapUrNa bahasa kA viRaya rahawA hEM.
(defrule considerable1
(declare (salience 5050))
(id-root ?id considerable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  considerable.clp 	considerable1   "  ?id "  mahawvapUrNa )" crlf))
)

;(defrule considerable1
;(declare (salience 4900))
;(id-root ?id considerable)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id bahuwa_aXika))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ;considerable.clp 	considerable1   "  ?id "  bahuwa_aXika )" crlf))
;)

;"considerable","Adj","1.bahuwa_aXika"
;A considerable quantity of manpower is required to do this work.
;
;
