
(defrule cradle0
(declare (salience 5000))
(id-root ?id cradle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hiMdolA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cradle.clp 	cradle0   "  ?id "  hiMdolA )" crlf))
)

;"cradle","N","1.hiMdolA"
;He was taught from the cradle never to cry
;
(defrule cradle1
(declare (salience 4900))
(id-root ?id cradle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hiMdole_meM_litA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cradle.clp 	cradle1   "  ?id "  hiMdole_meM_litA )" crlf))
)

;"cradle","VT","1.hiMdole_meM_litAnA"
;He cradled the infant in his arms
;
