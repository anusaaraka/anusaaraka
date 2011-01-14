
(defrule polite0
(declare (salience 5000))
(id-root ?id polite)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  polite.clp 	polite0   "  ?id "  namra )" crlf))
)

(defrule polite1
(declare (salience 4900))
(id-root ?id polite)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  polite.clp 	polite1   "  ?id "  namra )" crlf))
)

;"polite","Adj","1.namra"
;Children always should be polite towards their parents && teachers.
;--"2.saBya"
;A rude word should not be used in polite society.
;
;
