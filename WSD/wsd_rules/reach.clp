
(defrule reach1
(declare (salience 5000))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mez_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " reach.clp	reach1  "  ?id "  " ?id1 "  mez_jA  )" crlf))
)

(defrule reach2
(declare (salience 4800))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 waka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " reach.clp	reach2  "  ?id "  " ?id1 "  waka_jA  )" crlf))
)

;$$$ Modified by Anita--22.2.2014
;The two sides failed to reach agreement. [By Mail]
;दोनों पक्ष समझौते तक पहुँचने में असफल रहे ।
(defrule reach3
(declare (salience 4750))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ? ?id);Added this relation by Anita
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach3   "  ?id "  pahuzca )" crlf))
)

;"reach","N","1.pahuzca"
;The rice bag is out of my reach. 
;That job is within my reach.
;
;Modified by Meena(9.11.10)
;Passion is a must to reach your potential.
;Passion is a must to excel and to reach your potential.
(defrule reach4
(declare (salience 4200))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(assert (kriyA_id-object_viBakwi ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach4   "  ?id "  pahuzca )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reach.clp     reach4   "  ?id " waka )" crlf)
)
)

;"reach","VI","1.pahuzcanA"
;Did any news reach your ears? 
;The continous stretch of river Ganga reaches up to the West Bengal.  
;--"2.Age_baDZAnA"
;He reached out his hand for the book but it was too far away.
;--"3.PElA_honA"
;My school reaches as far as the railway line. 
;
(defrule reach5
(declare (salience 4100))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_2 ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzcA))
(assert (kriyA_id-object_viBakwi ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach5   "  ?id "  pahuzcA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reach.clp     reach5   "  ?id " waka )" crlf)
)
)

;$$$ Modified by Anita-10.12.2013
;News of his accident had only just reached us.  [cambridge dictionary]
;उसकी दुर्घटना की खबर हम तक अभी पहुँची ।
(defrule reach6
(declare (salience 4000))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?) ; Added relation by Anita-10.12.2013
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(assert (kriyA_id-object_viBakwi ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach6   "  ?id "  pahuzca )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reach.clp     reach6   "  ?id " waka )" crlf)
)
)
;@@@ Added by Anita-10.12.2013
;We'll inform you when a decision has been reached. [cambridge dictionary]
;निष्कर्ष पर पहुँचते ही हम तुम्हें खबर कर देंगे ।
(defrule reach7
(declare (salience 4500))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuZcawe_hI))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach7   "  ?id "  pahuZcawe_hI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reach.clp     reach7   "  ?id " para )" crlf)
)
)
;@@@ Added by Anita-10.12.2013
;He reached for the phone and knocked over a glass. [cambridge dictionary]
;उसने फोन की ओर  हाथ बढ़ाया और गिलास को गिरा दिया ।
(defrule reach8
(declare (salience 4650))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAWa_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach8   "  ?id "  hAWa_baDZA )" crlf))
)
;@@@ Added by Anita-10.12.2013
;The child reached down/out/over and picked up the kitten. [cambridge dictionary]
;बच्चे ने नीचे हाथ बढ़ाया और बिल्ली के बच्चे को उठा लिया ।
;The new mayor is reaching out to the local community to involve them in his plans for the city. [cambridge dictionary]
;नए मेयर  शहर के लिए अपनी योजना में स्थानीय समुदाय को शामिल करने के लिए हाथ बढ़ा रहे हैं ।
;She set up her charity to reach out to the thousands of homeless on the streets.
;उसने सड़कों के हज़ारों बेघरों की ओर हाथ बढ़ाने के लिए एक परोपकार संस्थान की स्थापना की ।
(defrule reach9
(declare (salience 4700))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 down|out|over)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAWa_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  reach.clp       reach9   "  ?id " " ?id1"  hAWa_baDZA)" crlf))
)
;@@@ Added by Anita-10.12.2013
;He reached his hand out for the money. [cambridge dictionary]
;उसने पैसों के लिए अपना हाथ बढ़ाया ।
(defrule reach10
(declare (salience 4850))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 out)
(id-root ?id2 money)
(or(kriyA-for_saMbanXI  ?id ?id2)(kriyA-upasarga  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng    " ?*wsd_dir* "  reach.clp 	reach10   " ?id " "?id1"  baDZA )" crlf))
)
;@@@ Added by Anita-10.12.2013
;Can you reach me down that book? [cambridge dictionary]
;क्या तुम वह किताब मेरी तरफ बढ़ा सकते हो ?
(defrule reach11
(declare (salience 4950))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 book)
(kriyA-kqxanwa_karma  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng    " ?*wsd_dir* "  reach.clp 	reach11   " ?id " "?id1"  baDZA )" crlf))
)

;@@@ Added by Anita-10.12.2013
;I've been trying to reach you on the phone all day. [cambridge dictionary]
;मैं सारे दिन तुमसे फोन द्वारा संपर्क करने की कोशिश कर रहा हूँ ।
(defrule reach12
(declare (salience 4970))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 phone|email)
(kriyA-on_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMparka_kara))
(assert (kriyA_id-object_viBakwi  ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach12   "  ?id ?id1"  saMparka_kara )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reach.clp     reach12   "  ?id " kA )" crlf)
)
;@@@ Added by Anita-10.12.2013
;He's a strange child and his teachers find it difficult to reach him. [cambridge dictionary]
;वह एक अजीब बच्चा है और उसके शिक्षकों को उसे समझने-समझाने में कठिनाई होती है ।
(defrule reach13
(declare (salience 4980))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJane_samaJAne_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach13   "  ?id "  samaJane_samaJAne )" crlf))
)

;@@@ Added by Anita-10.12.2013
;The expedition set out for the upper reaches of the Amazon. [cambridge dictionary]
;अभियान एमेज़ोन के ऊपरी विस्तार के लिए निकल पड़ा ।
;There was little snow on the lower reaches of the ski run. [cambridge dictionary]
;स्की मार्ग के निचले विस्तार पर बिल्कुल बर्फ नहीं थी ।
;We know very little about the farthest/outermost reaches of the universe. [cambridge dictionary]
;हम ब्रमांड के दूरतम विस्तार के बारे में बहुत कम जानते हैं ।
(defrule reach14
(declare (salience 4990))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach14   "  ?id "  viswAra )" crlf))
)

;@@@ Added by Anita-10.12.2013
;The news has shocked the upper reaches of the government. [cambridge dictionary]
;इस खबर ने सरकार के ऊपरी स्तर को दहला दिया ।
(defrule reach15
(declare (salience 5010))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 government)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  swara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach15   "  ?id "  swara )" crlf))
)

;@@@ Added by Anita-22.2.2014
;For example a stone and a feather dropped from the same height do not reach the ground at the same ;time. [www-data-by mail]
;उदाहरण के लिए, किसी पत्थर तथा पङ्ख को समान ऊँचाई से एक साथ गिराने पर वे एक साथ पृथ्वी पर नहीं गिरते ।
(defrule reach16
(declare (salience 5020))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(assert (kriyA_id-object_viBakwi  ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach16   "  ?id "  gira )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reach.clp     reach16   "  ?id " para )" crlf)
)


;#####################################default-rule#####################################
;$$$ Removed conditions "(or(id-cat_coarse =(+ ?id 1) PropN)(id-word =(+ ?id 1) there|here));(kriyA-object ?id ?)" by Anita 14-12-13
;We will not reach Miami till five or six o'clock. [cambridge dictionary]
;हम मयामी पाँच या छः बजे के पहले नहीं पहुँचेंगे ।
;Modified by Meena(9.11.10)
;My car broke down when I reached Lalitpur.
(defrule reach0
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach0   "  ?id "  pahuzca )" crlf)
)
)

;"reach","VT","1.pahuzcAnA"
;Could you reach me that book from the table.
;
;LEVEL 
;Headword : reach
;
;Examples --
;
;"reach","VI","1.pahuzcanA"
;Did any news reach your ears?
;kyA wuma waka koI samAcAra pahuzcA ?
;The continous stretch of river Ganga reaches up to the West Bengal.
;gaMgA naxI kA niranwara pravAha paScima baMgAla waka pahuzcawA hE.
;--"2.baDZAnA"
;He reached across the table for the pen.
;usane pena ke liye tebala ke pAra hAWa baDZAyA. 
;He reached out his hand for the book but it was too far away.
;kiwAba ke liye usane apanA hAWa Age baDZAyA para vaha bahuwa xUra WI.
;--"3.PElA_honA"
;My school reaches as far as the railway line.
;merA skUla relave lAina waka PElA huA hE.
;
;Could you reach me that book from the table.
;kyA wuma mejZa para (raKI) vaha kiwAba muJa waka pahuzcA xoge.  
;
;"reach","N","1.pahuzca"
;The rice bag is out of my reach.
;cAvala kA WElA merI pahuzca ke bAhara hE.
;That job is within my reach.
;vaha nOkarI merI pahuzca ke anxara hE.
;
;ukwa uxAharaNoM se 'reach' Sabxa kA mUla arWa 'pahuzca' A rahA hE jo saMjFA Ora
;kriyA arWoM meM samAna hE. kriyA prayoga meM 'baDZAnA' Ora 'PElAnA' xo 
;arWa Ora BI A rahe hEM. 'pahuzca' eka binxu se xUsare binxu waka howI hE. eka 
;se xUsare binxu waka ke 'PElAva' se 'PElAnA' arWa AwA hE. eka binxu para
;KadZe hokara xUsare binxu waka pahuzcane ke liye baDZane se 'baDZAnA' arWa BI yahAz
;SAmila ho jAwA hE.
;
;awaH isakA anwarnihiwa sUwra kuCa Ese mAnA jA sakawA hE --
;
;anwarnihiwa sUwra ;
;
;pahuzca, pahuzcA -baDZAnA -PElA_huA
;
;sUwra : pahuzca`[>PElA_huA]
;
