
(defrule mangle0
(declare (salience 5000))
(id-root ?id mangle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mangled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kRawa_vikRawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mangle.clp  	mangle0   "  ?id "  kRawa_vikRawa )" crlf))
)

;"mangled","Adj","1.kRawa vikRawa"
;There were a lot of mangled bodies at the accident site.
;
(defrule mangle1
(declare (salience 4900))
(id-root ?id mangle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRawa-vikRawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mangle.clp 	mangle1   "  ?id "  kRawa-vikRawa_kara )" crlf))
)

;"mangle","V","1.kRawa-vikRawa_karanA"
;His hand was caught in the machine accidently && was totally mangled.
;
;