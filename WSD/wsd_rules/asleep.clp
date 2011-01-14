
(defrule asleep0
(declare (salience 5000))
(id-root ?id asleep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  asleep.clp 	asleep0   "  ?id "  soyA_huA )" crlf))
)

(defrule asleep1
(declare (salience 4900))
(id-root ?id asleep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sowA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  asleep.clp 	asleep1   "  ?id "  sowA_huA )" crlf))
)

;"asleep","Adj","1.sowA_huA/suSupwa"
;I found him fast asleep in his room.
;
;
