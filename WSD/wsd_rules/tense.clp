
(defrule tense0
(declare (salience 5000))
(id-root ?id tense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tense.clp 	tense0   "  ?id "  kasA_huA )" crlf))
)

;"tense","Adj","1.kasA_huA"
;The ship is anchored with a tense rope.
;--"2.wanAvapUrNa"
;He was in a tense mood.
;
(defrule tense1
(declare (salience 4900))
(id-root ?id tense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tense.clp 	tense1   "  ?id "  kAla )" crlf))
)

;"tense","N","1.kAla{kriyA_kA}"
;The verb in the following sentence is in the past tense `He laughed loudly'.
;
