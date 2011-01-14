
(defrule shock0
(declare (salience 5000))
(id-root ?id shock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shocking )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xahalAnevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  shock.clp  	shock0   "  ?id "  xahalAnevAlA )" crlf))
)

;"shocking","Adj","1.xahalAnevAlA"
;She went to see the shocking sight after the disastrous flood.
;--"2.bahuwa KarAba"
;The food here is shocking.
;
;Added by Human
(defrule shock1
(declare (salience 4900))
(id-root ?id shock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOMkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shock.clp 	shock1   "  ?id "  cOMkA )" crlf))
)

(defrule shock2
(declare (salience 4800))
(id-root ?id shock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saxamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shock.clp 	shock2   "  ?id "  saxamA )" crlf))
)

(defrule shock3
(declare (salience 4700))
(id-root ?id shock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shock.clp 	shock3   "  ?id "  cOMka )" crlf))
)

;"shock","V","1.cOMkanA"
;He was shocked to see the results.
;He was shocked to hear his child swearing.
;
;
