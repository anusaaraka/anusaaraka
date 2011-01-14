
(defrule wee0
(declare (salience 5000))
(id-root ?id wee)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id weed )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GAsa_PUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wee.clp  	wee0   "  ?id "  GAsa_PUsa )" crlf))
)

;"weed","N","1.GAsa_PUsa"
;Weeds spread in the garden.
;
(defrule wee1
(declare (salience 4900))
(id-root ?id wee)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id weed )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id moWA_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wee.clp  	wee1   "  ?id "  moWA_hatA )" crlf))
)

;"weed","VT","1.moWA_hatAnA"
;Remove the weeds from the lawn.
;
(defrule wee2
(declare (salience 4800))
(id-root ?id wee)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA_sA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wee.clp 	wee2   "  ?id "  CotA_sA )" crlf))
)

;"wee","Adj","1.CotA_sA[>AramBika]"
;--"2.CotA_sA"
;The train arrived at the station in the wee hours.
;
