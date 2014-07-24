;$$$ (viSeRya-in_saMbanXI  ?id ?)Added by Preeti. Ex:She decided to pursue a career in television.
;Added by Meena(24.11.09)
;Her career lasted almost thirty years.
(defrule career0
(declare (salience 5000))
(id-root ?id career)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-RaRTI_viSeRaNa ?id ?id1)(viSeRya-viSeRaNa ?id ?id1)(viSeRya-in_saMbanXI  ?id ?))
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kEriyara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  career.clp    career0   "  ?id "  kEriyara )" crlf))
)


;Salience reduced by Meena(24.11.09)
(defrule career1
;(declare (salience 5000))
(declare (salience 0))
(id-root ?id career)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIvikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  career.clp 	career1   "  ?id "  jIvikA )" crlf))
)

(defrule career2
(declare (salience 4900))
(id-root ?id career)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarapata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  career.clp 	career2   "  ?id "  sarapata_jA )" crlf))
)

;"career","VI","1.sarapata_jAnA"
;The cars careered down the road.
;
;
;@@@ Added by Preeti(23-12-13)
;The train careered off a bridge and plunged into the river. [Cambridge Learner’s Dictionary]
;relagAdI pula para aMXAXuMXa gaI Ora naxI ke aMxara duba gaI.
(defrule career3
(declare (salience 5000))
(id-root ?id career)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off|across)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejI_se_A))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  career.clp 	career3   "  ?id " "  ?id1 "  wejI_se_A )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  career.clp 	career3   "  ?id " para )" crlf)
)

;@@@ Added by Preeti(23-12-13)
;The vehicle careered across the road and hit a cyclist. [ Oxford Advanced Learner's Dictionary]
;vAhana sadaka ke usa pAra anXAXunXa gayA Ora sAikila-savAra se takarAyA.
(defrule career4
(declare (salience 4950))
(id-root ?id career)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-across_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  career.clp 	career4   "  ?id "  wejI_se_A )" crlf))
)
