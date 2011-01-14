
(defrule varnish0
(declare (salience 5000))
(id-root ?id varnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vArniSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  varnish.clp 	varnish0   "  ?id "  vArniSa )" crlf))
)

;"varnish","N","1.vArniSa/rogana"
;He bought varnish to paint the table
;
(defrule varnish1
(declare (salience 4900))
(id-root ?id varnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rogana_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  varnish.clp 	varnish1   "  ?id "  rogana_lagA )" crlf))
)

;"varnish","VT","1.rogana_lagAnA"
;Carpenter varnished the door
;
