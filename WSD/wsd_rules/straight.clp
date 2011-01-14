
(defrule straight0
(declare (salience 5000))
(id-root ?id straight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  straight.clp 	straight0   "  ?id "  sIXA )" crlf))
)

(defrule straight1
(declare (salience 4900))
(id-root ?id straight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  straight.clp 	straight1   "  ?id "  sIXA )" crlf))
)

;"straight","Adj","1.sIXA"
;She went straight from her school to her house.
;
;