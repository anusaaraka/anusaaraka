;Added by Meena(17.02.10)
;Criminal charges will be brought against the driver . 
(defrule charge0
(declare (salience 5000))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(or (samAsa ?id ?id1)(viSeRya-viSeRaNa ?id ?id1));"viSeRya-viSeRaNa" added by sheetal
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiyoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp    charge0   "  ?id "  aBiyoga )" crlf))
)



;Salience reduced by Meena(17.02.10)
(defrule charge1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge1   "  ?id "  mUlya )" crlf))
)



(defrule charge2
(declare (salience 4900))
(id-root ?id charge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charge.clp 	charge2   "  ?id "  xoRa_lagA )" crlf))
)

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
