
(defrule first0
(declare (salience 5000))
(id-root ?id first)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praWama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  first.clp 	first0   "  ?id "  praWama )" crlf))
)

;"first","Adj","1.praWama"
;He always comes first in his class.
;--"2.pahalA"
;There is a huge crowd on the first train of the day.
;
;default_sense && category=adverb	sabase_pahale	0
;PraWama will work in this case also.



;Modified  by Meena:18.8.09 :  used the relation(kriya-kriyA_viSeRaNa) instead of (id-cat..)and meaning as "pahale" 
;It plunged first its nose into the river.
;I'll finish my work first.
(defrule first1
(declare (salience 4900))
(id-root ?id first)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  first.clp   first1   "  ?id "  pahale )" crlf))
)


;Added by Meena(12.5.10)
;It was in Paris that Debussy first heard Balinese music .
(defrule first2
(declare (salience 4900))
(id-root ?id first)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  =(+ ?id 1) ?id)
;(test(> ?id1 ?id))   ;this condition needs to be checked (Meena 17.5.10)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahalI_bAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  first.clp   first2   "  ?id "  pahalI_bAra )" crlf))
)





;Added by Meena(18.8.09)
;Who came first in the race ? 
(defrule first3
(declare (salience 4900))
(id-root ?id first)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(kriyA-in_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praWama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  first.clp   first3   "  ?id "  praWama )" crlf))
)

;"first","Adv","1.sabase_pahale"
;He was the first to enter the cave.
;--"2.ke_pahale"
;Before coming to the party I would like to first finish this work.
;He said that he will kill himself first before agreeing to the demands made by his wife.
;
(defrule first4
(declare (salience 4800))
(id-root ?id first)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praWama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  first.clp 	first4   "  ?id "  praWama )" crlf))
)

;"first","N","1.praWama"
;It was a first for the player to score a double century in one innings.
;
