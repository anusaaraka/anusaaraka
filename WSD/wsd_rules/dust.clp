
(defrule dust0
(declare (salience 5000))
(id-root ?id dust)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XUla_JAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dust.clp	dust0  "  ?id "  " ?id1 "  XUla_JAdZa  )" crlf))
)

;She picked her saari && dusted it down.
;usane apanI sAdZI uTAI Ora usa para se XUla JAdZane lagI
(defrule dust1
(declare (salience 4000))
(id-root ?id dust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dust.clp 	dust1   "  ?id "  XUla )" crlf))
)

;"dust","N","1.XUla"
;The furniture was covered with dust
;Astronomers say that the empty space between planets actually contains measurable amounts of dust
;
(defrule dust2
(declare (salience 4000))
(id-root ?id dust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUla_JAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dust.clp 	dust2   "  ?id "  XUla_JAdZa )" crlf))
)

;"dust","VT","1.XUla_JAdZanA"
;The artist dusted the charcoal drawing down to a faint image
;--"2.CidZakanA"
;Dust the bread with flour

;@@@ Added by Pramila(BU) on 28-12-2013
;Dust the cake with sugar.          ;oald
;केक पर चीनी छिड़क दो.
(defrule dust3
(declare (salience 5000))
(id-root ?id dust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CidZaka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dust.clp 	dust3   "  ?id "  CidZaka_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 28-12-2013
;coal/gold/iron dust        ;oald
;कोयला/स्वर्ण /लौह चूरा
(defrule dust4
(declare (salience 4900))
(id-root ?id dust)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1 iron|gold|coal)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dust.clp 	dust4   "  ?id "  cUrA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_dust4
(declare (salience 4900))
(id-root ?id dust)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 iron|gold|coal)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " dust.clp   sub_samA_dust4   "   ?id " cUrA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_dust4
(declare (salience 4900))
(id-root ?id dust)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 iron|gold|coal)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " dust.clp   obj_samA_dust4   "   ?id " cUrA )" crlf))
)
