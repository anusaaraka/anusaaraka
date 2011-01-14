
(defrule cant0
(declare (salience 5000))
(id-root ?id cant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMvAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cant.clp 	cant0   "  ?id "  gaMvAra )" crlf))
)

;"cant","Adj","1.gaMvAra/asaBya"
(defrule cant1
(declare (salience 4900))
(id-root ?id cant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banAkara_bolI_bAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cant.clp 	cant1   "  ?id "  banAkara_bolI_bAwa )" crlf))
)

;"cant","N","1.banAkara_bolI_bAwa"
;Her narration of the accident was full of cant.
;--"2.kapata_kI_bAwa"
;He often uses cant expressions.
;
(defrule cant2
(declare (salience 4800))
(id-root ?id cant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ultA_GumA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cant.clp 	cant2   "  ?id "  ultA_GumA )" crlf))
)

;"cant","VI","1.ultA_GumAnA"
;They canted the table to mend its legs.
;--"2.banAkara_bolanA"
;
