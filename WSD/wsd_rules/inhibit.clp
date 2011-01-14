
(defrule inhibit0
(declare (salience 5000))
(id-root ?id inhibit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id inhibiting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id rokanevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  inhibit.clp  	inhibit0   "  ?id "  rokanevAlA )" crlf))
)

;"inhibiting","Adj","1.rokanevAlA"
;The chairman checked the inhibiting factor in the plan.
;
(defrule inhibit1
(declare (salience 4900))
(id-root ?id inhibit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id inhibited )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id rokA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  inhibit.clp  	inhibit1   "  ?id "  rokA_huA )" crlf))
)

;"inhibited","Adj","rokA_huA"
;The student was too inhibited to laugh.
;
;
(defrule inhibit2
(declare (salience 4800))
(id-root ?id inhibit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inhibit.clp 	inhibit2   "  ?id "  niroXa_kara )" crlf))
)

;"inhibit","V","1.niroXa_karanA"
;The visitors of the zoological park were inhibited from feeding the animals.
;
(defrule inhibit3
(declare (salience 4700))
(id-root ?id inhibit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inhibit.clp 	inhibit3   "  ?id "  roka )" crlf))
)

;"inhibit","VT","1.rokanA"
;Shyness inhibited the boy from speaking.
;
