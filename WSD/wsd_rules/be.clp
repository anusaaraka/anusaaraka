;Added by Meena(19.7.11)
;When the dollar is in a free-fall, even central banks can not stop it. 
(defrule be00
(declare (salience 5000))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id is)
(id-root =(- ?id 3) when)
(id-root =(- ?id 1) ?inanimate)
(id-root =(- ?id 1)  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp        be00   "  ?id "  ho )" crlf))
)



;previous_minus_two=the	howeM_hEM	0
;previous_minus_three=the	howeM_hEM	0
;The students are mischievous.
;The bright students are studious.
;The above rules need to be modified as, 'the starting point of previous chunk is 'the' then ...
(defrule be0
(declare (salience 5000))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id be )
(id-word =(- ?id 1) to )
(id-word =(- ?id 2) considered)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be0   "  ?id "  - )" crlf))
)

;It is considered to be good.

;Added by Meena(9.9.09)
;Are these your trousers? 
(defrule are0
(declare (salience 5000))
;(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id are )
(id-root ?id1 trousers|scissors)
(kriyA-subject ?id ?id2)
(subject-subject_samAnAXikaraNa  ?id2 ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  be.clp        are0   "  ?id "  hE )" crlf))
)

(defrule be1
(declare (salience 4900))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id are )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hEM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  be.clp  	be1   "  ?id "  hEM )" crlf))
)


(defrule be2
(declare (salience 4800))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id is )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE)); Modified by sukhada (word_mng as root_mng) Ex: There is a dog and a cat here .
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be2   "  ?id "  hE )" crlf))
)

; strictly its not word meaning bcoz it may be WA/WI
(defrule be3
(declare (salience 4700))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id was )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be3   "  ?id "  WA )" crlf))
)

(defrule be4
(declare (salience 4600))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be4   "  ?id "  WA )" crlf))
)

;Modified by sheetal(17-03-10)
;Grace may not be possible to fix the problem .
(defrule be5
(declare (salience 4500))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(or (id-word ?id am )(id-word =(+ ?id 1) possible));'or-condition' is added by sheetal
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp        be5   "  ?id "  hE )" crlf))
)

(defrule be6
(declare (salience 4400))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-word ?id Are )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA_hE))
(assert (id-H_vib_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be6   "  ?id "  kyA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  be.clp         be6   "  ?id " hE )" crlf))
)

(defrule be7
(declare (salience 4300))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-word ?id Is )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA_hE))
(assert (id-H_vib_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be7   "  ?id "  kyA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  be.clp         be7   "  ?id " hE )" crlf))
)

(defrule be8
(declare (salience 4200))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-word ?id Was )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA_WA))
(assert (id-H_vib_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be8   "  ?id "  kyA_WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  be.clp         be8   "  ?id "  WA )" crlf))
)

(defrule be9
(declare (salience 4100))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-word ?id Were )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA_WA))
(assert (id-H_vib_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be9   "  ?id "  kyA_WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  be.clp         be9   "  ?id " WA )" crlf))
)

(defrule be10
(declare (salience 4000))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-word ?id Am )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA_hE))
(assert (id-H_vib_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be10   "  ?id "  kyA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  be.clp         be10   "  ?id " hE )" crlf))
)

(defrule be11
(declare (salience 3900))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id being )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jIva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  be.clp  	be11   "  ?id "  jIva )" crlf))
)

(defrule be12
(declare (salience 3800))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id are )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (id-H_vib_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be12   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  be.clp         be12   "  ?id " hE )"crlf))
)

(defrule be13
(declare (salience 3700))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id is )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (id-H_vib_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be13   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  be.clp         be13   "  ?id " hE )" crlf))
)


;unnecessary rule
;(defrule be14
;(declare (salience 3600))
;(id-root ?id be)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id was )
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id WA))
;(assert (id-H_vib_mng ?id WA))
;)

(defrule be14
(declare (salience 3600))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (id-H_vib_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be14   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  be.clp         be14   "  ?id "  WA )" crlf))
)

(defrule be15
(declare (salience 3500))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id am )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (id-H_vib_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be15   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  be.clp         be15   "  ?id "  hE )" crlf))
)

(defrule be16
(declare (salience 3400))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were )
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) I )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be16   "  ?id "  howA )" crlf))
)

(defrule be17
(declare (salience 3300))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were )
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) you )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be17   "  ?id "  howA )" crlf))
)

(defrule be18
(declare (salience 3200))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were )
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) she )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be18   "  ?id "  howA )" crlf))
)

(defrule be19
(declare (salience 3100))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were )
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) he )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be19   "  ?id "  howA )" crlf))
)

(defrule be20
(declare (salience 3000))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (id-H_vib_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  be.clp  	be20   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  be.clp         be20   "  ?id "  WA )" crlf))
)

;"were","V","1.We"
;They were at home.
;
;
;"was","V","1.WA"
;He was late for his appointment.
;
;"were","V","1.We"
;They were at home.
(defrule be21
(declare (salience 2900))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ke_pICe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " be.clp	be21  "  ?id "  " ?id1 "  ke_pICe_raha  )" crlf))
)


(defrule be24
(declare (salience 2600))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 intimate)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GaniRTa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " be.clp	be24  "  ?id "  " ?id1 "  GaniRTa_ho  )" crlf))
)

(defrule be25
(declare (salience 2500))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be25   "  ?id "  ho )" crlf))
)

;"be","V","1.honA"
;Don't worry be happy.
;
;Added by human
(defrule be26
(declare (salience 2400))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) with )
(id-cat_coarse =(+ ?id 1) a)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be26   "  ?id "  ho )" crlf))
)

;given_word=being && category=noun	$jIva)

;"being","N","1.jIva"
;We saw a movie of strange beings from other planet.
;--"2.haswI"
;I detest violence with my whole being.
;--"3.aswiwva"
;What is the purpose of our being.
;
;

;
(defrule be32
(declare (salience 1800))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) a)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be32   "  ?id "  howA_hE )" crlf))
)

(defrule be33
(declare (salience 1700))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 3) a)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  be.clp 	be33   "  ?id "  howA_hE )" crlf))
)

;Everybody knows what a photographer is like?
;Everybody knows what a stupid photographer is like?
;"is","V","1.hE"
;The boy is reading.

;"be","V","1.honA"
;Don't worry be happy.
;
;
