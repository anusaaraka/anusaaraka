
(defrule pin0
(declare (salience 5000))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pin.clp	pin0  "  ?id "  " ?id1 "  xe  )" crlf))
)

;I'can't pin u down to a definite date of the party.
;mEM wumheM pArtI ke lie eka niSciwa wiWi nahIM xe sakawA
(defrule pin1
(declare (salience 4900))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlapIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin1   "  ?id "  AlapIna )" crlf))
)

;"pin","N","1.AlapIna"
;Get me a packet of pins.
;--"2.suI_kI_noka"
;Please don't irritate me with this pin.
;--"3.KUztI"
;Rakesh hanged your coat on pin.
;--"4.pEra"
;Anu's pins are effected by polio.
;
(defrule pin2
(declare (salience 4800))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pina_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin2   "  ?id "  pina_lagA )" crlf))
)

;"pin","V","1.pina_lagAnA"
;She pinned the bills together.
;
