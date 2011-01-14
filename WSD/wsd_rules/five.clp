
(defrule five0
(declare (salience 5000))
(id-root ?id five)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  five.clp 	five0   "  ?id "  pAzca )" crlf))
)

;"five","Det","1.pAzca"
;There were five persons in the boat.
;He was sentenced five years in prison.
;
(defrule five1
(declare (salience 4900))
(id-root ?id five)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  five.clp 	five1   "  ?id "  pAzca )" crlf))
)

;"five","N","1.pAzca"
;There were five persons in the boat.
;He was sentenced five years in prison.
;
