
(defrule floor0
(declare (salience 5000))
(id-root ?id floor)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flooring )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ParSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  floor.clp  	floor0   "  ?id "  ParSa )" crlf))
)

;"flooring","N","1.ParSa"
;He used granite for flooring his house.
;
(defrule floor1
(declare (salience 4900))
(id-root ?id floor)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 first)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMJila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  floor.clp 	floor1   "  ?id "  maMJila )" crlf))
)

(defrule floor2
(declare (salience 4800))
(id-root ?id floor)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 second)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMJila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  floor.clp 	floor2   "  ?id "  maMJila )" crlf))
)

(defrule floor3
(declare (salience 4700))
(id-root ?id floor)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 third)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMJila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  floor.clp 	floor3   "  ?id "  maMJila )" crlf))
)

(defrule floor4
(declare (salience 4600))
(id-root ?id floor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  floor.clp 	floor4   "  ?id "  harA_xe )" crlf))
)

;"floor","V","1.harA_xenA"
;He was floored by the argument. 
;--"2.girA xenA"
;The wrestler floored the opponent by a single punch.
;--"3.sawaha lagAnA"
;He preferred to use marble for the floor of living room.
;
;
