
(defrule comparable0
(declare (salience 5000))
(id-root ?id comparable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wulanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  comparable.clp 	comparable0   "  ?id "  wulanIya )" crlf))
)

(defrule comparable1
(declare (salience 4900))
(id-root ?id comparable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wulanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  comparable.clp 	comparable1   "  ?id "  wulanIya )" crlf))
)

;"comparable","Adj","1.wulanIya"
;Milan Kundera's work is comparable with best modern fictions.
;
;
