
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

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The government has created eight new peers. [Gyannidhi]
;सरकार आठ नये केन्द्र बना चुकी है . 
(defrule peer3
(declare (salience 4700))
(id-root ?id peer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 create|make|start|produce|establish|generate|construct|originate)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kenxra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peer.clp 	peer3   "  ?id "  kenxra )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Children are worried about failing in front of their peers. [OALD]
;बच्चे उनके हमउम्र के सामने असफल होने के बारे में चिंतित रहते हैं . 
(defrule peer4
(declare (salience 4600))
(id-root ?id peer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(and(viSeRya-RaRTI_viSeRaNa  ?id ?)(viSeRya-of_saMbanXI  ? ?id))(and(viSeRya-RaRTI_viSeRaNa  ?id ?)(kriyA-by_saMbanXI  ? ?id)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamaumra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peer.clp 	peer4   "  ?id "  hamaumra )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Peer pressure is strong among young people. [OALD]
;समकक्ष दाब तरुण लोगों के बीच में तेज है . 
(defrule peer5
(declare (salience 4500))
(id-root ?id peer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samakakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peer.clp 	peer5   "  ?id "  samakakRa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
(defrule peer6
(declare (salience 4400))
(id-root ?id peer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jofe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peer.clp 	peer6   "  ?id "  jofe )" crlf))
)



;default_sense && category=verb	sAvaXAnI se xeKanA/wAka	0
;"peer","V","1.sAvaXAnI se xeKanA/wAkanA"
;It was dark in the evening, when I returned from market on my bicycle && I had to peer with half-shut eyes to stay on the road.
;
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 3-1-2014
;A face peered in through the window. [Gyannidhi]
;खिडकी में से एक चेहरे ने झाँका . 
(defrule peer7
(declare (salience 5000))
(id-root ?id peer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 in)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAzkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peer.clp 	peer7   "  ?id "  JAzkA )" crlf))
)
