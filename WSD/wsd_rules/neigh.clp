
(defrule neigh0
(declare (salience 5000))
(id-root ?id neigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hinahinAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neigh.clp 	neigh0   "  ?id "  hinahinAhata )" crlf))
)

;"neigh","N","1.hinahinAhata"
;The neigh of that horse could be heard loud && clear.
;
(defrule neigh1
(declare (salience 4900))
(id-root ?id neigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hinahinA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neigh.clp 	neigh1   "  ?id "  hinahinA )" crlf))
)

;"neigh","VI","1.hinahinAnA"
;The hosrses were neighing in the stable.
;
