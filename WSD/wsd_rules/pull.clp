
(defrule pull0
(declare (salience 5000))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull0  "  ?id "  " ?id1 "  wodZa  )" crlf))
)

;He had pulled down his old house && made a new one
;usane apanA purAnA makAna wudZavAkara nayA banavA liyA
(defrule pull1
(declare (salience 4900))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull1  "  ?id "  " ?id1 "  saPala_ho  )" crlf))
)

;She finally pulled off in her interview. 
;aMwawa: vaha apane sAkRAwakAra meM saPala rahI
(defrule pull2
(declare (salience 4800))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull2  "  ?id "  " ?id1 "  pahana  )" crlf))
)

;He pulled on his socks.
;usane apane mojZe pahane
(defrule pull3
(declare (salience 4700))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jIviwa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull3  "  ?id "  " ?id1 "  jIviwa_raha  )" crlf))
)

;She is very ill but doctor says that she'll pull through.
;vaha bahuwa bImAra hE para dAktara ne kahA hE ki vaha baca jAegI
(defrule pull4
(declare (salience 4600))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull4  "  ?id "  " ?id1 "  roka  )" crlf))
)

;He pulled up at the headlight of his scooter.
;usane skUtara kI hEdalAita baMxa kara xI
(defrule pull5
(declare (salience 4500))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girA_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull5 " ?id "  girA_xe )" crlf)) 
)

(defrule pull6
(declare (salience 4400))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 girA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull6  "  ?id "  " ?id1 "  girA_xe  )" crlf))
)

(defrule pull7
(declare (salience 4300))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id giraPwAra_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull7 " ?id "  giraPwAra_kara )" crlf)) 
)

(defrule pull8
(declare (salience 4200))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 giraPwAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull8  "  ?id "  " ?id1 "  giraPwAra_kara  )" crlf))
)

(defrule pull9
(declare (salience 4100))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-into_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull9 " ?id "  pahuzca )" crlf)) 
)

(defrule pull10
(declare (salience 4000))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull10  "  ?id "  " ?id1 "  pahuzca  )" crlf))
)

(defrule pull11
(declare (salience 3900))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull11 " ?id "  ruka )" crlf)) 
)

(defrule pull12
(declare (salience 3800))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull12  "  ?id "  " ?id1 "  ruka  )" crlf))
)

(defrule pull13
(declare (salience 3700))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hata));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull13 " ?id "  hata )" crlf)) 
)

(defrule pull14
(declare (salience 3600))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull14  "  ?id "  " ?id1 "  hata  )" crlf))
)

(defrule pull15
(declare (salience 3500))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-round_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_ho_jA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull15 " ?id "  TIka_ho_jA )" crlf)) 
)

(defrule pull16
(declare (salience 3400))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TIka_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull16  "  ?id "  " ?id1 "  TIka_ho_jA  )" crlf))
)

(defrule pull17
(declare (salience 3300))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-together_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milakara_kAma_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull17 " ?id "  milakara_kAma_kara )" crlf)) 
)

(defrule pull18
(declare (salience 3200))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 milakara_kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull18  "  ?id "  " ?id1 "  milakara_kAma_kara  )" crlf))
)

(defrule pull19
(declare (salience 3100))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull19 " ?id "  ruka )" crlf)) 
)

(defrule pull20
(declare (salience 3000))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull20 " ?id "  ruka )" crlf)) 
)

(defrule pull21
(declare (salience 2900))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull21 " ?id "  ruka )" crlf)) 
)

(defrule pull22
(declare (salience 2800))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull22  "  ?id "  " ?id1 "  ruka  )" crlf))
)

(defrule pull23
(declare (salience 2700))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara_KIMca));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull23 " ?id "  bAhara_KIMca )" crlf)) 
)

(defrule pull24
(declare (salience 2600))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull24  "  ?id "  " ?id1 "  bAhara_KIMca  )" crlf))
)

(defrule pull25
(declare (salience 2500))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pull.clp 	pull25   "  ?id "  KIMca )" crlf))
)

(defrule pull26
(declare (salience 2400))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KiMcAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pull.clp 	pull26   "  ?id "  KiMcAI )" crlf))
)

;"pull","N","1.KiMcAI"
;A pull of the chain will stop the train.
;--"2.xabAva"
;Sensitiveness can not tolerate the pulls.
;--"3.praBAva"
;I need not to use your pull to get this job.
;--"4.kaSa"
;The magician took a long pull && finished the cigarette.
;--"5.GzUta"
;The man took a small pull of wine in the party.
;--"6.laMbI cadAI"
;Mountaineers have to take several long pulls to reach their destination.
;--"7.hawWI"
;The door pull was got strucked by rust.
;
;LEVEL 
;Headword :  pull
;
;Examples  --
;
;"pull","V","KIMcanA"
;He pulled the rope with great difficulty
;usane rassI ko badI muSkila se KIMcA
;The new engine can pull a large number of carriages
;yaha naI iMjana aneka rela dibboM ko KIMca sakawA hE 
;--"2.uKAdanA"<--KIMcanA
;Don't pull the plant
;pOXe ko mawa uKAdo
;--"3.bAhara_nikAlanA"<--KIMca_nikAlanA<--KIMcanA
;The intruder pulled a gun on the crowd
;GusapETiye ne BIda meM banxUka bAhara nikAlI 
;--"4.balapUrvaka_apanA_SarIra_hilAnA <--KIMcanA
;The thief pulled himself free && escaped
;cora balapUrvaka svayaM ko mukwa karAkara BAga gayA
;--"5.moca_AnA"<--KIMcanA
;His finger muscle got pulled due to a fall
;girane se usakI uMgalI kI mAzsapeSI meM moca A gaI 
;--"6.pAsa_le_AnA"<--KIMcanA
;He pulled the chair near the table
;vaha kursI ko tebala ke pAsa le AyA
;--"7.jora_lagAkara(yanwra Axi) calAnA<--KIMcanA
;I pulled the car hard as we drove up the hill  
;mEneM gAdI ko jora lagAkara calAyA jaba hama pahAda para calane lage
;--"8.parxA_KolanA_yA_banxa_karanA<--KIMcanA
;Pull the curtain
;parxA Kolo
;
;"pull","N","1.KiMcAva"
;She felt a pull at her hair from behind.
;use apane bAloM para pICe se eka KiMcAva mehasUsa huA.
;--"2.kisI(bade_AxamI)se_kAma_karavAne_kA_sAmarWya_honA"<--KiMcAva
;He has a lot of pull with his  boss
;usameM apane bAsa se kAma karavAne kA bahuwa sAmarWya hE
;--"3.kaSa"<--KiMcAva
;He took a pull at his first cigarette
;usane apanI pahalI sigreta kA kaSa liyA.  
;--"4.kaTina_caDZAva"<--jisake_lie_jZora_lagAkara_apane_Apa_ko_KIMcanA_padZe<--KiMcAva
;
;Commentary : pull-Antonym.push
;
;vyAKyA : uparyukwa aMkiwa Sabxa "pull" kA kriyA vAkyoM meM `KIMcanA' arWa
;kA prakata howA hE. Ora saMjFA vAkyoM meM `KiMcAva' arWa prakata howA hE.
;
;isakA sUwra nimna hE
;
;sUwra : KIMcanA^KiMcAva
;
