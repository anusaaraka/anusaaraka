
(defrule shine0
(declare (salience 5000))
(id-root ?id shine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shine.clp 	shine0   "  ?id "  camaka )" crlf))
)

;"shine","N","1.camaka"
;Give your shoes a good shine.
;
(defrule shine1
(declare (salience 4900))
(id-root ?id shine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shine.clp 	shine1   "  ?id "  camaka )" crlf))
)

(defrule shine2
(declare (salience 4800))
(id-root ?id shine)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shine.clp 	shine2   "  ?id "  camakA )" crlf))
)

;"shine","V","1.camakanA"
;I like to watch the stars shining in the night sky.
;
