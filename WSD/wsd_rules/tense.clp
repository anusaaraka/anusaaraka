
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

;@@@   ---Added by Prachi Rathore
;For one[ tense] moment Sawana paused, and peered around him as if to ensure that his departure was [undetected].
;एक मिनट के लिए सावन रूका और आसपास की टोह लेता रहा कि उसके जाने को कोई देख तो नहीं रहा है।
(defrule tense2
(declare (salience 5500))
(id-root ?id tense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 moment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tense.clp 	tense2   "  ?id "  - )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tense2
(declare (salience 5500))
(id-root ?id tense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 moment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tense.clp   sub_samA_tense2   "   ?id " - )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tense2
(declare (salience 5500))
(id-root ?id tense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 moment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tense.clp   obj_samA_tense2   "   ?id " - )" crlf))
)
