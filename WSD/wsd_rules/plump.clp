
(defrule plump0
(declare (salience 5000))
(id-root ?id plump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " plump.clp	plump0  "  ?id "  " ?id1 "  gira_padZa  )" crlf))
)

;She was very tired as she plumped down on her bed.
;vaha bahuwa WakI huI WI jisake kAraNa vaha biswara para gira padZI
(defrule plump1
(declare (salience 4900))
(id-root ?id plump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cuna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " plump.clp	plump1  "  ?id "  " ?id1 "  cuna  )" crlf))
)

;She finally plumped for a black car in the showroom.
;AKira usane So-rUma meM kAlI kAra ko cuna liyA
(defrule plump2
(declare (salience 4800))
(id-root ?id plump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golamatola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plump.clp 	plump2   "  ?id "  golamatola )" crlf))
)

;"plump","Adj","1.golamatola"
;Ram is very plump. He usually eats a lot of food everyday.
;
(defrule plump3
(declare (salience 4700))
(id-root ?id plump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plump.clp 	plump3   "  ?id "  PulA )" crlf))
)
;"plump","V","1.PulAnA"
;I plumped the big balloon for the Birthday celebration.
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-2-2014
;He fell down plump. [Rajpal]
;वह धड़ाम से गिरा .
(defrule plump4
(declare (salience 4700))
(id-root ?id plump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 fall|run)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XadZAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plump.clp 	plump4   "  ?id "  XadZAma )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 10-2-2014
;I plumped the load on the ground. [Rajpal]
;मैंने ज़मीन पर बोझ को गिरा दिया .
(defrule plump5
(declare (salience 4700))
(id-root ?id plump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-on_saMbanXI  ?id ?)(kriyA-onto_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plump.clp 	plump5   "  ?id "  girA_xe )" crlf))
)
