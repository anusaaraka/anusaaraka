
(defrule order0
(declare (salience 5000))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 see)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anukrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order0   "  ?id "  anukrama )" crlf))
)

(defrule order1
(declare (salience 4900))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order1   "  ?id "  AjFA )" crlf))
)

(defrule order2
(declare (salience 4800))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFA_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order2   "  ?id "  AjFA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  order.clp     order2   "  ?id " ko )" crlf)
)
)

;"order","VTI","1.AjFA_xenA"
;The teacher ordered silence.
;--"2.krama_meM_raKanA"
;I need time to order my thoughts.
;
;
