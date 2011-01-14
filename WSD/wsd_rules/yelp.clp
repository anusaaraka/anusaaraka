
(defrule yelp0
(declare (salience 5000))
(id-root ?id yelp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yelp.clp 	yelp0   "  ?id "  cIKZa )" crlf))
)

;"yelp","N","1.cIKZa"
;I heard a yelp from the hostel last night.
;
(defrule yelp1
(declare (salience 4900))
(id-root ?id yelp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yelp.clp 	yelp1   "  ?id "  cIKa )" crlf))
)

;"yelp","V","1.cIKanA"
;He yelped when he was given injections.
;
