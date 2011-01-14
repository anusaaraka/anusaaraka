
(defrule gentle0
(declare (salience 5000))
(id-root ?id gentle)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gentle.clp 	gentle0   "  ?id "  maMxa )" crlf))
)

(defrule gentle1
(declare (salience 4900))
(id-root ?id gentle)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gentle.clp 	gentle1   "  ?id "  suSIla )" crlf))
)

;"gentle","Adj","1.suSIla"
;Ram is a very gentle person.
;--"2.sOmya"
;A gentle breeze is blowing across the beach.
;
;
