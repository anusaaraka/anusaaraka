
(defrule captive0
(declare (salience 5000))
(id-root ?id captive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kExa_kiyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  captive.clp 	captive0   "  ?id "  kExa_kiyA_huA )" crlf))
)

;"captive","Adj","1.kExa_kiyA_huA"
;I feel very sad when I see captive birds && animals in the zoo.
;
(defrule captive1
(declare (salience 4900))
(id-root ?id captive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kExI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  captive.clp 	captive1   "  ?id "  kExI )" crlf))
)

;"captive","N","1.kExI"
;Some captives tried to escape from the prison.
;
