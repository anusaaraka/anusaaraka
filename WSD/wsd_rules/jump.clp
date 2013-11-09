
(defrule jump0
(declare (salience 5000))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 icCApUrvaka_svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jump.clp	jump0  "  ?id "  " ?id1 "  icCApUrvaka_svIkAra_kara  )" crlf))
)

;I thought he'd jump at the offer,but he rejected it.
;muJe lagA WA ki vaha isa praswAva ko icCApUrvaka svIkAra karegA lekina usane manA kara xiyA
(defrule jump1
(declare (salience 4900))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-at_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wuranwa_mAna_lenA_yA_svIkAra_kara_le));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " jump.clp jump1 " ?id "  wuranwa_mAna_lenA_yA_svIkAra_kara_le )" crlf)) 
)

(defrule jump2
(declare (salience 4800))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wuranwa_mAna_lenA_yA_svIkAra_kara_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jump.clp	jump2  "  ?id "  " ?id1 "  wuranwa_mAna_lenA_yA_svIkAra_kara_le  )" crlf))
)

(defrule jump3
(declare (salience 4700))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIca_meM_kUxa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " jump.clp jump3 " ?id "  bIca_meM_kUxa )" crlf)) 
)

(defrule jump4
(declare (salience 4600))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bIca_meM_kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jump.clp	jump4  "  ?id "  " ?id1 "  bIca_meM_kUxa  )" crlf))
)

(defrule jump5
(declare (salience 4000))  ;Salience changed from 4500 to 4000 by Roja 07-11-13. Ex: Now jump on my back. (Note: This rule need to be improved.) 
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id toka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " jump.clp jump5 " ?id "  toka )" crlf)) 
)

(defrule jump6
(declare (salience 4000)) ;Salience changed from 4400 to 4000 by Roja 07-11-13. Ex: Now jump on my back. (Note: This rule need to be improved.) 
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id toka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " jump.clp jump6 " ?id "  toka )" crlf)) 
)

(defrule jump7
(declare (salience 4000)) ;Salience changed from 4500 to 4000 by Roja 07-11-13. Ex: Now jump on my back. (Note: This rule need to be improved.) 
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id toka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " jump.clp jump7 " ?id "  toka )" crlf)) 
)

(defrule jump8
(declare (salience 4200))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 toka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jump.clp	jump8  "  ?id "  " ?id1 "  toka  )" crlf))
)

(defrule jump9
(declare (salience 4100))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	jump9   "  ?id "  kUxA )" crlf))
)

(defrule jump10
(declare (salience 4000))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	jump10   "  ?id "  kUxa )" crlf))
)

(defrule jump11
(declare (salience 3900))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	jump11   "  ?id "  kUxa )" crlf))
)

(defrule jump12
(declare (salience 3800))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalAzga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	jump12   "  ?id "  CalAzga )" crlf))
)

;"jump","N","1.kUxa/CalAzga"
;Carl won the gold medal in the long jump event in the Olympics.
;
;
;LEVEL 
;
;
;Headword : jump
;
;--kUxanA
;He jumped from the third floor.
;vaha wIsare mAle se kUxA.
;
;I couldn't follow his talk because he kept  jumping from one topic to another.
;mEM usakI bAwa samaJa nahIM pAyI kyoki vaha eka viRaya se xUsare viRaya para AwA rahawA hE. <--kUxawA rahA 
;
;--Upara_baDanA
;The prices of shares jumped this weekend.
;Seyaro ke xAma wejI se baDZe. <--wejZI se Upara gaye<--Upara kI ora kUxe
;
;--cOMkanA
;The loud bang made me jump.
;jora ke XamAke ne muJe cOMkA xiyA.<--cOMkakara kUxanA
;
;yahAz para alaga saMrxaBa hone ke bAvajUxa yahAz para sUwra 'kUxanA`' hogA.
;
;sUwra : kUxanA`
;
;
;
;
