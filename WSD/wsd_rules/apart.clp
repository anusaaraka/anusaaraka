
(defrule apart0
(declare (salience 5000))
(id-root ?id apart)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) from)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_alAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  apart.clp 	apart0   "  ?id "  ke_alAvA )" crlf))
)

(defrule apart1
(declare (salience 4900))
(id-root ?id apart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pqWaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  apart.clp 	apart1   "  ?id "  pqWaka )" crlf))
)

;"apart","Adv","1.pqWaka"
;The two buildings stood about 50m apart.
;
(defrule apart2
(declare (salience 4800))
(id-root ?id apart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id particle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pqWaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  apart.clp 	apart2   "  ?id "  pqWaka )" crlf))
)

;"apart","Part","1.pqWaka"
;They decided to live apart.
;
