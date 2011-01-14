
(defrule approach0
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach0   "  ?id "  pahuzca )" crlf))
)

;"approach","N","1.pahuzca/nikatawA"
;Quick transportation  has  enabled  us  an  easy  approach to the remote parts of the world.
;Ravi has an easy approach to The Minister.

(defrule approach1
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(viSeRya-to_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxXawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp    approach1   "  ?id "   paxXawi )" crlf))
)




;--"2.paxXawi"
;In the latest approach to language teaching direct method is preferred.
;--"3.praswAva"
;They have made an approach to the local authorities in this connection.



;Added by Meena(25.02.10)
;Certain phenomena can be approached better by certain techniques.
(defrule approach2
(declare (salience 4900))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 phenomena)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp  approach2   "  ?id "  samaJa )" crlf))
)




;
(defrule approach3
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach3   "  ?id "  pAsa_A )" crlf))
)

;"approach","VTI","1.pAsa_AnA"
;Can anyone approach an uncaged lion?
;No singer could approach Mohan's && Rafi's high range quality.
;--"2.pahuzcanA"
;We should seriously consider how to approach the problem before we make any definite plans.
;
