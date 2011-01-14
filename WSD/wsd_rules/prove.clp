
(defrule prove0
(declare (salience 5000))
(id-root ?id prove)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id proven )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sixXa_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  prove.clp  	prove0   "  ?id "  sixXa_huA )" crlf))
)

;"proven","Adj","1.sixXa huA"
;Dr.S.Radhakrishnan was a personality of proven capability.
;
(defrule prove1
(declare (salience 4900))
(id-root ?id prove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sixXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prove.clp 	prove1   "  ?id "  sixXa_kara )" crlf))
)

;default_sense && category=verb	sixXa kara	0
;"prove","V","1.sixXa karanA"
;You should prove your point by logical argumentation rather than raising your voice.
;
;