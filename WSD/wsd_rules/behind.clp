
(defrule behind0
(declare (salience 5000))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is|are)
(id-word =(+ ?id 1) schedule|time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind0   "  ?id "  se_pICe )" crlf))
)

(defrule behind1
(declare (salience 4900))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is|are)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind1   "  ?id "  ke_pICe )" crlf))
)

(defrule behind2
(declare (salience 4800))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind2   "  ?id "  pICe_se )" crlf))
)

;"behind","Adv","1.pICe_se"
;She came from behind.
;
(defrule behind3
(declare (salience 4700))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUlhA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind3   "  ?id "  kUlhA )" crlf))
)

;"behind","N","1.kUlhA"
;He kicked the boy's behind.
;
(defrule behind4
(declare (salience 4600))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind4   "  ?id "  ke_pICe )" crlf))
)

;"behind","Prep","1.ke_pICe"
;The sun disappeard behind the clouds.
;He was behind by two points at the end of the match.
;
