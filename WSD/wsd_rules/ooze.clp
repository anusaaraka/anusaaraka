
(defrule ooze0
(declare (salience 5000))
(id-root ?id ooze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xalaxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ooze.clp 	ooze0   "  ?id "  xalaxala )" crlf))
)

;"ooze","N","1.xalaxala"
;Ooze can be found at the bottom of the rivers && lakes.
;

;Added by Sonam Gupta MTech IT Banasthali 2013
;He oozes confidence. [Cambridge]
;वह भरोसे से परिपूर्ण है.
(defrule ooze1
(declare (salience 4900))
(id-root ?id ooze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 charm|confidence|appeal)
(or(kriyA-object  ?id ?id1)(kriyA-with_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_paripUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ooze.clp 	ooze1   "  ?id "  se_paripUrNa )" crlf))
)

;Modifies by Sonam Gupta MTech IT Banasthali 2013
;Blood was still oozing out of the wound. [Cambridge]
;खून घाव के बाहर अभी भी रिस रहा था . 
(defrule ooze2
(declare (salience 4800))
(id-root ?id ooze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id risa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ooze.clp 	ooze2   "  ?id "  risa )" crlf))
)

;"ooze","VT","1.cUnA/XIre_XIre_bahanA"
;Some of the toothpaste had oozed out.
;
