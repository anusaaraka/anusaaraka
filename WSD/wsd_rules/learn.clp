;----default-rule----
;They learn Russian at school.
;ve vixyAlaya para rUsI sIKawe hEM.
(defrule learn0
(declare (salience 50))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  learn.clp 	learn0   "  ?id "  sIKa )" crlf))
)

;Modified by Nandini 28-10-13
;We only learned who the new teacher was a few days ago.[advanced oxford leraner dictionary]
;hamane sirPa kuCa xina pahale jAnA nayA SikRaka  kOna WA.
(defrule learn1
(declare (salience 60))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(kriyA-about_saMbanXI  ?id ?id1)
;(id-word ?id1 learned)
(id-cat_coarse ?id1 adverb)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  learn.clp  	learn1   "  ?id "  jAna )" crlf))
)


;I later learnt that the message had never arrived.
;mEM bAxa meM jAnI ki sanxeSa kaBI nahIM pahuzca gayA.
(defrule learn2
(declare (salience 60))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-aXikaraNavAcI  ?id ?id1) (kriyA-kriyA_viSeRaNa  ?id ?id1))
(id-cat_coarse ?id1 adverb)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  learn.clp  	learn2   "  ?id "  jAna )" crlf))
)

;We were all shocked to learn of his death.[advanced oxford leraner dictionary]
;usakI mqwyu kI Kabar jAnakar hama sabako  saxamA pahuzcA WA.
(defrule learn3
(declare (salience 60))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(or(saMjFA-to_kqxanwa ?id1 ?id)(kriyA-kriyArWa_kriyA  ? ?id))
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  learn.clp  	learn3   "  ?id "  jAna )" crlf))
)

;How did they react when they learned the news?[advanced oxford leraner dictionary]
;unakI  kyA prawikriyA WI jaba unhoMne samAcAra sunA?
(defrule learn4
(declare (salience 60))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 news)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  learn.clp  	learn4   "  ?id "  jAna )" crlf))
)

;It has been learned that 500 jobs are to be lost at the factory.[advanced oxford leraner dict]
;yaha mAluma padA gayA hE ki 500 kAma PEktarI meM Koe jAne hEM.
(defrule learn5
(declare (salience 70))
(id-root ?id learn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 it)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAluma_pada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  learn.clp  	learn5   "  ?id "  mAluma_pada )" crlf))
)


;They learned very well.
;unhoMne bahuwa acCA jAnA.
;(defrule learn2
;(declare (salience 70))
;(id-root ?id learn)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-kriyA_viSeRaNa  ?id ?id1)
;(id-cat_coarse ?id verb)
;(id-cat_coarse ?id1 adverb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id siKa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  learn.clp  	;learn2   "  ?id "  siKa )" crlf))
;)

;==========Additional-examples==========
;I learnt of her arrival from a close friend.
;I only learnt about the accident later.
