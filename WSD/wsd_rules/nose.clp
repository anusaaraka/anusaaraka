
(defrule nose0
(declare (salience 5000))
(id-root ?id nose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DZUzDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " nose.clp	nose0  "  ?id "  " ?id1 "  DZUzDZa  )" crlf))
)

;He was nosing around something in my almirah.
;vaha merI alamArI meM kuCa DUzDZa rahA WA
(defrule nose1
(declare (salience 4900))
(id-root ?id nose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DZUzDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " nose.clp	nose1  "  ?id "  " ?id1 "  DZUzDZa  )" crlf))
)

;He was nosing out something in my almirah.
;vaha merI alamArI meM kuCa DUzDZa rahA WA
(defrule nose2
(declare (salience 4800))
(id-root ?id nose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nose.clp 	nose2   "  ?id "  nAka )" crlf))
)

;"nose","N","1.nAka"
;His nose is blocked due to cold.
;--"2.agraBAga"
;The nose of the aircraft was damaged && was forced to land.
;
(defrule nose3
(declare (salience 4700))
(id-root ?id nose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUMGa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nose.clp 	nose3   "  ?id "  sUMGa )" crlf))
)

;"nose","VT","1.sUMGanA"
;The dog nosed the food.
;
