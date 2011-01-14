
(defrule sick0
(declare (salience 5000))
(id-root ?id sick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sick.clp 	sick0   "  ?id "  asvasWa )" crlf))
)

;"sick","Adj","1.asvasWa"
;He has been sick for many days.
;The sick lady was not able to stand in a moving train.
;--"2.ulatI_AnA"
;
(defrule sick1
(declare (salience 4900))
(id-root ?id sick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ultI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sick.clp 	sick1   "  ?id "  ultI )" crlf))
)

;"sick","N","1.ultI"
;The basin was littered with sick.
;--"2.asvasWa"
;Admit the seriously sick first.
;While travelling in the crowded bus I felt sick.
;--"3.UbA_huA"
;She has had the same job for years && is heartily sick of it.
;--"4.vyAkula"
;We were pretty sick about losing the match.
;
(defrule sick2
(declare (salience 4800))
(id-root ?id sick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vamana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sick.clp 	sick2   "  ?id "  vamana_kara )" crlf))
)

;"sick","V","1.vamana_karanA"
;The baby sicked up a little milk.
;
