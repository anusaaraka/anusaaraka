
(defrule contingent0
(declare (salience 5000))
(id-root ?id contingent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Akasmika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contingent.clp 	contingent0   "  ?id "  Akasmika )" crlf))
)

;"contingent","Adj","1.Akasmika"
;They had to plan for contingent expenses
;The results of confession were not contingent, they were certain
;
(defrule contingent1
(declare (salience 4900))
(id-root ?id contingent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEnya_xala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contingent.clp 	contingent1   "  ?id "  sEnya_xala )" crlf))
)

;"contingent","N","1.sEnya_xala"
;Each nation sent a contingent of athletes to the Olympics
;He peace-keeping force includes one British contingent
;
