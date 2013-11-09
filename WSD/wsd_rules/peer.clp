
(defrule peer0
(declare (salience 5000))
(id-root ?id peer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara_JAzka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " peer.clp peer0 " ?id "  bAhara_JAzka )" crlf)) 
)

(defrule peer1
(declare (salience 4900))
(id-root ?id peer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_JAzka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peer.clp	peer1  "  ?id "  " ?id1 "  bAhara_JAzka  )" crlf))
)

(defrule peer2
(declare (salience 4800))
(id-root ?id peer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peer.clp 	peer2   "  ?id "  wAka )" crlf))
)

;default_sense && category=verb	sAvaXAnI se xeKanA/wAka	0
;"peer","V","1.sAvaXAnI se xeKanA/wAkanA"
;It was dark in the evening, when I returned from market on my bicycle && I had to peer with half-shut eyes to stay on the road.
;
;