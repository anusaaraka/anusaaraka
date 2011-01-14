(defrule discuss0
(id-root ?id discuss)
(id-cat_coarse ?id verb)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carcA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discuss.clp    discuss0   "  ?id "  carcA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  discuss.clp    discuss0   "  ?id " kA )" crlf)
)
)
;They were discussing their hopes and dreams
;Added by manju
