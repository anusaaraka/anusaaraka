
;@@@ Added by Garima Singh(M.Tech-C.S) 25-nov-2013
;Our team was comfortably beaten in the first round of the competition.
;प्रतियोगीता के पहले दौर में ही हमारी टीम आसानी से हार गयी. 
;The nationalists were narrowly beaten in the local election.
;राष्ट्रवादी स्थानीय चुनाव में बड़े ही कम अंतर से हाराये गये
(defrule beat8
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI ?id ?id1)
(id-root ?id1 election|round|game|war|competition|sport) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat8   "  ?id "  harA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 25-nov-2013
;Simon always beats me at tennis.
;सिमोन टेनिस में हमेशा मुझे हराता है
(defrule beat9
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI ?id ?id1)
(id-root ?id1 tennis|football|scramble|cicket|basketball|chess) 
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat9   "  ?id "  harA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 25-nov-2013
;They were beaten hands down by their opponents.
;वे अपने प्रतिद्वंद्वी  द्वारा पूरी तरह हराये गये थे.
(defrule beat10
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI ?id ?id1)
(id-root ?id1 opponent) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat10   "  ?id "  harA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S) 25-nov-2013
;She has beaten her own record of three minutes ten seconds.
;उसने अपना ही तीन मिनिट,दस सैकंड का रिकार्ड तोड़ दिया.
(defrule beat11
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 record)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat11   "  ?id "  wodZa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 25-nov-2013
;Bob has worked as an officer on this particular beat for 20 years.[cambridge]
;बोब ने इस खास क्षेत्र में अधिकारी के तौर पर बीस वर्ष तक काम किया है.
;More police officers out on the beat may help to cut crime.[oald]
(defrule beat12
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI ?id1 ?id)
(id-root ?id1 officer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat12   "  ?id "  kRewra )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 1-Feb-2014
;She tapped out the beat on the table.
;उसने मेज पर ताल बजायी
(defrule beat16
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri tap)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat16   "  ?id "  wAla )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 1-Feb-2014
;Somebody was beating at the door.[cambridge]
;कोई दरवाजा पीट रहा था
(defrule beat17
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?)
(not(kriyA-object ?id ?))
(id-word ?id1 at)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pIta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beat.clp	beat17  "  ?id "  " ?id1 "  pIta  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 1-Feb-2014
;Holland beat Belgium by 3-1.
;होलैंड ने बेल्जियम को 3-1 से हराया . 
(defrule beat18
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI ?id ?id1)
(id-cat_coarse ?id1 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat18   "  ?id "  harA  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " beat.clp 	beat18   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 1-Feb-2014
;Beat the drum.[cambridge]
;ड्रम बजाओ 
(defrule beat19
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj drum)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat19   "  ?id "  bajA  )" crlf)
))


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 1-Feb-2014
;To make an omelette you must first beat the eggs.[cambridge] 
;आमलेट बनाने के लिये तुम्हे पहले अंडा फेंटना होगा
;Beat the flour and milk together.[oald]
;आँटा और दूध एक साथ फेंटो
(defrule beat20
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj egg|flour|batter|milk|curd)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat20   "  ?id "  PeMta  )" crlf)
))


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 1-Feb-2014
;The doctor could feel no pulse beating.[cambridge] 
;डाक्टर कोइ भी नाड़ी स्पन्द महसूस नहीं कर सका
(defrule beat21
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-word ?id1 pulse)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat21   "  ?id "  -  )" crlf)
))

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 1-Feb-2014
;The hummingbird beats its wings at great speed.[cambridge] 
;मर्मर पक्षी बहुत तेज गती से अपने पंख फड़फड़ाता है
(defrule beat22
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?kri ?obj)
(id-root ?obj wing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PadZaPadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat22   "  ?id "  PadZaPadZA  )" crlf)
))


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 1-Feb-2014
;He beat out all the top competitors in his sport.[cambridge]
;उन्होंने अपने खेल में सभी शीर्ष प्रतियोगियों को हराया.
(defrule beat23
(declare (salience 5500));salience kept higher than rule8
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
;(kriyA-in_saMbanXI ?id ?id1);these 2 lines can be uncommented if any conflict is found
;(id-root ?id1 election|round|game|war|competition|sport) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat23   "  ?id "  harA  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " beat.clp 	beat23   "  ?id " ko )" crlf)
)
)

;The rule beat0 can be removed as "beat off/ sb off" is a phrasal verb.(Meena:20.12.08) 
;She beat off her attacker by hitting him with her handbag.
;This rule need to be change. (suggested by Chaitanya Sir)
(defrule beat0
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bacAva_meM_saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beat.clp	beat0  "  ?id "  " ?id1 "  bacAva_meM_saPala_ho  )" crlf))
)
;The beggar beat off the children who attacked him.
;BiKArI baccoM ke prahAra se (apane bacAva meM)saPala ho gayA




;The rule beat1 can be removed as "beat sb up" is a phrasal verb.(Meena:20.12.08) 
(defrule beat1
(declare (salience 4900))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beat.clp	beat1  "  ?id "  " ?id1 "  mAra  )" crlf))
)

;pulisa aparAXI ko mArawI hE







; The rule beat2 can be removed as beat "sth back / sb back" is a phrasal verb.(Meena:20.12.08) 
(defrule beat2
(declare (salience 4800))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_AGAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beat.clp	beat2  "  ?id "  " ?id1 "  pICe_AGAwa_kara  )" crlf))
)




;commented by Garima Singh(M.Tech-C.S) 25-Nov-2013
;The condition specified in this rule is not sufficient as the two relations specified can also be found in many other sentences conveying different senses.Ex: Simon always beats me at tennis.
;Added by Meena(1.4.10)
;Ram is beating a boy.
;(defrule beat3
;(declare (salience 4700))
;(id-root ?id beat)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject ?id ?id1)
;(kriyA-object ?id ?id2)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id pIta))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp      beat3   "  ?id "  pIta )" crlf))
;)




;Commented by Garima Singh(M.Tech-C.S)25-nov-2013
;The condition specified in this rule is not sufficient as kriya -subject relation can be found in other sentences also where the meaning of  word 'beat' is different from 'harA'.Ex: Ram is beating a boy.
;Also, this rule will not work even if salience is reduced to differ it from above rule .Ex: Somebody was beating at the door.
;Modified  by Meena(1.4.10)
;Added  by Meena(30.3.10)
;I have never yet been beaten , said he . 
;Our team was easily beaten in the competition . 
;(defrule beat4
;(declare (salience 4000))
;(id-root ?id beat)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject ?id ?id1) 
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id harA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp      beat4   "  ?id "  harA )" crlf))
;)




;$$$ Modified by Garima Singh(M.Tech-C.S)25-nov-2013
;My heart missed a beat when she said, "Yes, I'll marry you".[cambridge]
;मेरे दिल की धड़कन मानों रुक गयी, जब उसने कहा “हाँ मैं तुमसे शादी करूंगी.
(defrule beat5
(declare (salience 4600))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or (and(kriyA-object  ?kri ?id)(kriyA-subject  ?kri ?id1))
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
)
(id-word ?id1 heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xadakana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat5   "  ?id "  Xadakana )" crlf))
)




(defrule beat6
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 heart)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xadaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat6   "  ?id "  Xadaka )" crlf))
)




;Hailstorms beat against the windows. [cambridge]
(defrule beat7
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) against)
;(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat7   "  ?id "  takarA )" crlf))
)




;***************************DEFAULT RULES*************************************

;@@@ Added by Garima Singh(M.Tech-C.S) 25-nov-2013
;Ram is beating a boy.[old]
;राम एक बच्चे को मार रहा है
(defrule beat13
(declare (salience 0))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat13   "  ?id "  pIta )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S) 25-nov-2013
;Make sure you play on the beat .[cambridge]
;याद रखना कि तुम धुन के अनुसार बजाओ  .
;He tapped his foot to the beat of the music.[cambridge]
;संगीत की धुन पर उसने पांव थपथपाये.
(defrule beat14
(declare (salience 0))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xuna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat14   "  ?id "  Xuna )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 25-nov-2013
;I'm beat - I'm going to bed.
;मैं बहुत थक गया हूँ-सोने जा रहा हूँ.
;You've been working too hard, you look dead beat.
;तुम बहुत ज्यादा मेहनत कर रहें हो, बहुत थके हुए लगते हो.
(defrule beat15
(declare (salience 0))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_WakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat15   "  ?id "  bahuwa_WakA_huA )" crlf))
)


;**************************EXAMPLES*******************************************


;Somebody was beating at the door.[oald]
;Hailstones beat against the window.[oald]
;Someone was beating a drum.[oald]
;She was beating dust out of the carpet.[oald]
;At that time children were regularly beaten for quite minor offences .[oald]
;An elderly man was found beaten to death.[oald]
;The prisoners were beaten into submission.[oald]
;They beat him unconscious.[oald]
;Simon always beats me at tennis.[cambridge]
;He beat me at chess.[oald]
;Holland beat Belgium by 3-1.[cambridge]
;Our team was comfortably beaten in the first round of the competition.[cambridge]
;The nationalists were narrowly beaten in the local election.[cambridge]
;He beat me fair and square .[cambridge]
;They were beaten hands down by their opponents.[cambridge]
;She has beaten her own record of three minutes ten seconds.[cambridge]
;He beat out all the top competitors in his sport.[cambridge]
;The government's main aim is to beat inflation.[oald]
;a problem that beats even the experts.[oald]
;It beats me why he did it.[oald]
;What beats me is how it was done so quickly.[oald]
;They saw him beating his dog with a stick.[cambridge]
;The child had been brutally/savagely beaten.[cambridge]
;She was beaten to death .[cambridge]
;He was beaten senseless .[cambridge]
;Beat the drum .[cambridge]
;The rain was beating down incessantly on the tin roof.[cambridge]
;To make an omelette you must first beat the eggs.[cambridge]
;The doctor could feel no pulse beating.[cambridge]
;Her heart started to beat faster.[cambridge]
;The hummingbird beats its wings at great speed.[cambridge]
;I'm beat - I'm going to bed.[cambridge]
;You've been working too hard, you look dead beat.[cambridge]
;I put my head on his chest but I could feel no heart beat.[cambridge]
;My heart missed a beat when she said, "Yes, I'll marry you".[cambridge]
;The guitar comes in on the third beat.[cambridge]
;Make sure you play on the beat .[cambridge]
;He tapped his foot to the beat of the music.[cambridge]
;Bob has worked as an officer on this particular beat for 20 years.[cambridge]
;More police officers out on the beat may help to cut crime.[oald]
;Nothing beats home cooking.[oald]
;You can't beat Italian shoes.[oald]
;If we go early we should beat the traffic.[oald]
;We were up and off early to beat the heat.[oald]
;She's alive—her heart is still beating.[oald]
;We heard the drums beating.[oald]
;The bird was beating its wing.[oald]

;**************************NOTES**********************************************


;The rules beat3, beat4,beat5 and beat6 ,beat7 were modified by Meena on 20.12.08.

                                                                                             
;default_sense && category=verb	harA	0
;"beat","V","1.harAnA"
;Agassi beat Becker in a tennis match.
;--"2.vAra_karanA"
;Thugs beat him up when he walking down the street late at night.
;--"3.KataKatAnA"
;He kept on beating on the door but no one opened it.
;--"4.XadZakanA"
;Her heart was beating fast.
;--"5.takarAnA"
;Hailstorms beat against the windows. 
;--"6.wadZapAnA"
;The sun was beating down on us
;--"7.PeMtanA"
;I beat the egg whites to make omelette.
;--"8.pItanA"
;She beat her breast out of emotion.
;
;LEVEL 
;
;
;"beat" 
;
;"beat","N","1.XadZakana"
;He could feel the beat of her heart.
;vaha usakI XadZakane mahasUsa kara sakawA WA.
;               <---XadZakana kI wAla <---wAla
;--"2.wAla"
;He heard the beat of a drum.
;usane Dolaka kI wAla sunI.
;
;"beat","V","1.harAnA"
;Agassi beat Becker in a tennis match.
;agAsI ne bekara ko eka tenisa mEca meM harA xiyA  <---harAnA<---- harA kara mAranA <--mAranA
;
;--"2.vAra_karanA"
;Thugs beat him up when he was walking down the street late at night.
;jaba xera rAwa vaha akele sadZaka para jA rahA WA wo TagoM ne usa para vAra kiyA 
;<----vAra_karanA <---mAranA
;
;--"3.KataKatAnA"
;He kept on beating on the door but no one opened it.
;vaha xaravAjZe ko KataKatAwA rahA para kisI ne xaravAjZA nahIM KolA.
;
;--"4.XadZakanA"
;Her heart was beating fast.
;usa xila bahuwa jZora se XadZaka rahA WA.
;
;--"5.takarAnA"
;Hailstorms beat against the windows.
;ole KidZakI se takarA rahe We.
;
;--"6.Ahawa_karanA"
;The sun was beating down on us.
;sUraja hameM Ahawa_kara rahA hE(apanI garamI se).
;
;--"7.PeMtanA"
;I beat the egg whites to make omelette.
;mEM OYmaleta banAne ke liye aMde ke saPexa hisse ko PeMtawI hUz.
;
;--"8.pItanA"
;She beat her breast out of emotion.
;vaha BAvukawA meM apanI CAwI pIta rahI WI.
;
;--"9.PadZaPadZanA"
;The injured bird started to beat its wings soon enough.
;cota KAyI cidZiyA jalxI hI apane paMKa PadZaPadZAne lagI.
;
;------------------------------------------------------------------
;
;sUwra : mAra`[PeMtanA]
;------------
;
;vyAKyA :-
;
;  upariliKiwa koSasWa vAkyoM ke AXAra para arWa-viswAra ke boXaka arWa-saMGaTaka waWya--
;-- saBI vAkyoM meM mAra (mArane)kA arWa sAmAnya hE . 
;-- mAra Sabxa se hI anya sanxarBagawa SabxoM ko samaJA jA sakawA hE . 
;-- isa Sabxa kA arWa-viswAra isa prakAra samaJa sakawe hEM-
;                mAra`{0}
;                 |
;     -------------------------------------------------------- 
;     |          |              |         |          |       |
;    pItanA      KataKatakAnA      XadakanA     wadapAnA     takarAnA   wAla
;     |
;  --------------
;  |            |
;vAra_karanA     PeMtanA
;  |
;harAnA        
; 
;-- sampUrNa arWa-viswAra isI waraha hinxI meM BI howA hE . eka PeMtanA ko alaga se 
;samaJA jA sakawA hE . 
;-- pItane ke kqwya meM bAra-bAra eka kArya ko karane kA sanxarBa xeKA yA samaJA 
;jAwA hE (kisI eka sAXana viSeRa xvArA). PeMtane meM BI bAra-bAra GumAnA yA upara
;nIce karane (kisI eka sAXana viSeRa xvArA)ke sanxarBa se arWa-sAmya samaJA 
;jA sakawA hE . 
;-- anya arWoM ko sAmAnyawaH mAranA kriyA-viSeRa ke rUpa meM xeKa va samaJa sakawe hE .  
;mAra kriyA ke xvArA iwara prasaMgoM kA ulleKa anya BARAoM meM Ama hE . 
;
