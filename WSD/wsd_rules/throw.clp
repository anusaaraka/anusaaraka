
(defrule throw0
(declare (salience 5000))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMkanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw0   "  ?id "  PeMkanA )" crlf))
)

;"throw","N","1.PeMkanA"
;Peter Sampras won the Wimbledon && his throw was great.
;--"2.pAsa"
;It is just a stone's throw from here.
;
(defrule throw1
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw1   "  ?id "  PeMka )" crlf))
)

;Added by sheetal(20-01-10).
;John last week threw a great party .
(defrule throw2
(declare (salience 5000))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 party)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp     throw2   "  ?id "  xe )" crlf))
)


;"throw","VT","1.PeMka"
;He threw the ball in the nets.
;--"2.nIce_girA_xenA"
;The unruly elephant threw the mahout down.
;--"3.meM_honA"
;Her announcement threw everybody in a state of confusion.
;--"4.xiKAnA"
;Don't throw tantrums.
;
