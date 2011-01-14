
(defrule drown0
(declare (salience 5000))
(id-root ?id drown)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dubA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drown.clp 	drown0   "  ?id "  dubA )" crlf))
)

(defrule drown1
(declare (salience 4900))
(id-root ?id drown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drown.clp 	drown1   "  ?id "  dUba )" crlf))
)

;"drown","V","1.dUbanA[dubAnA]"
;I was drowned in work
;She drowned her trouble in alcohol
;The child drowned in the lake
;He drowned the kittens
;
