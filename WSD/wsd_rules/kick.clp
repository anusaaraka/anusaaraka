
(defrule kick0
(declare (salience 5000))
(id-root ?id kick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id kicking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id lAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  kick.clp  	kick0   "  ?id "  lAwa )" crlf))
)

;"kicking","N","1.lAwa"
;Get out from here fast before you get a kicking.
;
;
(defrule kick1
(declare (salience 4900))
(id-root ?id kick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 padZe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " kick.clp	kick1  "  ?id "  " ?id1 "  padZe_raha  )" crlf))
)

;That project has been kicking around for weeks && nobody has worked on it.
;yaha prAjekta kiwane haPwoM se yUz hI padZA hE Ora kisI ne BI isa para kAma nahIM kiyA hE
(defrule kick2
(declare (salience 4800))
(id-root ?id kick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 burA_vyavahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " kick.clp	kick2  "  ?id "  " ?id1 "  burA_vyavahAra_kara  )" crlf))
)

;I'm just sick of being kicked around by him.
;mEM usake bure vyavahAra se waMga A gayA hUz
(defrule kick3
(declare (salience 4700))
(id-root ?id kick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xarxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " kick.clp	kick3  "  ?id "  " ?id1 "  xarxa_ho  )" crlf))
)

;My leg is starting to kick up again after yesterday's run.
;kala kI xOdZa ke bAxa merI tAzga meM xobArA se xarxa honA SurU ho gayA hE 
;kisI_ke_sAWa_bahuwa_aXika_samaya_biwAnA	0
;I don't like the people she knocks around with.
;muJe ve loga bilakula pasaMxa nahIM hEM jinake sAWa vaha Ajakala iwanA aXika samaya biwAwI hE
(defrule kick4
(declare (salience 4600))
(id-root ?id kick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upaxrava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " kick.clp	kick4  "  ?id "  " ?id1 "  upaxrava  )" crlf))
)

(defrule kick5
(declare (salience 4500))
(id-root ?id kick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upaxrava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " kick.clp	kick5  "  ?id "  " ?id1 "  upaxrava  )" crlf))
)

(defrule kick6
(declare (salience 4400))
(id-root ?id kick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAxaprahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kick.clp 	kick6   "  ?id "  pAxaprahAra )" crlf))
)

(defrule kick7
(declare (salience 4300))
(id-root ?id kick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upaxrava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " kick.clp	kick7  "  ?id "  " ?id1 "  upaxrava  )" crlf))
)

(defrule kick8
(declare (salience 4200))
(id-root ?id kick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upaxrava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " kick.clp	kick8  "  ?id "  " ?id1 "  upaxrava  )" crlf))
)

(defrule kick9
(declare (salience 4100))
(id-root ?id kick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAwa_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kick.clp 	kick9   "  ?id "  lAwa_mAra )" crlf))
)

;default_sense && category=verb	lAwa mAra	0
;"kick","VT","1.lAwa mAranA"
;Being angry he kicked the door.
;After the examinations were over, children were kicking the ball in
;the  field.
;--"2.xulawwI_mAranA"
;The horse kicked the bucket of water.
;--"3.CutakArA_pAnA/CodZanA"
;It is difficult to kick out a bad habit.
;He kicked out his habit with great difficulty.
;--"4.XikkAranA"
;Having done poorly at the interview, I felt like kicking myself.
;
;
