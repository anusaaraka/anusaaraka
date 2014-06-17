;She cried off the party at last moment. 
;AKirI kRaNoM meM usane pArtI ke lie manA kara xiyA
(defrule cry0
(declare (salience 5000))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 manA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cry.clp	cry0  "  ?id "  " ?id1 "  manA_kara  )" crlf))
)

;$$$ Modified by Preeti (30-12-13)
;The baby was crying for its mother. (Sentence added by Preeti)
;SiSu usakI mAz ke liye ro rahA WA.
; Added by human
(defrule cry1
(declare (salience 4500))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 baby) ;commented by preeti
;(kriyA-subject ?id ?id1) ;commented by preeti
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ro))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cry.clp 	cry1   "  ?id "  ro )" crlf))
)

(defrule cry2
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cry.clp 	cry2   "  ?id "  nAxa )" crlf))
)

;$$$ Modified by Preeti(30-12-13)
;She cried out his name. [ Oxford Advanced Learner's Dictionary]
;usane usakA nAma pukArA.
(defrule cry3
(declare (salience 4600))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1) ;Added relation and modified mng from 'jora_se_cillA' to 'pukAra'
;(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1 pukAra));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* " cry.clp cry3 " ?id "  " ?id1 " pukAra )" crlf)) 
)

;$$$ Modified by Preeti (30-12-13)
;Sentence added by Preeti(30-12-13)
;She cried out for help. [ Oxford Advanced Learner's Dictionary]
;vaha sahAyawA ke liye jora_se cillAI.
(defrule cry4
(declare (salience 4600))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(not(kriyA-object ?id ?));Added by Preeti
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jora_se_cillA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cry.clp	cry4  "  ?id "  " ?id1 "  jora_se_cillA  )" crlf))
)

;@@@ Added by Preeti(30-12-13)
;The company is crying out for fresh new talent. [Oxford Advanced Learner's Dictionary]
;kampanI  naye prawiBAvAna vyakwiyoM kI mAMga_kara rahI hE.
(defrule cry6
(declare (salience 4600))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-for_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAMga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cry.clp	cry6  "  ?id "  " ?id1 " mAMga_kara  )" crlf))
)

;$$$  Modified by Preeti(30-12-13)
;She ran to the window and cried for help. [ Oxford Advanced Learner's Dictionary]
;vaha KidakI kI ora xOdI Ora sahAyawA ke liye cIKI.
(defrule cry5
(declare (salience 4550))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-for_saMbanXI  ?id ?id1) (kriyA-in_saMbanXI  ?id ?id1))
(id-root ?id1 help|delight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cry.clp	cry5   "  ?id "  cIKa )" crlf))
)

;default_sense && category=verb	ro	0
;"cry","VI","1.ronA"
;People cry when they are in pain
;--"2.cillAnA"
;When the intruder entered her place she cried for help
;
;

;@@@ Added by Preeti(30-12-13)
;With a cry of 'Stop thief!' he ran after the boy. [ Oxford Advanced Learner's Dictionary]
;'ruka kI cora!' cIKa ke sAWa vaha ladake ke pICe xOdA.
(defrule cry7
(declare (salience 1000))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cry.clp	cry7   "  ?id "  cIKa )" crlf))
)

;@@@ Added by Preeti(30-12-13)
;I felt a lot better after a good long cry. [ Oxford Advanced Learner's Dictionary]
;mEMne eka behawara lambe ruxana ke bAxa bahuwa aXika behawara mahasUsa kiyA.
(defrule cry8
(declare (salience 1050))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruxana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cry.clp	cry8   "  ?id "  ruxana )" crlf))
)

;@@@ Added by Preeti(30-12-13)
;Her suicide attempt was really a cry for help. [ Oxford Advanced Learner's Dictionary]
;usakA AwmahawyA prayAsa vAswava meM sahAyawA ke liye pukAra WA.
(defrule cry9
(declare (salience 1070))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pukAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cry.clp	cry9   "  ?id "  pukAra)" crlf))
)
