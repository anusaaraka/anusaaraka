
(defrule curb0
(declare (salience 5000))
(id-root ?id curb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curb.clp 	curb0   "  ?id "  roka )" crlf))
)

;"curb","N","1.roka"
;The traffic was curbed for the Republic Day
;
(defrule curb1
(declare (salience 4900))
(id-root ?id curb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyanwriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curb.clp 	curb1   "  ?id "  niyanwriwa_kara )" crlf))
)

;"curb","VT","1.niyanwriwa_karanA"
;We have to curb the emotions
;
