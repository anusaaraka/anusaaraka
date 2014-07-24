
(defrule desolate0
(declare (salience 4000))
(id-root ?id desolate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ujAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desolate.clp 	desolate0   "  ?id "  ujAdZa )" crlf))
)

;"desolate","Adj","1.ujAdZa"
;I saw a  desolate && despairing home in the town.
;--"2.akelA"
;She was feeling quite desolate after her friend left for home.
;
(defrule desolate1
(declare (salience 4000))
(id-root ?id desolate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ujAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desolate.clp 	desolate1   "  ?id "  ujAdZa )" crlf))
)

;"desolate","VT","1.ujAdZanA"
;The city was desolated after the war.
;--"2.akelA_mahasUsa_karanA"
;Ram was  depressed && desolated after he lost his daughter.
;


;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;She was feeling quite desolate after her friend left for home.               ;sentence of this file
;वह अपने दोस्त के घर से चले जाने के बाद  काफी अकेला महसूस कर रही थी.
(defrule desolate2
(declare (salience 5000))
(id-root ?id desolate)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akelA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desolate.clp 	desolate2   "  ?id "  akelA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;He was  depressed and desolated after he lost his daughter.        ;sentence of this file
;वह अपनी बेटी को खोने के बाद से उदास और अकेला हो गया था.
(defrule desolate3
(declare (salience 5000))
(id-root ?id desolate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akelA_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desolate.clp 	desolate3   "  ?id "  akelA_ho_jA )" crlf))
)


