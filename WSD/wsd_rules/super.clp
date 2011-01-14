
(defrule super0
(declare (salience 5000))
(id-root ?id super)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  super.clp 	super0   "  ?id "  bahuwa_badZA )" crlf))
)

;"super","Adj","1.bahuwa_badZA"
;The movie was a super hit.
;--"2.aXika"
;Here is a super storage of food grains.
;
(defrule super1
(declare (salience 4900))
(id-root ?id super)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_pulIsa_aXikArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  super.clp 	super1   "  ?id "  eka_pulIsa_aXikArI )" crlf))
)

;"super","N","1.eka_pulIsa_aXikArI"
;We salute our new superintendent of police.
;
