
(defrule sour0
(declare (salience 5000))
(id-root ?id sour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sour.clp 	sour0   "  ?id "  KattA )" crlf))
)

(defrule sour1
(declare (salience 4900))
(id-root ?id sour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sour.clp 	sour1   "  ?id "  KattA )" crlf))
)

;"sour","Adj","1.KattA"
;Milk becomes sour when turned into curd.
;--"baxmajZA"
;He was sour over the incident.
;
;