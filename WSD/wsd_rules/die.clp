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

;@@@ Added by Pramila(Banasthali University) on 20-11-2013
;He died a violent death.               ;cald
;वह एक निर्मम मौत मरा .
;modified by Pramila on 19-02-2014
(defrule die8
;(declare (salience 0))
(declare (salience 4500))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  die.clp 	die8   "  ?id "  mara )" crlf))
)

;@@@ Added by Pramila(BU) on 09-01-2014
;Our love will never die.          ;cald
;हमारा प्रेम कभी नहीं मरेगा 
;modified by Pramila on 19-02-2014
(defrule die9
(declare (salience 4900))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)            
(id-cat_coarse ?id verb)
(root-verbchunk-tam-chunkids die ? ? ?id1 $?)
(id-word ?id1 will|shall)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  die.clp 	die9   "  ?id "  mara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 20-11-2013
;The engine just died on us.    ;cald
;इंजन हमारे सामने ही अभी खराब हो गया .
;added condition for inanimate subject on 10-02-2014
(defrule die10
(declare (salience 4900))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id2)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  die.clp 	die10   "  ?id "  KarAba_ho )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 20-11-2013
;He wore his jeans until they died.      ;cald
;उसने अपनी जींस तब तक पहनीं जब तक वे  फट गई.
(defrule die11
(declare (salience 5000))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id1 ?id)
(id-root ?id1 wear)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  die.clp 	die11   "  ?id "  Pata_jA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 20-11-2013
;The flowers die without sufficient water.                ;sentence of this clip file
;paryApwa pAnI na milane para PUla muraJA jAwe hEM
(defrule die12
(declare (salience 5000))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 flower|leaf|leaves)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muraJA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  die.clp 	die12   "  ?id "  muraJA_jA )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 20-11-2013
;The flames died slowly.                      ;sentence of this clip file
;jvAlAez XIre-XIre buJa gayIM.
;spelling corected on 18-02-2014.
(defrule die13
(declare (salience 5000))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 flame|fire)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buJa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  die.clp 	die13   "  ?id "  buJa_jA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 16-01-2014
;The father and son duo were sitting beside a dying fire in front of their hut.
;पिता और पुत्र दोनों अपनी झोंपड़ी के सामने बुझती हुई आग के पास बैठे थे.
(defrule die14
(declare (salience 5000))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 fire)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  die.clp 	die14   "  ?id "  buJa )" crlf))
)
;-----------------------default rules---------------------
;$$$ modified by Pramila(Banasthali University) on 20-11-2013 [meaning changed from "mara_jA" to "mara"]
;It is likely that Rod died.    [verified sentence]
;यह संभव है कि वह मर गया.
;meaning changed from 'mara' to 'mara_jA' by Pramila(BU) on 19-02-2014
(defrule die15
(declare (salience 3000))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  die.clp 	die15   "  ?id "  mara )" crlf))
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

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_die14
(declare (salience 5000))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 fire)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " die.clp   sub_samA_die14   "   ?id " buJa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_die14
(declare (salience 5000))
(id-root ?id die)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 fire)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " die.clp   obj_samA_die14   "   ?id " buJa )" crlf))
)
