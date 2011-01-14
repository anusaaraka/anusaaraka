
(defrule consummate0
(declare (salience 5000))
(id-root ?id consummate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwkqRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consummate.clp 	consummate0   "  ?id "  uwkqRta )" crlf))
)

;"consummate","Adj","1.uwkqRta/saMpUrNa"
;Salvador Dali was a consummate artist
;
(defrule consummate1
(declare (salience 4900))
(id-root ?id consummate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consummate.clp 	consummate1   "  ?id "  pUrA_kara )" crlf))
)

;"consummate","VT","1.pUrA_karanA"
;He consummated his life's ambition at the age of 30.
;
