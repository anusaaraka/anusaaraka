
(defrule spray0
(declare (salience 5000))
(id-root ?id spray)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PuhAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spray.clp 	spray0   "  ?id "  PuhAra )" crlf))
)

(defrule spray1
(declare (salience 4900))
(id-root ?id spray)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CidZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spray.clp 	spray1   "  ?id "  CidZaka )" crlf))
)

;"spray","V","1.CidZakanA"
;Farmers spray pesticides on the crops.
;
;