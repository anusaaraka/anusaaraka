;Modified by Meena(26.6.10) added (kriyA-in_saMbanXI ?id1 ?id)
;Added by Meena(14.6.10)
;The groups of frogs were traveling through the woods , and two of them fell into a deep pit . 
(defrule wood0
(declare (salience 5000))
(id-root ?id wood)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id woods)
(or(kriyA-through_saMbanXI ?id1 ?id)(kriyA-in_saMbanXI ?id1 ?id)(viSeRya-in_saMbanXI  ?vis ?id));Added newly this (viSeRya-in_saMbanXI  ?vis ?id) 27-07-10
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jaMgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  wood.clp      wood0   "  ?id "  jaMgala )" crlf))
)




(defrule wood1
(declare (salience 5000))
(id-root ?id wood)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wooded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jaMgalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wood.clp  	wood1   "  ?id "  jaMgalI )" crlf))
)

;"wooded","Adj","1.jaMgalI"
;We had picnic in a wooded valley.
;
(defrule wood2
(declare (salience 4900))
(id-root ?id wood)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakadI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wood.clp 	wood2   "  ?id "  lakadI )" crlf))
)

;"wood","N","1.lakadI"
;Windows are made of wood.
;
;
