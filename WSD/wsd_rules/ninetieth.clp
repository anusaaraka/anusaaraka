
(defrule ninetieth0
(declare (salience 5000))
(id-root ?id ninetieth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nabbevAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ninetieth.clp 	ninetieth0   "  ?id "  nabbevAz )" crlf))
)

;"ninetieth","Adj","1.nabbevAz"
;He celebrated his ninetieth birthday.
;
(defrule ninetieth1
(declare (salience 4900))
(id-root ?id ninetieth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nabbevAz_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ninetieth.clp 	ninetieth1   "  ?id "  nabbevAz_BAga )" crlf))
)

;"ninetieth","N","1.nabbevAz_BAga"
;He turned the ninetieth page of the book.
;
