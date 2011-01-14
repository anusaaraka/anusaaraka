;"dying","N","1.maraNakAlIna"
;It was her dying declaration.
;
;
(defrule die0
(declare (salience 5000))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lupwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " die.clp	die0  "  ?id "  " ?id1 "  lupwa_ho  )" crlf))
)

;The sound of bells died away into the distance.
;GaMtiyoM kI AvAjZa kuCa xUra jAkara maMxa ho gaI




(defrule die1
(declare (salience 4900))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SAnwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " die.clp	die1  "  ?id "  " ?id1 "  SAnwa_ho  )" crlf))
)

;When the applause had died down he started to speak.
;jaba wAliyAz maMxa padZane lagIM waba usane bolanA SurU kiyA





(defrule die2
(declare (salience 4800))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wuraMwa_mara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " die.clp	die2  "  ?id "  " ?id1 "  wuraMwa_mara_jA  )" crlf))
)







(defrule die3
(declare (salience 4700))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lupwa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " die.clp	die3  "  ?id "  " ?id1 "  lupwa_ho_jA  )" crlf))
)

;Dinosaurs died out 65 million years ago.
;dAyanAsora 65 karodZa sAla pahale vilIna ho gae






(defrule die4
(declare (salience 4600))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dying )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id maraNakAlIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  die.clp  	die4   "  ?id "  maraNakAlIna )" crlf))
)





;"die","N","1.TappA_yA_sAzcA"
;Dies are used in stamping designs on coins,leather etc.
(defrule die5
(declare (salience 4500))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TappA_yA_sAzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  die.clp 	die5   "  ?id "  TappA_yA_sAzcA )" crlf))
)





(defrule die6
(declare (salience 4400))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " die.clp	die6  "  ?id "  " ?id1 "  mara_jA  )" crlf))
)

;"die","N","1.TappA_yA_sAzcA"
;Dies are used in stamping designs on coins,leather etc.





;Added by Meena(28.5.10)
;As the Master grew old and infirm , the disciples begged him not to die . 
(defrule to_die7
(declare (salience 4300))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) to)
(to-infinitive  =(- ?id 1)  ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng  ?id  =(- ?id 1)  maranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " die.clp   die7  "  ?id "  " (- ?id 1) "  maranA  )" crlf))
)






;Changed the hindi meaning from "mara" to  "mara_jA"
;She decided to search for her biological mother after her adoptive parents died 
;Salience reduced by Meena(28.5.10)
(defrule die8
(declare (salience 0))
;(declare (salience 4300))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  die.clp 	die8   "  ?id "  mara_jA )" crlf))
)

;"die","V","1.maranA"
;She died from cancer.
;
;LEVEL 
;Headword : die
;
;Examples --
;
;"die","N","1.TappA"
;Dies are used for stamping paper.
;kAgajZa para stEmpa lagAne ke liye TappoM kA prayoga howA hE.
;"die","V","1.maranA"
;She died of a head injury.
;vaha sira kI cota se marI. 
;She died a begger.
;vaha BiKArI ho kara marI
;His secrets died with  him.
;usake rAjZa usake sAWa mara gaye.
;They share a love that will never die.
;unameM kaBI na marane vAlA pyAra WA.
;--"2.sUKanA"
;The flowers die without sufficient water.
;paryApwa pAnI na milane para PUla muraJA jAwe hEM<---sUKa jAnA<--nirjIva ho jAnA<--mara jAnA
;--"3.buJanA"
;The flames died slowly.
;jvAlAez XIre-XIre buJa gayIM.<--samApwa ho jAnA<--mara jAnA
;
;
;sUwra : maranA`/TappA
;
;
;
;
