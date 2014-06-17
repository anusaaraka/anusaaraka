
(defrule husky0
(declare (salience 5000))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarrAyI_huI_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husky.clp 	husky0   "  ?id "  BarrAyI_huI_AvAja )" crlf))
)

;"husky","Adj","1.BarrAyI_huI_AvAja"
;TaMda se usakI AvAjZa meM 'husky' hE.
;
(defrule husky1
(declare (salience 4900))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eskimo_kuwwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husky.clp 	husky1   "  ?id "  eskimo_kuwwA )" crlf))
)

;"husky","N","1.eskimo_kuwwA"
;himagAdI ko uwwaraXruvIya kRewra meM' husky' KIMcawe hEM.
;

;@@@ Added by Prachi Rathore[14-3-14]
;A husky laborer.[m-w]
;एक बलवान मजदूर
(defrule husky2
(declare (salience 5500))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balavAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husky.clp 	husky2   "  ?id " balavAna )" crlf))
)



;@@@ Added by Prachi Rathore[14-3-14]
;A husky voice[m-w]
;एक भर्रायी हुयी आवाज
(defrule husky3
(declare (salience 5500))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 voice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarrAyI_huyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husky.clp 	husky3   "  ?id " BarrAyI_huyI )" crlf))
)


;@@@ Added by Prachi Rathore[14-3-14]
 
(defrule husky4
(declare (salience 400))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarrAyI_huyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husky.clp 	husky4   "  ?id " BarrAyI_huyI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_husky2
(declare (salience 5500))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balavAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " husky.clp   sub_samA_husky2   "   ?id " balavAna )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_husky2
(declare (salience 5500))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balavAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " husky.clp   obj_samA_husky2   "   ?id " balavAna )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_husky3
(declare (salience 5500))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 voice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarrAyI_huyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " husky.clp   sub_samA_husky3   "   ?id " BarrAyI_huyI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_husky3
(declare (salience 5500))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 voice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarrAyI_huyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " husky.clp   obj_samA_husky3   "   ?id " BarrAyI_huyI )" crlf))
)
