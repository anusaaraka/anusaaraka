
(defrule smoke0
(declare (salience 5000))
(id-root ?id smoke)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id smoking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XUmrapAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  smoke.clp  	smoke0   "  ?id "  XUmrapAna )" crlf))
)

;"smoking","N","1.XUmrapAna"
;Smoking causes cancer.
;
;
(defrule smoke1
(declare (salience 4900))
(id-root ?id smoke)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id smoking )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUmrapAna_kara))
;(assert (id-H_vib_mng ?id ing)) ;Commented by Sukhada(20-05-13)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  smoke.clp  	smoke1   "  ?id "  XUmrapAna_kara )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  smoke.clp      smoke1   "  ?id " ing )" crlf))
))

(defrule smoke2
(declare (salience 4800))
(id-root ?id smoke)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " smoke.clp	smoke2  "  ?id "  " ?id1 "  BagA  )" crlf))
)

(defrule smoke3
(declare (salience 4700))
(id-root ?id smoke)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " smoke.clp	smoke3  "  ?id "  " ?id1 "  BagA  )" crlf))
)

(defrule smoke4
(declare (salience 4600))
(id-root ?id smoke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUmrapAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smoke.clp 	smoke4   "  ?id "  XUmrapAna_kara )" crlf))
)

;default_sense && category=verb	XUmrapAna_kara	0
;"smoke","V","1.XUmrapAna_karanA"
;He smoked regularly after a meal.
;--"2.XuzA_xenA"
;They smoked salami for dinner.
;
;LEVEL 
;Headword : smoke
;
;Examples --
;
;"smoke","N","1.XuAz"
;Smoke is injurious to health.
;XuAz svAsWya ke lie hAnikAraka hE.
;--"2.XUmrapAna"
;They stopped work to have a smoke.
;unhoMne XUmrapAna karane ke liye kAma roka xiyA.
;
;"smoke","V","1.XUmrapAna_karanA"
;He smoked regularly after a meal.
;vaha hameSA KAne ke bAxa XUmrapAna karawA WA.
;--"2.Xuez_meM_pakAnA"<--XuAz_karanA
;They ate smoked fish.
;unhoMne Xuze meM pakAyI maCalI KAyI.
;--"3.Xuez_se_kAlA_karanA"<--XuAz_karanA
;Eclipse should be seen through a smoked glass.
;grahaNa ko Xuez se kAle kie hue kAMca se xeKanA cAhie.
;
;'smoke' Sabxa kA mUla arWa 'XuAz' hE. kriyA prayoga meM yaha praXAnawaH 'XuAz' banAne ke arWa meM prayoga howA hE. isakA anwarnihiwa sUwra hogA -
;
;anwarnihiwa sUwra ;
;                   
;                    XuAz
;                     |
;                     |----|
;                          | kriyA
;                          |
;          XUmrapAna      (XuAz banAnA)
;           ^                 |
;           |                 |
;           |saMjFA  |--------|----------|
;           |--------|                   |
;                    |                   |
;                XUmrapAna_karanA        XuAz_xenA
;                                        |
;                                  |-----|-----|
;                                  |           |
;                                 meM_pakAnA  se_kAlA_karanA
;
;
;
;sUwra : XuAz`
;
;
;
