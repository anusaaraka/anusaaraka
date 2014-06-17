;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;We need to prod him into making a decision. [cambridge]
;हमें निर्णय करने के लिए उसको उकसाने की जरूरत . 
(defrule prod0
(declare (salience 5000))
(id-root ?id prod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(and(kriyA-object  ?id ?)(kriyA-subject  ?id ?)(kriyA-kriyArWa_kriyA  ? ?id)(kriyA-into_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ukasAne_kI_jarUrawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  prod.clp  	prod0   "  ?id "  ukasAne_kI_jarUrawa )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;She was prodded into joining the team. [MW]
;उसे टीम में सम्मिलित होने के लिये उकसाया . 
(defrule prod1
(declare (salience 4900))
(id-root ?id prod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(and(kriyA-object  ?id ?)(kriyA-subject  ?id ?)(kriyA-kriyA_viSeRaNa  ?id ?)(kriyA-into_saMbanXI  ?id ?))(and(kriyA-subject  ?id ?)(kriyA-karma  ?id ?)(kriyA-into_saMbanXI  ?id ?)))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ukasAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  prod.clp  	prod1   "  ?id "  ukasAyA )" crlf))
)


(defrule prod2
(declare (salience 4800))
(id-root ?id prod)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id prodding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ukasAne_kI_prakriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  prod.clp  	prod2   "  ?id "  ukasAne_kI_prakriyA )" crlf))
)

;"prodding","N","1.ukasAne kI prakriyA"
;He needed some prodding because he is a stubborn man.
;
(defrule prod3
(declare (salience 4700))
(id-root ?id prod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuBana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prod.clp 	prod3   "  ?id "  cuBana )" crlf))
)

;"prod","N","1.cuBana"
;He gave me a terrible prod by this nail.
;--"2.koMca"
;Give him a humble prod to attend the seminar.
;

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;He prodded at his breakfast with a fork. [OALD]
;उसने खाने के काँटे के साथ उसके जलपान में गङाया . 
(defrule prod4
(declare (salience 4600))
(id-root ?id prod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 fork|knife)
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gafAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prod.clp 	prod4   "  ?id "  gafAyA )" crlf))
)

(defrule prod5
(declare (salience 4500))
(id-root ?id prod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prod.clp 	prod5   "  ?id "  cuBA )" crlf))
)

;"prod","V","1.cuBAnA"
;She prodded me with the tip of a blund knife.
;--"2.kIMcanA"
;He prodded me to join his gang.
;
