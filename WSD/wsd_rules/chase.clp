
;(defrule chase0
;(declare (salience 5000))
;(id-root ?id chase)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 away)
;(kriyA-away_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id BagA_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " chase.clp chase0 " ?id "  BagA_xe )" crlf)) 
;)

;$$$  Modified by Preeti(7-5-14)
;This particular fish chases off any other fish that enters its territory. [Oxford Advanced Learner's Dictionary]
;yaha viSiRta maCalI kisI anya maCalI ko BagA xewI hE jo usake kRewra meM praveSa karawI hE.
;I chased the cat away. [Cambridge Learner’s Dictionary]
;mEMne billI ko BagA xiyA.
;Chase the cat out - we do not want her in the kitchen. [Oxford Advanced Learner's Dictionary]
;billI BagA xo-hama rasoIGara meM usako nahIM cAhawe hEM.
(defrule chase1
(declare (salience 4900))
(id-root ?id chase)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away|off|out);words added
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chase.clp	chase1  "  ?id "  " ?id1 "  BagA_xe  )" crlf))
)


;$$$  Modified by Preeti(7-5-14
;The thieves were caught by police after a short chase. [Oxford Advanced Learner's Dictionary]
;cora WodZA pICA karane ke bAxa pulIsa xvArA pakade gaye We.
(defrule chase2
;(declare (salience 4800));salience changed
(id-root ?id chase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICA_kara));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chase.clp 	chase2   "  ?id "  pICA_kara)" crlf))
)

(defrule chase3
;(declare (salience 4700))
(id-root ?id chase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chase.clp 	chase3   "  ?id "  pICA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  chase.clp     chase3   "  ?id " kA )" crlf)
)
)
;@@@ Added by Preeti(7-5-14)
;We need to chase up all members who have not yet paid. [Oxford Advanced Learner's Dictionary]
;hameM una saba saxasyoM se saMparka_karane kI jarUrawa hE jinhone aBI waka pEse_nahIM_xiye hEM.
(defrule chase4
(declare (salience 4900))
(id-root ?id chase)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saMparka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chase.clp	chase4  "  ?id "  " ?id1 "  saMparka_kara  )" crlf))
)

;@@@ Added by Preeti(7-5-14)
;She enjoyed the thrill of the chase. [Oxford Advanced Learner's Dictionary]
;usane SikAra karane ke romAMca kA Ananxa uTAyA.
(defrule chase5
(declare (salience 1000))
(id-root ?id chase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAra_karane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chase.clp 	chase5   "  ?id "  SikAra_karane )" crlf))
)

;@@@ Added by Preeti(7-5-14)
;Three teams are involved in the chase for the championship. [Oxford Advanced Learner's Dictionary]
;wInoM tImeM sarvopariwva pAne_kI koSiSa meM sammiliwa hEM.
(defrule chase6
(declare (salience 1000))
(id-root ?id chase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?)
(id-root ?id1 for)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id id1 pAne_kI_koSiSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* "  chase.clp 	chase6   "  ?id " "  ?id1 "   pAne_kI_koSiSa)" crlf))
)

;"chase","VT","1.pICA_karanA"
;The police chased the robber.
;
;
