
(defrule permeate0
(declare (salience 5000))
(id-root ?id permeate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAragamya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  permeate.clp 	permeate0   "  ?id "  pAragamya )" crlf))
)

;"permeate","Adj","1.pAragamya"
;Fertilizer in liquid form is permeable in the soil.
;
(defrule permeate1
(declare (salience 4900))
(id-root ?id permeate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_PZEla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  permeate.clp 	permeate1   "  ?id "  meM_PZEla_jA )" crlf))
)

;"permeate","V","1.meM_PZEla_jAnA"
;The fragrance of flowers permeated through the drawing room.
;
