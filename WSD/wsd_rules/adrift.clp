
(defrule adrift0
(declare (salience 5000))
(id-root ?id adrift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adrift.clp 	adrift0   "  ?id "  bahawA_huA )" crlf))
)

(defrule adrift1
(declare (salience 4900))
(id-root ?id adrift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wErawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adrift.clp 	adrift1   "  ?id "  wErawA_huA )" crlf))
)

;"adrift","Adj","1.wErawA_huA"
;A wooden plank came adrift near our boat.
;--"2.dAvAzdola"
;His mind was adrift due to confusion.
;
;
