
(defrule chop0
(declare (salience 5000))
(id-root ?id chop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chop.clp	chop0  "  ?id "  " ?id1 "  kAta  )" crlf))
)

;They decided to chop the mango tree down because it was cracking the wall of the house.
;unhone Ama ke pedZa ko kAtane kA niScaya kiyA kyoMki vaha Gara kI xIvAra meM xarAra dAla rahA WA
(defrule chop1
(declare (salience 4900))
(id-root ?id chop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AGAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chop.clp 	chop1   "  ?id "  AGAwa )" crlf))
)

;"chop","N","1.AGAwa"
;He cut the sapling in one chop.
;
(defrule chop2
(declare (salience 4800))
(id-root ?id chop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chop.clp 	chop2   "  ?id "  kAta )" crlf))
)

;"chop","V","1.kAtanA{kulhAdZI_se}"
(defrule chop3
(declare (salience 4700))
(id-root ?id chop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chop.clp 	chop3   "  ?id "  kAta )" crlf))
)

;"chop","VT","1.kAtanA{kulhAdZI_se}"
;He chopped the sapling in one stroke.
;
