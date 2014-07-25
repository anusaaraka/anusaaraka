;Added by Shirisha Manju, Suggested by Chaitanya Sir (05-11-13)
;The positively charged glass rod does not lose any of its charge, contrary to the process of charging by contact.   physics
(defrule charge00
(declare (salience 5010))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
;(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
(id-root ?id1 ?str);As suggested by Chaitanya Sir removed inanimate.gdbm and modified the fact as shown by Roja (03-12-13) 
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AveSiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp    charge00   "  ?id "  AveSiwa )" crlf))
)

;Added by Meena(17.02.10)
;Criminal charges will be brought against the driver . 
(defrule charge0
;(declare (salience 5000))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(or (samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)(viSeRya-viSeRaNa ?id ?id1));"viSeRya-viSeRaNa" added by sheetal
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiyoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp    charge0   "  ?id "  aBiyoga )" crlf))
)


;$$$  Modified by Preet(2-5-14)
;Salience reduced by Meena(17.02.10)
;There is no charge for fixing the tire. [merriam-webster.com]
;pahiyA lagAne ke liye  koI mUlya nahIM hE.
(defrule charge1
;(declare (salience 0))
(declare (salience 5000));salience changed
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge1   "  ?id "  mUlya )" crlf))
)



;$$$  Modified by Preet(2-5-14)
;The government charged that he had not paid taxes for five years. [merriam-webster.com]
;sarakAra ne Aropa lagAyA ki vaha pAzca varRoM se kara nahIM_xe rahA WA.
(defrule charge2
;(declare (salience 4900));salience changed
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aropa_lagA));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge2   "  ?id "  Aropa_lagA )" crlf))
)

;$$$  Modified by Preet(2-5-14)
;@@@ Added by Preeti(1-3-14)
;He was prosecuted on a charge of theft. [Rajpal]
;usa para corI ke Aropa para aBiyoga calAyA gayA WA.
(defrule charge3
;(declare (salience 5000));salience changed
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
;(viSeRya-of_saMbanXI  ?id ?id1);condition removed
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aropa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge3   "  ?id "  Aropa )" crlf))
)

;@@@ Added by Preeti(2-5-14)
;I am leaving the school in your charge. [Oxford Advanced Learner's Dictionary]
;mEM ApakI jimmexArI para vixyAlaya ko Codakara jA rahA hUz.
(defrule charge4
(declare (salience 4950))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jimmexArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge4   "  ?id "  jimmexArI)" crlf))
)
;@@@ Added by Preeti(2-5-14)
;He took charge of the farm after his father's death. [Oxford Advanced Learner's Dictionary]
;usane apane piwA kI mqwyu ke bAxa Kewa kI jimmexArI lI.
;He has charge of the building. [merriam-webster.com]
;usa para imArawa kI jimmexArI hE.
(defrule charge41
(declare (salience 4950))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 take|have)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jimmexArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge41   "  ?id "  jimmexArI)" crlf))
)


;@@@ Added by Preeti(2-5-14)
;He set off a charge that destroyed the mountain. [merriam-webster.com]
;usane eka EsA bArUxa sulagAyA jisane parvawa naRta_kara xiyA.
(defrule charge5
(declare (salience 4900))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
;(viSeRya-det_viSeRaNa  ?id ?id1)
(id-root ?id1 set)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge5   "  ?id "  bArUxa)" crlf))
)

;@@@ Added by Preeti(2-5-14)
;He led the charge down the field.[Oxford Advanced Learner's Dictionary] 
;usane mExAna meM XAve ka newqwva kiyA.
(defrule charge6
(declare (salience 4900))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 lead)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge6   "  ?id "  XAvA)" crlf))
)

;@@@ Added by Preeti(2-5-14)
;His charge was to obtain specific information. [Oxford Advanced Learner's Dictionary]
;usakA kAma viSiRta sUcanA prApwa karanA WA.
(defrule charge7
(declare (salience 4900))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge7   "  ?id "  kAma)" crlf))
)

;@@@ Added by Preeti(2-5-14)
;'Are you paying cash?' 'No, it will be a charge. [Oxford Advanced Learner's Dictionary]
;kyA  Apa rokada xegeM? 'nahIM, yaha Karca_meM liKanA hogA.
;Would you like to put that on your charge? 
;kyA Apa ise Apake Karca_meM liKanA pasanxa kareMge?
(defrule charge8
(declare (salience 4900))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
;(or(viSeRya-on_saMbanXI  ? ?id) (subject-subject_samAnAXikaraNa  ? ?id))
(or(viSeRya-on_saMbanXI  ? ?id)(kriyA-vAkyakarma  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Karca_meM_liKanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge8   "  ?id "  Karca_meM_liKanA)" crlf))
)

;@@@ Added by Preeti(2-5-14)
;The bank does not charge to stop a payment. [Oxford Advanced Learner's Dictionary]
;bEMka BugawAna ko rokane ke liye kImawa_nahIM lewA hE.
(defrule charge9
(declare (salience 4950))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-for_saMbanXI ?id ?)(kriyA-at_saMbanXI  ?id ?)(kriyA-kriyArWa_kriyA  ? ?id)(kriyA-kriyArWa_kriyA  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kImawa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge9   "  ?id "  kImawa_le )" crlf))
)

;@@@ Added by Preeti(2-5-14)
;He was charged with murder. [Oxford Advanced Learner's Dictionary]
;usa para KUna kA_Aropa lagAyA gayA WA.
;Opposition MPs charged the minister with neglecting her duty. [Oxford Advanced Learner's Dictionary]
;vipakRa empiyoM ne manwrI para apane karwwavya kI upekRA karanA kA_Aropa lagAyA.
(defrule charge10
(declare (salience 4950))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?)
(id-root  ?id1  with)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kA_Aropa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  charge.clp 	charge10   "  ?id "   " ?id1" kA_Aropa_lagA) )" crlf))
)

;@@@ Added by Preeti(2-5-14)
;We charged at the enemy. [Oxford Advanced Learner's Dictionary]
;hamane Sawru para AkramaNa kiyA.
;The bull put its head down and charged. [Oxford Advanced Learner's Dictionary]
;sAzda ne usakA sira xabAyA Ora AkramaNa kiyA.
(defrule charge11
(declare (salience 4950))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(kriyA-at_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge11   "  ?id "  AkramaNa_kara) )" crlf))
)
;@@@ Added by Preeti(2-5-14)
;The children charged around the house. [Cambridge Learner’s Dictionary]
;bacce Gara ke cAroM ora wejI_se_cala_rahe We.
(defrule charge12
(declare (salience 4950))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
;(id-cat_coarse =(+ ?id 1)  adverb|preposition)
(id-root =(+ ?id 1) around|down)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se_cala_rahe_We))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge12   "  ?id "  wejI_se_cala_rahe_We) )" crlf))
)

;@@@ Added by Preeti(2-5-14)
;He came charging into my room and demanded to know what was going on. [Oxford Advanced Learner's Dictionary]
;vaha mere kamare ke aMxara wejI_se calakar  AyA Ora  kyA ho rahA WA jAnane kI mAzga kiyA kI.
(defrule charge13
(declare (salience 4950))
(id-root ?id charge)
(id-word ?id charging)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse =(+ ?id 1)  adverb|preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se_calakar))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge13   "  ?id "  wejI_se_calakar) )" crlf))
)

;@@@ Added by Preeti(2-5-14)
;The shaver can be charged up and used when travelling. [Oxford Advanced Learner's Dictionary]
;yAwrA ke samya uswArA cArja kiyA jA sakawA hE Ora upayoga kiyA jA sakawA hE .
(defrule charge14
(declare (salience 4960))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root  ?id1  up)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cArja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  charge.clp 	charge14   "  ?id "   " ?id1" cArja_kara) )" crlf))
)

;@@@ Added by Preeti(2-5-14)
;Before use, the battery must be charged. [Oxford Advanced Learner's Dictionary]
;upayoga se pahale, bEtrI cArja karanI hogI.
(defrule charge15
(declare (salience 4950))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject  ?id ?id1) (kriyA-object  ?id ?id1))
(id-root ?id1 battery)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cArja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge15   "  ?id "  cArja_kara) )" crlf))
)

;@@@ Added by Preeti(2-5-14)
;The teacher charged the children to memorize the poem. [wordnetweb.princeton.edu]
;SikRaka ne kaviwA yAxa karane ke liye baccoM ko AxeSa xiyA.
(defrule charge16
(declare (salience 4950))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-root ?id1 memorize)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxeSa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge16   "  ?id "  AxeSa_xe) )" crlf))
)

(defrule charge17
(declare (salience 4950))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Karca_meM_liKanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge17   "  ?id " Karca_meM_liKanA ) )" crlf))
)

;parser problem
;The bull looked as if it was about to charge.
;They are charging SYMBOL-POUND-SIGN 3 for the catalogue.
;He only charged me half price.
;He saw Jess charging at him with a pitchfork.

;"charge","V","1.xoRa_lagAnA"
;The suspect was charged with murdering his wife.
;--"2.uwwejiwa_karanA/honA"
;The speaker charged up the crowd with his inflammatory remarks.
;--"3.jimmexArI_dZAlanA"
;He charged her with cleaning up all the files over the weekend.
;--"4.AjFA_xenA"
;The teacher charged the children to memorize the poem.
;--"5.bijalI_saMcaya_karane_ke_yaMwra_meM_bijalI_BaranA"
;I need to charge my car battery.
;
;LEVEL 
;Headword : charge
;
;Examples --
;
;
;"charge","N"
;
;"mUlya"
;The charges are high for the course.
;korsa kA mUlya bahuwa aXika hE  <--mUlya kA boJa
;
;"uwwaraxAyiwva"
;He has the charge of this unit.
;usake Upara isa ikAI kA uwwaraxAyiwva hE <--uwwaraxAyiwva kA boJa
;
;"xeKaBAla"
;The boy is under his grandfather's charge.
;baccA apane bAbA kI xeKaBAla meM hE <--bAbA kI najZaroM ke sAmane rahanA <--najZaroM ke boJa meM rahanA
;
;"Aropa"
;The arrest was made on charge of murder.
;hawyA ke Aropa ke AXAra para hirAsawa meM liyA gayA WA.<---Aropa wale xabAnA
;
;"XAvA"
;She made a charge for the boy.
;usane ladZake para XAvA kiyA. <--
;
;"V"
;"XAvA_karanA"
;He charged at the enemy
;usane xuSmana para XAvA kiyA <--xuSmana para apanI Sakwi dAlI
;
;"BarA_honA"
;HE is charged with energy.
;vaha sPUrwi se BarA hE.
;
;"mUlya_mAzganA"
;They charge for every facility they provide.
;vaha jo BI suviXA xewe hEM usake liye mUlya mAzgawe hEM.
;'charge' kA mUlArWa samaJane ke liye isakI etymology ko xeKA jA sakawA hE.
; 
;
;   Charge (ch, v. t. [imp. & p. p. Charged (ch; p. pr. & vb. n.
;   Charging.] [OF. chargier, F. charger, fr. LL. carricare, fr. L.
;    carrus wagon. Cf. Cargo, Caricature, Cark, && see Car.] 1. To 
;    lay on or impose, as a load, tax, or burden; to load; to fill.
;    1913 Webster]
;
;   "A carte that charged was with hay." Chaucer.
;   1913 Webster]
;
;   "The charging of children's memories with rules." Locke.
;   1913 Webster]
;
;   2. To lay on or impose, as a task, duty, or trust; to command,
;   instruct, or exhort with authority; to enjoin; to urge earnestly; as,
;   to charge a jury; to charge the clergy of a diocese;
;
;
;'etymology' se EsA lagawA hE ki 'charge' Sabxa kA bIjArWa 'Aropa ke BAra
; yA Barane' se judZA hE. yaha XyAna meM raKakara yaxi Upara xiye vAkyoM ko eka bAra 
;Pira xeKeM wo :
;
;"mUlya"
;The charges are high for the course.
;korsa kA mUlya bahuwa aXika hE  <--mUlya kA BAra
;
;"uwwaraxAyiwva"
;He has the charge of this unit.
;usake Upara isa ikAI kA uwwaraxAyiwva hE <--uwwaraxAyiwva kA BAra 
;
;"xeKaBAla"
;The boy is under his grandfather's charge.
;baccA apane bAbA kI xeKaBAla meM hE <--bAbA kI najZaroM ke sAmane rahanA <--najZaroM ke BAra meM rahanA
;
;"Aropa"
;The arrest was made on charge of murder.
;hawyA ke Aropa ke AXAra para hirAsawa meM liyA gayA WA.<---Aropa wale xabanA<--
;Aropa kA BAra honA
;
;"XAvA"
;She made a charge for the boy.
;usane ladZake para XAvA kiyA. <--kroXa yA AveSa se Bara kara bacce kI ora baDZI
;
;"V"
;"XAvA_karanA"
;He charged at the enemy
;usane xuSmana para XAvA kiyA <-- AveSa se Bara kara hamalA karanA
;
;"BarA_honA"
;He is charged with energy.
;vaha sPUrwi se BarA hE.
;
;"mUlya_mAzganA"
;They charge for every facility they provide.
;vaha jo BI suviXA xewe hEM usake liye mUlya mAzgawe hEM.<--mUlya kA BAra xenA
;
;
;awaH isakA sUwra banegA
;
;sUwra : XAvA[__<BAra<Aropa]
