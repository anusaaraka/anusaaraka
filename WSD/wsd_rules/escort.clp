
(defrule escort0
(declare (salience 5000))
(id-root ?id escort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escort.clp 	escort0   "  ?id "  rakRaka )" crlf))
)

;"escort","N","1.rakRaka/paharexAra/mArga_kA_raKavAlA"
(defrule escort1
(declare (salience 4900))
(id-root ?id escort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahare_ke_sAWa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escort.clp 	escort1   "  ?id "  pahare_ke_sAWa_jA )" crlf))
)

;"escort","VT","1.pahare_ke_sAWa_jAnA/paharA_karanA/rakRA_karanA"
