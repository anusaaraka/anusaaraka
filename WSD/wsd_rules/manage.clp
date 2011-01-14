


;Added by Meena(1.9.09)
;I finally managed to get a word in.
;I managed to go.
(defrule manage0
(declare (salience 5000))
(id-root ?id manage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kqxanwa_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  manage.clp     manage0   "  ?id "  pA )" crlf)
)
)


(defrule manage1
(declare (salience 5000))
(id-root ?id manage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBAla))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  manage.clp     manage1   "  ?id "  saMBAla )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  manage.clp       manage1   "  ?id " ko )" crlf)
)
)

