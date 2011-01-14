
(defrule defacto0
(declare (salience 5000))
(id-root ?id defacto)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswavika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defacto.clp 	defacto0   "  ?id "  vAswavika )" crlf))
)

;"defacto","Adj","1.vAswavika"
;He is the defacto ruler of the empire.
;
(defrule defacto1
(declare (salience 4900))
(id-root ?id defacto)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defacto.clp 	defacto1   "  ?id "  vaswuwa )" crlf))
)

;"defacto","Adv","1.vaswuwa"
;:The opposition challanged the ruling party's survival, but they continued ruling defacto.
;
