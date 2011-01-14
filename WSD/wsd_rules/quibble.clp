
(defrule quibble0
(declare (salience 5000))
(id-root ?id quibble)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " quibble.clp	quibble0  "  ?id "  " ?id1 "  bahasa_kara  )" crlf))
)

;He quibbled over the price of the clothes.
;usane kapadZoM kI kImawoM para bahasa kI
(defrule quibble1
(declare (salience 4900))
(id-root ?id quibble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quibble.clp 	quibble1   "  ?id "  bahAnA )" crlf))
)

;"quibble","N","1.bahAnA"
;He is doing this only to introduce a quibble.
;--"2.AlocanA"
;Tom was frank && had a few minor quibbles on the issue.
;
(defrule quibble2
(declare (salience 4800))
(id-root ?id quibble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAnA_ba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quibble.clp 	quibble2   "  ?id "  bahAnA_ba )" crlf))
)

;"quibble","VI","1.bahAnA_kara[banA]"
;Let's not quibble over pennies
;
