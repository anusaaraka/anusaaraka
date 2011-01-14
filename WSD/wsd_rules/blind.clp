
(defrule blind0
(declare (salience 5000))
(id-root ?id blind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blind.clp 	blind0   "  ?id "  aMXA )" crlf))
)

;"blind","Adj","1.aMXA"
;Blind to a lover's faults
;Blind hatred
;--"2.asaPala"
;A blind attempt
;--"3.banxa"
;Blind stitching
;A blind alley
;
(defrule blind1
(declare (salience 4900))
(id-root ?id blind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blind.clp 	blind1   "  ?id "  aMXA )" crlf))
)

;"blind","N","1.aMXA[AdZa]"
;--"2.aMXA"
;He spent hours reading to the blind
;--"3.AdZa"
;he waited impatiently in the blind
;--"4.JilamilI"
;they had just moved in && had not put up blinds yet
;
(defrule blind2
(declare (salience 4800))
(id-root ?id blind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anXA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blind.clp 	blind2   "  ?id "  anXA_kara )" crlf))
)

;"blind","VT","1.anXA_karanA"
;The criminals were punished && blinded
;
