
(defrule gay0
(declare (salience 5000))
(id-root ?id gay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasannaciwwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gay.clp 	gay0   "  ?id "  prasannaciwwa )" crlf))
)

(defrule gay1
(declare (salience 4900))
(id-root ?id gay)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ananxamaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gay.clp 	gay1   "  ?id "  Ananxamaya )" crlf))
)

;"gay","Adj","1.Ananxamaya"
;Everybody seems to be gay && happy today.
;--"2.samalEMgika"
;He is a gay person.
;
;