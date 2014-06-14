;FILE MODIFIED BY MEENA (26.8.09)

(defrule pick0
(declare (salience 5000))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 WodZA_sA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick0  "  ?id "  " ?id1 "  WodZA_sA_le  )" crlf))
)

;She din't like the food so just picked at on her plate.
;use Bojana pasaMxa nahIM AyA isalie usane apanI WAlI meM WodZA sA liyA
(defrule pick1
(declare (salience 4900))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 eka_ke_bAxa_eka_mArawe_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick1  "  ?id "  " ?id1 "  eka_ke_bAxa_eka_mArawe_jA  )" crlf))
)

;He picked off the enemy as they were going to attack him.
;jEse hI xuSmana ne usapara AkramaNa kiyA,vaha unheM eka ke bAxa eka mArawA gayA
(defrule pick2
(declare (salience 4800))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nArAjZa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick2  "  ?id "  " ?id1 "  nArAjZa_ho  )" crlf))
)

;As i met with her for giving an explanation-she picked on me like anything.
;jEse hI mEM use saPAI xene pahuzcA, vaha burI waraha nArAjZa ho gaI




;Modified by Meena(25.1.11) ;added the list of human relations
;;A mother can picked out her child in a crowd.
;eka mAz apane bacce ko BIdZa meM BI pahacAna lewI hE
(defrule pick3
(declare (salience 4700))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-root ?id2 son|brother|sister|daughter|husband|wife|father|mother|uncle|aunt)
(kriyA-object ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahacAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick3  "  ?id "  " ?id1 "  pahacAna_le  )" crlf))
)



;Modified by Meena(25.1.11); commented (kriyA-for_saMbanXI  ?id ?id2)
;Added by Meena on 26.8.09
;We picked out some beautiful flowers for her.
;We picked some beautiful flowers out for her.
;We picked them out for her.
(defrule pick4
(declare (salience 4700))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
;(kriyA-for_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cuna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick4  "  ?id "  " ?id1 "  cuna_le  )" crlf))
)




;$$$ Modified by Sonam Gupta MTech IT Banasthali  29-1-2014
;Please pick up that book.
(defrule pick5
(declare (salience 4600))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick5  "  ?id "  " ?id1 "  uTA  )" crlf))
)




(defrule pick6
(declare (salience 4300))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pick.clp 	pick6   "  ?id "  cuna_le )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-12-2013
;So he went and picked up the dead rat. [Gyannidhi]
;आगे बढ़ कर उसने वह मरा हुआ चूहा उठा लिया।
(defrule pick7
(declare (salience 4400))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root =(+ ?id 1) up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) uTA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp  pick7  "  ?id "  " (+ ?id 1) "  uTA_le  )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 29-1-2014
;You'll have to let the glue dry and then you can pick it off. [Cambridge]
;आपको गोंद को सूखने देना होगा और फिर आप इसे हटा सकते हैं .
(defrule pick8
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id2 pronoun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hatA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp  pick8  "  ?id "  " ?id1 "  hatA_le  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 29-1-2014
;We've got tea, coffee, or hot chocolate - take your pick. [Cambridge]
;हमारे पास चाय, कोफी या गरम चोकलेट है - अपना चयन कीजिये .
(defrule pick9
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cayana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pick.clp 	pick9   "  ?id "  cayana )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 29-1-2014
;Business is really starting to pick up now. [Cambridge]
;व्यापार अब सच में तरक्की कर रहा है .
(defrule pick10
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
(kriyA-kriyArWa_kriyA  ?id2 ?id)
(id-root ?id2 start|begin)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 warakkI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp  pick10  "  ?id "  " ?id1 "  warakkI_kara  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 29-1-2014
;He hadn't done any skiing before the holiday, but he picked it up really quickly. [Cambridge]
;उसने छुट्टियों में स्कीँग नहीं की थी, लेकिन उसने जल्दी सीखा .
(defrule pick11
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 it)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp  pick11  "  ?id "  " ?id1 "  sIKa  )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 29-1-2014
;Antennas around the top of the ship picked up the radar signals. [Cambridge]
;जहाज के चारों ओर लगे एन्टीना ने रडार सिग्नल पकङे .
(defrule pick12
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 signal)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pakafa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp  pick12  "  ?id "  " ?id1 "  pakafa  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 29-1-2014
;The dogs picked the bones clean. [MW]
;कुत्तों ने हड्डियाँ चाट कर साफ कर दीं. 
(defrule pick13
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?noun)
(object-object_samAnAXikaraNa  ?noun ?id1)
(id-root ?id1 clean)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pick.clp 	pick13   "  ?id "  cAta )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 29-1-2014
;The dogs picked the bones clean. [MW]
;कुत्तों ने हड्डियाँ चाट कर साफ कर दीं. 
(defrule pick14
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 meat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pick.clp 	pick14   "  ?id "  nikAla_le )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-1-2014
;Never pick a fight you can't win.   [MW]
;कभी भी एसी लङाई मत मोल लो जहाँ तुम जीत नहीँ सकते. 
(defrule pick16
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 fight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mola_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pick.clp 	pick16   "  ?id "  mola_le )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 29-1-2014
;She picked at a salad while I ate my steak.    [MW]
;उसने सलाद खाया जबकि मैं माँस खाया. 
(defrule pick17
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pick.clp 	pick17   "  ?id "  KA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
;Now let us consider the motion of a car that starts from rest at time t 0 s from the origin O and picks 
;up speed till t 10 s and thereafter moves with uniform speed till t 18 s. [ncert]
;अब हम उस कार की गति पर विचार करेङ्गे जो मूल बिन्दु O से t = 0 s पर विरामावस्था से चलना प्रारम्भ करती है इसकी चाल उत्तरोत्तर t = 10 s तक बढती जाती है 
;इसके बाद वह t = 18 s तक एकसमान चाल से चलती है  
(defrule pick18
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id1 up)
(id-root ?id2 speed)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp  pick18  "  ?id "  " ?id1 "  baDZa  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
;He was sitting at the table, picking his teeth with a toothpick. [M-W]
;वह मेज़ पर बैठा था, अपने दाँत कुरेदता हुआ .
(defrule pick19
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 tooth|nose|ear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kurexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pick.clp 	pick19   "  ?id "  kurexa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
;She was strumming and picking her guitar. [M-W]
;translation needed
(defrule pick20
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object  ?id ?id1)(and(conjunction-components  ? ?verb ?id)(kriyA-object  ?verb ?id1)))
(id-root ?id1 guitar|banjo)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pick.clp 	pick20   "  ?id "  bajA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
;He used a knife to pick the lock on the front door. [M-W]
;उसने मुख्यद्वार का ताला खोलने के लिये चाकू का प्रयोग किया .
(defrule pick21
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 lock|bolt)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pick.clp 	pick21   "  ?id "  Kola )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
;You can expect political analysts to pick apart the governor's speech.  [M-W]
;आप किसी राजनैतिक विश्लेषक से उम्मीद कर सकते हैं राज्पाल के भाषण के छिद्रान्वेषण करने के लिये .
;उसने सलाद खाया जबकि मैं माँस खाया. 
(defrule pick22
(declare (salience 5500))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 apart)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CixrAnveRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp  pick22  "  ?id "  " ?id1 "  CixrAnveRaNa_kara  )" crlf))
)

;default_sense && category=verb	cuna le	0
;"pick","V","1.cuna lenA"
;She picked up the most beautiful dress.
;--"2.wodanA"
;He picked the red roses from the plant.
;--"3.sAPZa karanA"
;Please Pick the hair on the floor.
;--"4.kisI nukIlI vaswu se wAlA KolanA"
;The burglars picked the lock of strong room. 
;
;
