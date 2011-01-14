
(defrule ridicule0
(declare (salience 5000))
(id-root ?id ridicule)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upahAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ridicule.clp 	ridicule0   "  ?id "  upahAsa )" crlf))
)

;"ridicule","N","1.upahAsa"
;His new hat has become an object of ridicule amongst his friends.
;
(defrule ridicule1
(declare (salience 4900))
(id-root ?id ridicule)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upahAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ridicule.clp 	ridicule1   "  ?id "  upahAsa_kara )" crlf))
)

;"ridicule","VT","1.upahAsa_karanA"
;The managing committee ridiculed the staff for their new ideas.
;
