
(defrule learn0
(declare (salience 5000))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id learning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jFAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  learn.clp  	learn0   "  ?id "  jFAna )" crlf))
)

;"learning","N","1.jFAna/vixyA"
;He is a man of learning.
;
(defrule learn1
(declare (salience 4900))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id learned )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vixvAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  learn.clp  	learn1   "  ?id "  vixvAna )" crlf))
)

;"learned","Adj","1.vixvAna"
;A learned professor. 
;--"2.paDe liKe vyakwiyoM kA samUha"
;A learned society.
;
;
(defrule learn2
(declare (salience 4800))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 hindi)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIKanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  learn.clp 	learn2   "  ?id "  sIKanA )" crlf))
)

(defrule learn3
(declare (salience 4700))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 kannada)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIKanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  learn.clp 	learn3   "  ?id "  sIKanA )" crlf))
)

(defrule learn4
(declare (salience 4600))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 marathi)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIKanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  learn.clp 	learn4   "  ?id "  sIKanA )" crlf))
)

(defrule learn5
(declare (salience 4500))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 english)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIKanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  learn.clp 	learn5   "  ?id "  sIKanA )" crlf))
)

(defrule learn6
(declare (salience 4400))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 french)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIKanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  learn.clp 	learn6   "  ?id "  sIKanA )" crlf))
)

(defrule learn7
(declare (salience 4300))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 german)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIKanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  learn.clp 	learn7   "  ?id "  sIKanA )" crlf))
)

(defrule learn8
(declare (salience 4200))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  learn.clp 	learn8   "  ?id "  sIKa )" crlf))
)

;"learn","V","1.vixyA_arjana_karanA"
;He is learning new techniques of scientific experimentation in this field.
;--"2.sIKanA"
;He learnt swimming at a very early age. 
;--"3.ratanA"
;(by heart) She has learnt the poem by heart. 
;--"4.sUcanA pAnA"
;I learnt about his mother's demise yesterday only.
;
;
