
(defrule sponge0
(declare (salience 5000))
(id-root ?id sponge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaMja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sponge.clp 	sponge0   "  ?id "  spaMja )" crlf))
)

;"sponge","N","1.spaMja/samuxrasoKa"
;Sponge is a sea animal.
;
(defrule sponge1
(declare (salience 4900))
(id-root ?id sponge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaMja_se_Xo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sponge.clp 	sponge1   "  ?id "  spaMja_se_Xo )" crlf))
)

;"sponge","V","1.spaMja_se_XonA"
;Sponge the hall.
;
