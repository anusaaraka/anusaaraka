
(defrule municipal0
(declare (salience 5000))
(id-root ?id municipal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nagara-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  municipal.clp 	municipal0   "  ?id "  nagara- )" crlf))
)

(defrule municipal1
(declare (salience 4900))
(id-root ?id municipal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nagarIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  municipal.clp 	municipal1   "  ?id "  nagarIya )" crlf))
)

;"municipal","Adj","1.nagarIya"
;The municipal corporation of Hyderabad is incharge of the cleanliness of the city.
;
;
