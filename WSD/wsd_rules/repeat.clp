
(defrule repeat0
(declare (salience 5000))
(id-root ?id repeat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuharAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repeat.clp 	repeat0   "  ?id "  xuharAva )" crlf))
)

;"repeat","N","1.xuharAva"
;There will be a repeat of Prime Minister's speech tomorrow on radio.
;
(defrule repeat1
(declare (salience 4900))
(id-root ?id repeat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repeat.clp 	repeat1   "  ?id "  xoharA )" crlf))
)

;"repeat","V","1.xoharA"
(defrule repeat2
(declare (salience 4800))
(id-root ?id repeat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repeat.clp 	repeat2   "  ?id "  xoharA )" crlf))
)

;"repeat","VT","1.xoharAnA"
;Repeat the tables ten times.
;History repeats itself.  
;--"2.xubArA_AnA"
;The programme is repeated on Wednesday at 9p.m. 
;
