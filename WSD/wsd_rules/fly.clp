;Added by sheetal(09-09-09)
(defrule sh-fly0
(declare (salience 5000))
(id-root ?id fly)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flying)
(id-cat_coarse ?id verbal_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id udAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fly.clp       sh-fly0   "  ?id "  udAna )" crlf))
)
;I have always been afraid of flying .
;mEM #hameSA #udAna se #BayaBIwa ho cukA hUz

