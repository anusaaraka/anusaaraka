
(defrule alight0
(declare (salience 5000))
(id-root ?id alight)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " alight.clp	alight0  "  ?id "  " ?id1 "  acAnaka_mila_jA  )" crlf))
)

;She alighted on in the market.
;vaha bAjZAra meM acAnaka mila gaI
(defrule alight1
(declare (salience 4900))
(id-root ?id alight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alight.clp 	alight1   "  ?id "  uwara )" crlf))
)

;default_sense && category=verb	nIce_A	0
;"alight","V","1.nIce_AnA"
;The helicopter alighted on the open ground.
;--"2.uwaranA"
;Some boys have the habit of alighting from a moving bus.
;
;