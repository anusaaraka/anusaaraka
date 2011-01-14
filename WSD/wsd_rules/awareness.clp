
;Added by Meena(4.6.10)
;There was an almost complete lack of awareness of the issues involved .
(defrule awareness0
(declare (salience 5000))
(id-root ?id awareness)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAgarukawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awareness.clp   awareness0   "  ?id "  jAgarukawA )" crlf))
)

