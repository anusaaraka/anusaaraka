;@@@ Added by Prachi Rathore[27-1-14]
;She paid him a handsome compliment.
;उसने उसको एक उचित प्रशंसा दी. 
(defrule handsome2
(declare (salience 5100))
(id-root ?id handsome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 compliment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handsome.clp 	handsome2   "  ?id "  uciwa )" crlf))
)

;@@@ Added by Prachi Rathore[27-1-14]
;The other well-known lawyer from whom Asutosh obtained a handsome endowment for his project was his former guru, Dr. Rashbehari Ghosh.[gyan-nidhi]
;दूसरे जाने-माने वकील, जिनसे आशुतोष ने अपनी परियोजना के लिए अच्छी खासी निधि प्राप्त की, उनके भूतपूर्व गुरू डा॰ रासबिहारी घोष थे।
(defrule handsome3
(declare (salience 5100))
(id-root ?id handsome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 profit|endowment|majority)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA_KAsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handsome.clp 	handsome3   "  ?id "  acCa_KAsA )" crlf))
)

; xxxxxxxxxxxx Default rules xxxxxxxxxxxxxxxxx
(defrule handsome0
(declare (salience 5000))
(id-root ?id handsome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handsome.clp 	handsome0   "  ?id "  sunxara )" crlf))
)

;"handsome","Adj","1.sunxara{puruRa}"
;Bharat is a handsome boy .
;Barawa eka sunxara ladZakA hE.
;
(defrule handsome1
(declare (salience 4900))
(id-root ?id handsome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handsome.clp 	handsome1   "  ?id "  sunxara )" crlf))
)

;"handsome","N","1.sunxara{puruRa}"

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_handsome2
(declare (salience 5100))
(id-root ?id handsome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 compliment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " handsome.clp   sub_samA_handsome2   "   ?id " uciwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_handsome2
(declare (salience 5100))
(id-root ?id handsome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 compliment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " handsome.clp   obj_samA_handsome2   "   ?id " uciwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_handsome3
(declare (salience 5100))
(id-root ?id handsome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 profit|endowment|majority)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA_KAsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " handsome.clp   sub_samA_handsome3   "   ?id " acCa_KAsA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_handsome3
(declare (salience 5100))
(id-root ?id handsome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 profit|endowment|majority)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA_KAsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " handsome.clp   obj_samA_handsome3   "   ?id " acCa_KAsA )" crlf))
)
