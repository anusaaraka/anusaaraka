
;Rules added by Human being
(defrule live0
(declare (salience 5000))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) cell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  live.clp 	live0   "  ?id "  jIviwa )" crlf))
)

(defrule live1
(declare (salience 4900))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) organism)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  live.clp 	live1   "  ?id "  jIviwa )" crlf))
)

(defrule live2
(declare (salience 4800))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) substance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  live.clp 	live2   "  ?id "  jIviwa )" crlf))
)

(defrule live3
(declare (salience 4700))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 substance)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  live.clp 	live3   "  ?id "  jIviwa )" crlf))
)

(defrule live4
(declare (salience 4600))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 organism)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  live.clp 	live4   "  ?id "  jIviwa )" crlf))
)

;...  a living organisms ...
(defrule live5
(declare (salience 4500))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 organism)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  live.clp 	live5   "  ?id "  jIviwa )" crlf))
)

;...  all living organisms ...
(defrule live6
(declare (salience 4400))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id living )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  live.clp  	live6   "  ?id "  jIviwa )" crlf))
)

(defrule live7
(declare (salience 4300))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kalaMka_xUra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " live.clp	live7  "  ?id "  " ?id1 "  kalaMka_xUra_kara  )" crlf))
)

;She has a very bad reputation over here && its hard to live on.
;usakA nAma yahAz bahuwa KZarAba ho cukA hE Ora isa kalaMka ko xUra karanA bahuwa hI kaTina hE
(defrule live8
(declare (salience 4200))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nirBara_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " live.clp	live8  "  ?id "  " ?id1 "  nirBara_raha  )" crlf))
)

;@@@ Added by Nandini (14-12-13) 
;They were living in the forest.[via mail]
;ve jafgala meM raha rahe We.
(defrule live_forest
(declare (salience 4150))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id living )
(kriyA-in_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  live.clp  	live_forest   "  ?id "  raha )" crlf))
)


(defrule live9
(declare (salience 4100))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id living )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  live.clp  	live9   "  ?id "  jIviwa )" crlf))
)

;She && her children live on her brother these days.
;ina xinoM vo Ora usake bacce usake BAI para nirBara hEM
(defrule live10
(declare (salience 4000))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  live.clp 	live10   "  ?id "  jIviwa )" crlf))
)

;particle_in_- && category=verb	raha	14.68737419363
;PP_null_in && category=verb	raha	14.68737419363
(defrule live11
(declare (salience 3900))
(id-root ?id live)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  live.clp 	live11   "  ?id "  raha )" crlf))
)

;@@@ Added by Nandini (3-12-13)
;The president's speech was broadcast live. 
;aXyakRIya BARaNa kA sIXA prasAraNa prasAriwa kIyA gayA WA.
(defrule live12
(declare (salience 3900))
(id-word ?id live)
?mng <-(meaning_to_be_decided ?id)
;(subject-subject_samAnAXikaraNa  3 4)
(not(id-cat_coarse ?id verb))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sIXA_prasAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  live.clp 	live12   "  ?id "  sIXA_prasAraNa )" crlf))
)

;@@@ Added by Nandini (5-12-13)
;We like live cricket on the TV.
(defrule live13
(declare (salience 5001))
(id-word ?id live)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 ?str)
;(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-word ?id1 cricket|show)
(viSeRya-viSeRaNa  ?id1 ?id)
(not(id-cat_coarse ?id verb))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vAswava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  live.clp 	live13   "  ?id "  vAswava )" crlf))
)


;============need-to-be-handled==============
;Was the concert recorded or it was live?


;default_sense && category=verb	jIviwa raha	0
;"live","V","1.jIviwa rahanA"
;Due to his ailment he will not live for long.
;I wish to live a peaceful life.
;He lived a full life.
;--"2.rahanA"
;Where do you live?
;--"3.yAxa rahanA"
;Pleasant memories live longer.
;
;
