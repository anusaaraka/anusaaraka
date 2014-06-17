;@@@ Added by Preeti(22-1-14)
;She was a champion of the poor all her life. [ Oxford Advanced Learner's Dictionary]
;vaha  jIvanaBara  xInoM kI uwsAhI samarWaka WI.
(defrule champion1
(declare (salience 1050))
(id-root ?id champion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
;(not(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?));Commentd by Preeti and added below relation by Preeti(18-2-14)
(viSeRya-of_saMbanXI  ?id ?) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsAhI_samarWaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  champion.clp 	champion1   "  ?id "  uwsAhI_samarWaka)" crlf))
)

;@@@ Added by Preeti(22-1-14)
;The world basketball champions are celebrating. [ Oxford Advanced Learner's Dictionary]
;viSva bAsketa_bAla cEmpiyana uwsava_manA rahe hEM.
(defrule champion0
(declare (salience 1000))
(id-root ?id champion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vijewA));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  champion.clp 	champion0   "  ?id "  vijewA)" crlf))
)

;@@@ Added by Preeti(22-1-14)
;He has always championed the cause of gay rights. [ Oxford Advanced Learner's Dictionary]
;usane hameSA samalEMgiko ke aXikAroM ke hiwa kA uwsAha_se_samarWana kiyA hE.
(defrule champion2
(declare (salience 1000))
(id-root ?id champion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsAha_se_samarWana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  champion.clp 	champion2   "  ?id "  uwsAha_se_samarWana_kara)" crlf))
)
