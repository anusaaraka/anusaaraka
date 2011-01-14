
(defrule rental0
(declare (salience 5000))
(id-root ?id rental)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rental.clp 	rental0   "  ?id "  kirAye_kA )" crlf))
)

;"rental","Adj","1.kirAye_kA"
;Rental value of that building is very high.
;
(defrule rental1
(declare (salience 4900))
(id-root ?id rental)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rental.clp 	rental1   "  ?id "  kirAyA )" crlf))
)

;"rental","N","1.kirAyA"
;Pay a telephone rental of Rs.200.
;
