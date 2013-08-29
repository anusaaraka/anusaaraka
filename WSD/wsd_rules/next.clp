;Modified by Meena(1.10.10)
;If you move up a bit , Tess can sit next to me .
;Added by Meena(24.11.09)
;He was sitting next to Mohan's brother.
(defrule next_to0
(declare (salience 5001))
(id-root ?id next)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-aXikaraNavAcI_avyaya  =(- ?id 1) ?id1)(kriyA-next_to_saMbanXI   =(- ?id 1) ?id1)) ;kriyA-lupwa_prep_saMbanXI  is now changed to kriyA-aXikaraNavAcI_avyaya (Modified by Roja 28-12-10 Suggested by Sukhada)
(id-word =(+ ?id 1) to )
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng  =(+ ?id 1)  ?id  ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  next.clp       next_to0   "(+ ?id 1) " " ?id " ke_pAsa )" crlf)
))

(defrule next0
(declare (salience 5000))
(id-root ?id next)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to )
(id-cat_coarse =(+ ?id 2) ~verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  next.clp 	next0   "  ?id "  - )" crlf))
)

(defrule next1
(declare (salience 4900))
(id-root ?id next)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) very)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  next.clp 	next1   "  ?id "  agalA )" crlf))
)

;On very next day
(defrule next2
(declare (salience 4800))
(id-root ?id next)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id) ; Modified ?id + 1 as ?id1 by Manju(24-08-13) eg: For next 2 years there will be good rains.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  next.clp 	next2   "  ?id "  agalA )" crlf))
)

(defrule next3
(declare (salience 4700))
(id-root ?id next)
?mng <-(meaning_to_be_decided ?id)
(id-cat =(+ ?id 1) proper_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  next.clp 	next3   "  ?id "  agalA )" crlf))
)

(defrule next4
(declare (salience 4500))
(id-root ?id next)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) ~noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  next.clp 	next4   "  ?id "  Age )" crlf))
)

;"next","Adj","1.agalA"
;What is the next word?
;The next worst disaster was the cyclone.
;
(defrule next6
(declare (salience 4400))
(id-root ?id next)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usake_bAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  next.clp 	next6   "  ?id "  usake_bAxa )" crlf))
)

;"next","Adv","1.usake_bAxa"
;We visited the shrine next.
;
