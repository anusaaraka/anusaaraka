;"cutting","N","1.kawarana"
;He took the cutting from the article
;--"2.kalama[vanaspawiyoM_kA]"
;Hibiscus cuttings are planted here
;--"3.katAva"
;We faced the steep cutting in front of us.
;
;
(defrule cut0
(declare (salience 5000))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 across)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 asahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut0  "  ?id "  " ?id1 "  asahamawa_ho  )" crlf))
)

;She never cuts across my statements.
;vaha kaBI BI mere vakwavya se asahamawa nahIM howI
(defrule cut1
(declare (salience 4900))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 across)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CotA_rAswA_pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut1  "  ?id "  " ?id1 "  CotA_rAswA_pakadZa  )" crlf))
)

;If we cut across this park,we'll reach early.
;yaxi hama isa pArka vAle Cote rAswe se jAez wo jalxI pahuzca jAezge
(defrule cut2
(declare (salience 4800))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 katOwI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut2  "  ?id "  " ?id1 "  katOwI_kara  )" crlf))
)

;Karca meM 15 miliyana dAlara kI katOwI kI gaI
(defrule cut3
(declare (salience 4700))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GatAnA_yA_kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut3  "  ?id "  " ?id1 "  GatAnA_yA_kama_kara  )" crlf))
)

;I've cut down on the amount of salt in my meals.
;mEne apane Bojana meM namaka kI mAwrA ko kama kara xiyA hE
(defrule cut4
(declare (salience 4600))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut4  "  ?id "  " ?id1 "  kAta_dAla  )" crlf))
)

;He cut down the mango tree.
;usane Ama kA pedZa kAta xiyA
(defrule cut5
(declare (salience 4500))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 haswakRepa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut5  "  ?id "  " ?id1 "  haswakRepa_kara  )" crlf))
)

;I'm sorry to cut in on your conversation.
;wumhArI bAwacIwa meM haswakRepa ke lie muJe Kexa hE
(defrule cut6
(declare (salience 4400))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 alaga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut6  "  ?id "  " ?id1 "  alaga_kara  )" crlf))
)

;They've cut me off from the game.
;unhone muJe Kela se alaga kara xiyA
(defrule cut7
(declare (salience 4300))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut7  "  ?id "  " ?id1 "  roka_xe  )" crlf))
)

;She cut me off in mid-sentence.
;usane muJe bIca meM hI(bolane se ) roka xiyA
(defrule cut8
(declare (salience 4200))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_xenA,_tukadez_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut8  "  ?id "  " ?id1 "  kAta_xenA,_tukadez_kara  )" crlf))
)

;Fold the paper && cut out a circle.
;kAgajZa ko modZo Ora eka vqwa kAto
(defrule cut9
(declare (salience 4100))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rUka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut8  "  ?id "  " ?id1 "  rUka_jA  )" crlf))
)

;Engine slowed down && finally cut out.
;iMjana XIre huA Ora aMwa meM rUka gayA
(defrule cut10
(declare (salience 4000))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut9  "  ?id "  " ?id1 "  kama_kara  )" crlf))
)

(defrule cut11
(declare (salience 3900))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut10  "  ?id "  " ?id1 "  kama_kara  )" crlf))
)

(defrule cut12
(declare (salience 3800))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut11  "  ?id "  " ?id1 "  kAta_xe  )" crlf))
)

(defrule cut13
(declare (salience 3700))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut12  "  ?id "  " ?id1 "  kAta_xe  )" crlf))
)

(defrule cut14
(declare (salience 3600))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 harA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut13  "  ?id "  " ?id1 "  harA_xe  )" crlf))
)

(defrule cut15
(declare (salience 3500))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 harA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut14  "  ?id "  " ?id1 "  harA_xe  )" crlf))
)

(defrule cut16
(declare (salience 3400))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut15  "  ?id "  " ?id1 "  kAta_dAla  )" crlf))
)

(defrule cut17
(declare (salience 3300))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut16  "  ?id "  " ?id1 "  kAta_dAla  )" crlf))
)

(defrule cut18
(declare (salience 3200))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id cutting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kawarana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cut.clp  	cut17   "  ?id "  kawarana )" crlf))
)

(defrule cut19
(declare (salience 3100))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut18   "  ?id "  kAta )" crlf))
)

(defrule cut20
(declare (salience 3000))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut19   "  ?id "  kata )" crlf))
)

(defrule cut21
(declare (salience 2900))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut20   "  ?id "  kAta )" crlf))
)

(defrule cut22
(declare (salience 2800))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut21   "  ?id "  kAta )" crlf))
)

;default_sense && category=verb	cIra	0
;"cut","VTI","1.cIranA"
;She cut her fingerwith a knife
;--"2.kAtanA"
;The gardener cut the grass
;--"3.xu:Ka_pahuzcanA"
;His remarks cut him deeply
;
;
;LEVEL 
;
;
;Headword : cut
;
;Examples --
;
;"cut","N","1.GAva/cIrA"
;She received a cut of her knife. 
;usake apane cAkU se GAva ho gayA <--kata gayA 
;
;--"2.GatAva"
;The censor has made several cuts in the film
;sensara ne Pilma meM bahuwa se GatAva kara xiye <--kAzta-CAzta karanA<-- kata karanA<--kAtanA
;
;"cut","VTI","1.cIranA"
;She cut her finger with a knife
;usane apanI ugazlI cAkU se cIra lI <--kAta lI<--kAtanA
;
;--"2.kAtanA"
;The gardener cut the grass
;mAlI ne GAzsa kAtI.<--kAtanA
;
;--"3.xu:Ka_pahuzcanA"
;His remarks cut him deeply
;usakI tippaNI ne use gaharA xu:Ka pahuzcAyA
;<--gaharA GAva xenA<--mAnasika rUpa se katanA
;
;--"4.anupasWiwa rahanA"
;She cut her classes today. 
;vaha Aja apanI kakRA meM nahIM gayI 
; <--kakRA kata karanA
;
;--"5.mUlya GatAnA"
;You should cut your prices. 
;wumhe apane mUlya GatAne cAhiye kata karanA
;
;--"6.katanA" 
;Meat does not cut well.
;mAzsa acCI waraha nahIM katawA
;
;
; nota:--uparyukwa'cut'Sabxa ke samaswa saMjFA, Ora kriyA ke vAkyoM kA avalokana kare  
;      wo isa niRkarRa para pahuzca sakawe hEM ki'cut'kA mUla arWa cAhe vaha mAnasika  
;      SArIrika,aWavA BOwika arWoM meM liyA gayA ho, kAtanA,katanA,yA kata karane se nikAlA jA sakawA hE.awaH isake liye sUwra nimna prakAra xe sakawe hEM
;   
;               sUwra : kAtanA`
;                 
;
