
(defrule lively0
(declare (salience 5000))
(id-root ?id lively)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PurwIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lively.clp 	lively0   "  ?id "  PurwIlA )" crlf))
)

;"lively","Adj","1.PurwIlA"
;This girl is very lively.
;--"2.sajIva"
;The atmosphere in the party was very lively.
;A lively discussion.
;--"3.sakriya"
;He was a lively imagination.
;
(defrule lively1
(declare (salience 4900))
(id-root ?id lively)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIvanwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lively.clp 	lively1   "  ?id "  jIvanwa )" crlf))
)

;@@@--- Added by Nandini(7-5-14)
;Her eyes were bright and lively.[OALD]
;usakI AzKeM camakIlI Ora sajIva WIM.
(defrule lively2
(declare (salience 5050))
(id-root ?id lively)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
(conjunction-components  ?id2 ?id3 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajIva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lively.clp 	lively2   "  ?id "  sajIva )" crlf))
)

;@@@--- Added by Nandini(7-5-14)
;He showed a lively interest in politics.
(defrule lively3
(declare (salience 5050))
(id-root ?id lively)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsAhapurNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lively.clp 	lively3   "  ?id "  uwsAhapurNa )" crlf))
)


;"lively","Adv","1.jIvanwa"
