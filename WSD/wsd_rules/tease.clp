
(defrule tease0
(declare (salience 5000))
(id-root ?id tease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawAne_vAlA_manuRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tease.clp 	tease0   "  ?id "  sawAne_vAlA_manuRya )" crlf))
)

;"tease","N","1.sawAne_vAlA_manuRya"
;He is a tease && his friends are scared to go near him.
;
(defrule tease1
(declare (salience 4900))
(id-root ?id tease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ceda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tease.clp 	tease1   "  ?id "  Ceda )" crlf))
)

;"tease","VT","1.CedanA"
;Young boys && girls enjoy teasing each-other..
;

;Added by sheetal
(defrule tease2
(declare (salience 4900))
(id-root ?id tease)
(id-word ?id teasing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verbal_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CedanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tease.clp     tease2   "  ?id "  CedanA )" crlf))
)
;Teasing can be very cruel .

;@@@ Added by Prachi Rathore[25-1-14]
;The teacher helped them tease out the meaning of the poem.[oald]
(defrule tease3
(declare (salience 5000))
(id-root ?id tease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tease.clp     tease3  "  ?id "  " ?id1 "  pawA_lagA )" crlf))
)

;@@@ Added by Prachi Rathore[25-1-14]
;While it was still wet, I gently teased out the tangled knots in Rosie's hair.[oald]
(defrule tease4
(declare (salience 5000))
(id-root ?id tease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 knot)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tease.clp     tease4  "  ?id "  " ?id1 " Kola )" crlf))
)
