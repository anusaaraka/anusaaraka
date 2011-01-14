
(defrule passable0
(declare (salience 5000))
(id-root ?id passable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkArya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  passable.clp 	passable0   "  ?id "  svIkArya )" crlf))
)

(defrule passable1
(declare (salience 4900))
(id-root ?id passable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAraNIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  passable.clp 	passable1   "  ?id "  pAraNIya )" crlf))
)

;"passable","Adj","1.pAraNIya"
;The river is not passable until late spring.
;--"2.svIkArya"
;He is an average student but still passable.
;
;
