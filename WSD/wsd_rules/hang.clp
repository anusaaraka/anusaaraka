
(defrule hang0
(declare (salience 5000))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hanging )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id latakane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hang.clp  	hang0   "  ?id "  latakane_vAlA )" crlf))
)

;"hanging","N","1.latakane vAlA"
;uxayapura kA"hanging" gArdana sunxara hE.
;
;
(defrule hang1
(declare (salience 4900))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bekAra_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang1  "  ?id "  " ?id1 "  bekAra_GUma  )" crlf))
)

;Don't waste your time hanging about all the time.
;bekAra GUmane meM apanA samaya naRta mawa karo
(defrule hang2
(declare (salience 4800))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 karIba_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang2  "  ?id "  " ?id1 "  karIba_ho  )" crlf))
)

;I don't want you hanging about my daughter.
;mEM nahIM cAhawA ki wuma merI betI ke karIba raho
(defrule hang3
(declare (salience 4700))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 icCA_na_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang3  "  ?id "  " ?id1 "  icCA_na_ho  )" crlf))
)

;Raman was hanging back from signing the agreement.
;ramana kI samaJOwe para haswAkRara karane kI icCA nahIM WI
(defrule hang4
(declare (salience 4600))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang4  "  ?id "  " ?id1 "  ruka  )" crlf))
)

;You'll have to hang on a minute to get the report.
;wumhe riporta ke lie eka minata rukanA hogA
(defrule hang5
(declare (salience 4500))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang5  "  ?id "  " ?id1 "  pakadZa  )" crlf))
)

;Hang on that rope otherwise you'll fall down.
;usa rassI ko pakadZa lo nahIM wo gira jAoge
(defrule hang6
(declare (salience 4400))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang6  "  ?id "  " ?id1 "  raha  )" crlf))
)

;Where are you hanging out nowadays?
;ina xinoM wuma kahAz raha rahe ho?
(defrule hang7
(declare (salience 4300))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAyI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang7  "  ?id "  " ?id1 "  sWAyI_ho  )" crlf))
)

;Her statement just do not hang together-she must be lying.
;
(defrule hang8
(declare (salience 4200))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pona_bIca_meM_hI_kAta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang8  "  ?id "  " ?id1 "  Pona_bIca_meM_hI_kAta_xe  )" crlf))
)

;I tried to talk to her,but she hung up.
;mEne usase bAwa karane kI koSiSa kI lekina usane Pona bIca meM hI kAta xiyA
(defrule hang9
(declare (salience 4100))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AsapAsa_maMdarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang9  "  ?id "  " ?id1 "  AsapAsa_maMdarA  )" crlf))
)

(defrule hang10
(declare (salience 4000))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AsapAsa_maMdarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang10  "  ?id "  " ?id1 "  AsapAsa_maMdarA  )" crlf))
)

(defrule hang11
(declare (salience 3900))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 para_AXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang11  "  ?id "  " ?id1 "  para_AXAriwa  )" crlf))
)

(defrule hang12
(declare (salience 3800))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 para_AXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang12  "  ?id "  " ?id1 "  para_AXAriwa  )" crlf))
)

(defrule hang13
(declare (salience 3700))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pakadZe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang13  "  ?id "  " ?id1 "  pakadZe_raha  )" crlf))
)

(defrule hang14
(declare (salience 3600))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pakadZe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang14  "  ?id "  " ?id1 "  pakadZe_raha  )" crlf))
)

(defrule hang15
(declare (salience 3500))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tAzga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang15  "  ?id "  " ?id1 "  tAzga  )" crlf))
)

(defrule hang16
(declare (salience 3400))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tAzga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang16  "  ?id "  " ?id1 "  tAzga  )" crlf))
)

(defrule hang17
(declare (salience 3300))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tAzga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang17  "  ?id "  " ?id1 "  tAzga  )" crlf))
)

(defrule hang18
(declare (salience 3200))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tAzga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hang.clp	hang18  "  ?id "  " ?id1 "  tAzga  )" crlf))
)

(defrule hang19
(declare (salience 3100))
(id-root ?id hang)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id latakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hang.clp 	hang19   "  ?id "  latakA )" crlf))
)

;default_sense && category=verb	PAzsI lagA	0
;"hang","V","1.PAzsI lagAnA"
;aMgrejoM ne Bagawa siMha ko PAzsI"para"hang"kara xiyA WA.
;
;
