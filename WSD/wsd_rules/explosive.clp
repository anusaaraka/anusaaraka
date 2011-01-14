
(defrule explosive0
(declare (salience 5000))
(id-root ?id explosive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Baka_se_udZa_jAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  explosive.clp 	explosive0   "  ?id "  Baka_se_udZa_jAne_vAlA )" crlf))
)

;"explosive","Adj","1.Baka_se_udZa_jAne_vAlA"
;The militants planted an explosive device near the railway station.
;
(defrule explosive1
(declare (salience 4900))
(id-root ?id explosive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id udZAU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  explosive.clp 	explosive1   "  ?id "  udZAU )" crlf))
)

;"explosive","N","1.udZAU"
;The terrorists planted explosives at the railway station.
;
