
(defrule epic0
(declare (salience 5000))
(id-root ?id epic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bavya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  epic.clp 	epic0   "  ?id "  Bavya )" crlf))
)

;"epic","Adj","1.Bavya"
;The cyclone that hit Orisa was of epic proportions.
;
(defrule epic1
(declare (salience 4900))
(id-root ?id epic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahAkAvya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  epic.clp 	epic1   "  ?id "  mahAkAvya )" crlf))
)

;"epic","N","1.mahAkAvya"
;Mahabharat  is the largest epic ever written in world history.
;
