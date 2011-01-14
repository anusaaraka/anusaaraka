
(defrule degrade0
(declare (salience 5000))
(id-root ?id degrade)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id degrading )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nyUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  degrade.clp  	degrade0   "  ?id "  nyUna )" crlf))
)

;"degrading","Adj","1.nyUna"
;Prisoners have to face a degrading treatment.
;
(defrule degrade1
(declare (salience 4900))
(id-root ?id degrade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apakaRINa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degrade.clp 	degrade1   "  ?id "  apakaRINa_kara )" crlf))
)

;default_sense && category=verb	paxAvanawa kara	0
;"degrade","V","1.paxAvanawa karanA"
;He was degraded from his post.
;--"2.naRta honA"
;The plastic can not be degraded.
;
;
