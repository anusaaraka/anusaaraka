
(defrule dam0
(declare (salience 5000))
(id-root ?id dam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAzXa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dam.clp	dam0  "  ?id "  " ?id1 "  bAzXa_banA  )" crlf))
)

;She dammed back her emotions while talking to her old friend.
;apane eka purAne miwra se bAwacIwa karawe samaya usane apanI BAvanAoM para kAbU pA liyA
(defrule dam1
(declare (salience 4900))
(id-root ?id dam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dam.clp 	dam1   "  ?id "  bAzXa )" crlf))
)

;"dam","N","1.bAzXa"
;They built a dam on the river for aiding in cultivation.
;--"2.mAwA{paSuoM_kI}"
;The dam of many successful racehorses is a thorough bred Arabian mare.
;
(defrule dam2
(declare (salience 4000))
(id-root ?id dam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dam.clp 	dam2   "  ?id "  bAzXa_bAzXa )" crlf))
)

;"dam","VT","1.bAzXa_bAzXanA"
;It is no use daming the rivers that run dry in summers.
;


;@@@ Added by Pramila(BU) on 20-01-2014
;A whole valley was drowned when the river was dammed.      ;cald
;एक पूरी घाटी जलमग्न हुई गयी थी जब नदी अवरुद्ध हो गयी थी .
(defrule dam3
(declare (salience 4800))
(id-root ?id dam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-samakAlika_kriyA  ?id1 ?id)
(id-root ?id1 drown)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaruxXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dam.clp 	dam3   "  ?id "  avaruxXa_ho )" crlf))
)
