
(defrule interest0
(declare (salience 5000))
(id-root ?id interest)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id interesting )
(or (id-cat_coarse ?id adjective) (subject-subject_samAnAXikaraNa ?i ?id) (viSeRya-viSeRaNa ?x ?id)) ;It was interesting to hear about school life in Britain. It is biochemically an interesting experiment.
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id rucikara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  interest.clp  	interest0   "  ?id "  rucikara )" crlf))
)

;given_word=interesting && word_category=adjective	$rocaka)

;"interesting","Adj","1.rocaka"
;Arthur Hailey's novels are interesting.
(defrule interest1
(declare (salience 4900))
(id-root ?id interest)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id interested )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ruci_raKanevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  interest.clp  	interest1   "  ?id "  ruci_raKanevAlA )" crlf))
)

;"interested","Adj","1.ruci_raKanevAlA"
;The interested people can join the group..
;
;
(defrule interest2
(declare (salience 4800))
(id-root ?id interest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUci))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interest.clp 	interest2   "  ?id "  rUci )" crlf))
)

(defrule interest3
(declare (salience 4700))
(id-root ?id interest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruci_uwpanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interest.clp 	interest3   "  ?id "  ruci_uwpanna_kara )" crlf))
)

;"interest","VTI","1.ruci_uwpanna_karanA"
;After retirement he began to interest himself in voluntary work.
;
;
