
(defrule daunt0
(declare (salience 5000))
(id-root ?id daunt)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niruwsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daunt.clp 	daunt0   "  ?id "  niruwsAhiwa_kara )" crlf))
)

(defrule daunt1
(declare (salience 4900))
(id-root ?id daunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niruwsAhiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daunt.clp 	daunt1   "  ?id "  niruwsAhiwa_ho )" crlf))
)

;"daunt","VT","1.niruwsAhiwa_karanA[honA]"
;Loosing the game did not daunt her.
;--"2.daranA[darAnA]"
;The idea of going to a strange place in the distant land daunted her.
;
