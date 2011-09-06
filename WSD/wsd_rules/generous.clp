;Added By VIVEK
;He is so generous to the opposition.
(defrule generous0
(declare (salience 5100))
(id-root ?id cow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  generous.clp 	generous0   "  ?id "  uxAra )" crlf))
)

;------------------------------------------------------------------------------------------------------------------------
;Added By VIVEK
;Give a generous amonut of milk.
(defrule generous1
(declare (salience 5000))
(id-root ?id generous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  generous.clp 	generous1   "  ?id "  pracura )" crlf))
)
;------------------------------------------------------------------------------------------------------------------------
