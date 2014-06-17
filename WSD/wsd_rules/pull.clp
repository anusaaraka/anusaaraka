;Modified by Sonam Gupta MTech IT Banasthali 2013
;The sun was so strong we had to pull down the blinds.
;सूर्य इतनी तेजी से चमक रहा था कि हमें ब्लाइंड्स नीचे करने पड़े .
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
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull0  "  ?id "  " ?id1 "  nIce_kara  )" crlf))
)

;He had pulled down his old house && made a new one
;usane apanA purAnA makAna wudZavAkara nayA banavA liyA

;Added by Sonam Gupta MTech IT Banasthali 2013
;He pulled off his sweater.
;उसने उसका स्वेटर उतारा .
(defrule pull1
(declare (salience 4900))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(id-root ?id2 sweater|shirt)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull1  "  ?id "  " ?id1 "  uwArA  )" crlf))
)


(defrule pull2
(declare (salience 4800))
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
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull2  "  ?id "  " ?id1 "  saPala_ho  )" crlf))
)

;She finally pulled off in her interview. 
;aMwawa: vaha apane sAkRAwakAra meM saPala rahI
(defrule pull3
(declare (salience 4700))
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
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull3  "  ?id "  " ?id1 "  pahana  )" crlf))
)

;He pulled on his socks.
;usane apane mojZe pahane
(defrule pull4
(declare (salience 4600))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jIviwa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull4  "  ?id "  " ?id1 "  jIviwa_raha  )" crlf))
)

;She is very ill but doctor says that she'll pull through.
;vaha bahuwa bImAra hE para dAktara ne kahA hE ki vaha baca jAegI
;Added by Sonam Gupta MTech IT Banasthali 2013
;I spent the morning pulling up the weeds in the flowerbeds.
;मैंने सुबह फूलों की क्यारियों में से घास उखाड़ने में बिताई .
(defrule pull5
(declare (salience 4500))
(id-word ?id pulling)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(id-root ?id2 weed|flower|grass)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uKAfane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull5  "  ?id "  " ?id1 "  uKAfane  )" crlf))
)

;$$$ Modified mng from 'roka' to 'Upara_uTA_le' by Sonam Gupta MTech IT Banasthali 2013
;Gripping the edge firmly, he pulled the entire portion up. [Gyannidhi]
;सके किनारे को उसने तेजी से पकड़ा और सारे भाग को ऊपर उठा लिया।
(defrule pull6
(declare (salience 4400))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Upara_uTA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull6  "  ?id "  " ?id1 "  Upara_uTA_le  )" crlf))
)

;He pulled up at the headlight of his scooter.
;usane skUtara kI hEdalAita baMxa kara xI
(defrule pull7
(declare (salience 4300))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girA_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull7 " ?id "  girA_xe )" crlf)) 
)

(defrule pull8
(declare (salience 4200))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 girA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull8  "  ?id "  " ?id1 "  girA_xe  )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;I pulled a muscle in my back lifting some drawers.
;द्रवेर्स उठाते समय मेरे पीछे की मांसपेशी खिच गयी .
(defrule pull9
(declare (salience 4100))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 muscle)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kizca_gaI)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull9 " ?id "  Kizca_gaI )" crlf)) 
)


(defrule pull10
(declare (salience 4000))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id giraPwAra_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull10 " ?id "  giraPwAra_kara )" crlf)) 
)

(defrule pull11
(declare (salience 3900))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 giraPwAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull11  "  ?id "  " ?id1 "  giraPwAra_kara  )" crlf))
)

(defrule pull12
(declare (salience 3800))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-into_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull12 " ?id "  pahuzca )" crlf)) 
)

(defrule pull13
(declare (salience 3700))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull13  "  ?id "  " ?id1 "  pahuzca  )" crlf))
)

(defrule pull14
(declare (salience 3600))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull14 " ?id "  ruka )" crlf)) 
)

(defrule pull15
(declare (salience 3500))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull15  "  ?id "  " ?id1 "  ruka  )" crlf))
)

(defrule pull16
(declare (salience 3400))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hata));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull16 " ?id "  hata )" crlf)) 
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;The dentist pulled both teeth out .
;दंत चिकित्सक ने दोनों दांत निकाल दिए .
(defrule pull17
(declare (salience 3300))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(id-root ?id2 teeth|tooth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull17  "  ?id "  " ?id1 "  nikAla_xe  )" crlf))
)

(defrule pull18
(declare (salience 3200))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull18  "  ?id "  " ?id1 "  hata  )" crlf))
)

(defrule pull19
(declare (salience 3100))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-round_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_ho_jA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull19 " ?id "  TIka_ho_jA )" crlf)) 
)

(defrule pull20
(declare (salience 3000))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TIka_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull20  "  ?id "  " ?id1 "  TIka_ho_jA  )" crlf))
)

(defrule pull21
(declare (salience 2900))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-together_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milakara_kAma_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull21 " ?id "  milakara_kAma_kara )" crlf)) 
)

(defrule pull22
(declare (salience 2800))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 milakara_kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull22  "  ?id "  " ?id1 "  milakara_kAma_kara  )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;I watched an old woman pull herself up the stairs, holding on to a rail.
;मैंने एक बूढी औरत को रेलिग़ पकड़ कर सीढियों पर चढ़ते हुए देखा .
(defrule pull23
(declare (salience 2700))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(id-cat_coarse ?id2 pronoun)
(id-cat_coarse ?id3 noun)
(and(kriyA-up_saMbanXI ?id ?)(kriyA-object  ?id ?id2)(kriyA-subject  ?id ?id3))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDawe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull23 " ?id "  caDawe_hue )" crlf)) 
)


(defrule pull24
(declare (salience 2600))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull24 " ?id "  ruka )" crlf)) 
)

(defrule pull25
(declare (salience 2500))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull25 " ?id "  ruka )" crlf)) 
)

(defrule pull26
(declare (salience 2400))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull26 " ?id "  ruka )" crlf)) 
)

(defrule pull27
(declare (salience 2300))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull27  "  ?id "  " ?id1 "  ruka  )" crlf))
)

(defrule pull28
(declare (salience 2200))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara_KIMca));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pull.clp pull28 " ?id "  bAhara_KIMca )" crlf)) 
)

(defrule pull29
(declare (salience 2100))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pull.clp	pull29  "  ?id "  " ?id1 "  bAhara_KIMca  )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;During the last lap of the race one of the runners began to pull ahead .
;दौड़ के आखिरी दौरान में एक धावक सबसे आगे निकलने लगा .

(defrule pull30
(declare (salience 2000))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 ahead)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  pull.clp	pull30   " ?id " " ?id1 "  Age_nikala )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;We waved as the train pulled out of the station.
;ट्रेन के स्टेशन से चलते ही हमने हाथ हिलाकर विदा ली . 
(defrule pull31
(declare (salience 1900))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 train)
(id-word =(+ ?id 1) out)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pull.clp 	pull31   "  ?id "  cala )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;Our armies are pulling back on all fronts.
;सारी सीमाओं से हमारी सेना को पीछे हटाया जा रहा है . 
(defrule pull32
(declare (salience 1800))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 back)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  pull.clp	pull32   " ?id " " ?id1 "  pICe_hatA )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;The show has certainly pulled (in) the crowds .
; शो ने भीड़ को सचमुच आकर्षित किया है.
(defrule pull33
(declare (salience 1700))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 crowd|group|mass|press|assembly|gathering|mob|bird)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkarRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pull.clp 	pull33   "  ?id "  AkarRiwa_kara )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;The gang that pulled the bank robbery were all arrested.
;जिस दल ने बैंक में चोरी की थी वे  सब पकड़े गए .
(defrule pull34
(declare (salience 1600))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 robbery|theft|steal|burglary|mugging|shoplifting)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id corI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pull.clp 	pull34   "  ?id "  corI_kara )" crlf))
)


(defrule pull35
(declare (salience 1500))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pull.clp 	pull35   "  ?id "  KIMca )" crlf))
)


(defrule pull36
(declare (salience 1400))
(id-root ?id pull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KiMcAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pull.clp 	pull36   "  ?id "  KiMcAI )" crlf))
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
