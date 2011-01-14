
(defrule folksy0
(declare (salience 5000))
(id-root ?id folksy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  folksy.clp 	folksy0   "  ?id "  sIXA )" crlf))
)

(defrule folksy1
(declare (salience 4900))
(id-root ?id folksy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miwrawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  folksy.clp 	folksy1   "  ?id "  miwrawApUrNa )" crlf))
)

;"folksy","Adj","1.miwrawApUrNa"
;His behaviour is folksy with all his staff.
;--"2.paramparAgawa"
;In villages womenfolk spend their free time persuing folksy weaving of cloth.
;
;
