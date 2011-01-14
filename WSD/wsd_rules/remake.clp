
(defrule remake0
(declare (salience 5000))
(id-root ?id remake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu_jise_Pira_se_banAyA_gayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remake.clp 	remake0   "  ?id "  vaswu_jise_Pira_se_banAyA_gayA )" crlf))
)

;"remake","N","1.vaswu_jise_Pira_se_banAyA_gayA"
;The movie is a remake of the 1960 original. 
;
(defrule remake1
(declare (salience 4900))
(id-root ?id remake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remake.clp 	remake1   "  ?id "  Pira_banA )" crlf))
)

;"remake","VT","1.Pira_banAnA"
;They had to remake the uneven wall.
;
