;@@@ Added by Anita-3.12.2013
;Would all those in favour please raise their hands? [cambridge Dictionary]
;जो पक्ष में हों कृपया अपने हाथ उठाएं ।
;He raised the window and leaned out. [cambridge Dictionary]
;उसने खड़की उठाई और बाहर झुका ।
(defrule raise1
(declare (salience 4975))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise1   "  ?id "  Upara_uTA )" crlf))
)
;@@@ Added by Anita-3.12.2013
;Mary Quant was the first fashion designer to raise hemlines. [cambridge Dictionary]
;मैरी क्वॉन्ट पहली ऐसी फैशन डिज़ाइनर थीं जिन्होंने पोशाक के निचले किनारों को ऊँचा किया ।
(defrule raise2
(declare (salience 5000))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ? ?id)
;(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UZcA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise2   "  ?id "  UZcA_kara )" crlf))
)
;@@@ Added by Anita-3.12.2013
;Her answers raised doubts in my mind. [cambridge Dictionary]
;उसके जवाबों ने मेरे दिमाग में कई शंकाएं पैदा कीं ।
(defrule raise3
(declare (salience 4985))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 mind)
(kriyA-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise3   "  ?id " pExA_kara )" crlf))
)
;@@@ Added by Anita-3.12.2013
;The announcement raised a cheer. 
;इस चर्चा से हर्ष की लहर उठी ।
;Discussion has raised many important issues.  
;इस चर्चा से कई महत्वपूर्ण मुद्दे उठते हैं ।
(defrule raise4
(declare (salience 4985))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 question|cheer|issue)
(or(kriyA-object  ?id ?id1)(kriyA-kriyA_viSeRaNa  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise4   "  ?id "  uTa )" crlf))
)

;+++ Re-modified by Sukhada 2/4/14
;@@@ Added by Anita-3.12.2013
;I want to start my own business if I can raise the money. [cambridge Dictionary]
;अगर मैं धन इकट्ठा कर सकूँ तो मैं अपना निजी धंधा शुरू करना चाहूँगा ।
(defrule raise5
(declare (salience 4980))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj money|fund) ;added by Sukhada 2/4/14
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikatTA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise5   "  ?id "  ikatTA_kara )" crlf))
)
;@@@ Added by Anita-3.12.2013
;The chapel was raised as a memorial to her son. [cambridge Dictionary]
;यह गिरजाघर उसने अपने लड़के की यादगार के रूप में बनवाया ।
(defrule raise6
(declare (salience 4999))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 son|daughter|wife|husband|father|mother)
(or(kriyA-as_saMbanXI  ?id ?)(kriyA-to_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise6   "  ?id "  banavA )" crlf))
)
;@@@ Added by Anita-3.12.2013
;I've been trying to raise Jack all day. [cambridge Dictionary]
;मैं दिन भर से जैक से संपर्क करने की कोशिश कर रहा हूँ ।
(defrule raise7
(declare (salience 4999))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
;(or(kriyA-kriyArWa_kriyA  ? ?id)(to-infinitive  ? ?id))
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id1 PropN|pronoun)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samparka_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise7   "  ?id "  saMparka_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  raise.clp      raise7   "  ?id " ko )" crlf))
)
;@@@ Added by Anita-3.12.2013
;They agreed to raise the trade embargo if three conditions were met. [cambridge Dictionary]
;वे व्यापार प्रतिरोघ समाप्त करने के लिए तैयार हो गए यदि तीन शर्तें मान ली जाती हैं तो  ।
(defrule raise8
(declare (salience 4995))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kriyArWa_kriyA  ? ?id)(to-infinitive  ? ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise8   "  ?id "  samApwa_kara )" crlf))
)
;@@@ Added by Anita-3.12.2013
;After three weeks the siege was raised. [cambridge Dictionary]
;तीन हफ्तों के बाद घेराबंदी हटा ली गई ।
(defrule raise9
(declare (salience 4998))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-karma  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise9   "  ?id "  hatA_le )" crlf))
)
;@@@ Added by Anita-3.12.2013
;I want to raise two problems with you. [cambridge Dictionary]
;मैं आपके सामने दो समस्याएं रखना चाहता हूँ ।
(defrule raise10
(declare (salience 4999))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise10   "  ?id "  raKa )" crlf))
)
;@@@ Added by Anita-13.3.2014
;The dimensions of a physical quantity are the powers or exponents to which the base quantities are raised to represent that quantity. [ncert]
;किसी भौतिक राशि की विमाएँ उन घातों (या घाताङ्कों) को कहते हैं, जिन्हें उस राशि को व्यक्त करने के लिए मूल राशियों पर चढ़ाना ;पड़ता है ।
(defrule raise11
(declare (salience 5100))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise11   "  ?id "  caDZA)" crlf))
)

;@@@ Added by Anita-29.3.2014
;The rule by convention is that the preceding digit is raised by 1 if the insignificant digit to be dropped the underlined digit in ;this case is more than 5 and is left unchanged if the latter is less than 5. [ncert]
;परिपाटी के अनुसार नियम यह है कि यदि उपेक्षणीय अङ्क (पूर्वोक्त सङ्ख्या में अधोरेखाङ्कित अङ्क) 5 से अधिक है तो पूर्ववर्ती अङ्क में एक की वृद्धि कर दी जाती है, और यदि यह उपेक्षणीय अङ्क 5 से कम होता है, तो पूर्ववर्ती अङ्क अपरिवर्तित रखा जाता है।
(defrule raise12
(declare (salience 5200))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise12   "  ?id "  vqxXi_kara)" crlf))
)
;##########################################default-rule############################################


;$$$ Modified by Anita-3.12.2013 changed mng from "vqxXi" to "vewana_vqxXi" 
;She asked the boss for a raise. [cambridge Dictionary]
;उसने अपने प्रमुख से वेतन वृद्धि के लिए कहा ।
(defrule raise0
;(declare (salience 5000))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vewana_vqxXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise0   "  ?id "  vewana_vqxXi )" crlf))
)

;Replaced 'Upara_uTA' with 'uTA' by Shirisha Manju Suggested by Chaitanya Sir (05-09-13)
;This naturally raises the questions like: Is the converse effect possible?
(defrule raise_default_vrule
;(declare (salience 4900))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp     raise_default_vrule   "  ?id "  uTA )" crlf))
)

;"raise","VT","1.pExA_kara"

;Please don't raise a cloud of dust.  
;--"2.KadZA_karanA"    
;Go && raise a fallen child.
;--"3.vqxXi_karanA_/baDZAnA"   
;She raised her offer to Rs.3000.   
;--"4.ekawra_karanA"  
;Why don't you raise funds for charity.  
;--"5.uwpanna_karanA"   
;She told us all her jokes,but she couldn't even raise a smile. 
;--"6.badZA_karanA"   
;My parents died when I was young so I was raised by my aunt. 
;--"7.GqNA_prakata_karanA"   
;There were many raised eyebrows when people saw him handcuffed. 
;--"8.prasanna_honA"    
;My victory in the final raised my spirits.
;--"9.viroXa_karanA"   
;The opposition raised its voice against the women's bill. 
;
;LEVEL 
;
;
;                `raise' sUwra (nibanXa)
;                -------           
;
;`raise' Sabxa ke viviXa prayoga--
;-------------------------   
; 
;"raise","VT","1.Upara_uTAnA"    
;                  ---- < Upara uTAnA`
;Please don't raise a cloud of dust.
;--"2.KadZA_karanA"    
;                  ---- < Upara uTAnA`
;Go && raise a fallen child.
;--"3.vqxXi_karanA_/baDZAnA"
;                  ---- < Upara uTAnA`
;She raised her offer to Rs.3000.
;--"4.ekawra_karanA" 
;                  ---- < eka se aXika karanA < -- vqxXi karanA < -- Upara uTAnA`
;Why don't you raise funds for charity.
;--"5.uwpanna_karanA"
;                  ---- < vqxXi karanA <-- Upara uTAnA`
;She told us all her jokes,but she couldn't even raise a smile.
;--"6.badZA_karanA"   
;                  ---- < Upara uTAnA`
;My parents died when I was young so I was raised by my aunt.
;--"7.GqNA_prakata_karanA" 
;                  ---- < kisI cIja kA Upara uTanA <-- Upara uTAnA`
;There were many raised eyebrows when people saw him handcuffed.
;--"8.uwsAha_baDAnA" 
;                  ---- < uwsAha kI vqxXi karanA <-- Upara uTAnA` 
;My victory in the final raised my spirits.
;--"9.viroXa_karanA"   
;                  ---- < AvAja ko (Upara)uTAnA <-- Upara uTAnA`
;The opposition raised its voice against the women's bill.
;
;"raise (US=rise)","N","1.baDZowarI"
;                  ---- < vqxXi karanA <-- Upara uTAnA`
;Should I ask my boss for a rise/raise?,a five per cent pay rise/raise.
;-------------------------------------------------------------------------
;
;
;sUwra : vqxXi[<Upara_uTAnA`]
;
;----------------
;
;   aMgrejI ke isa Sabxa ke viBinna prayoga hinxI meM xeKe jA sakawe hEM, Upara xiye
;gaye alaga-alaga vAkyoM xvArA . ina saBI vAkyoM meM eka `Upara uTAne kA BAva'
;sAmAnya hEM . hinxI meM BI isa `Upara uTane ke BAva' ke viviXa sanxarBa prayukwa
;hEM . Upara ke vAkyoM xvArA isa waWya ko samaJA jA sakawA hE . tippaNiyoM se
;yaha Ora BI spaRta hE . kuCa ke vivaraNa yahAz xeKawe hEM--
;
;-- `ekawra karanA' . isa waraha ke BAvArWavAle vAkya ke mUla meM Upara uTAne kA BAva hE . 
;Upara uTAnA arWAw vqxXi karanA . vqxXi hone kI samBAvanA ekawriwa karane ke kArya 
;meM nihiwa hE . isa waraha isakA arWa-viswAra samaJA jA sakawA hE . 
;
;-- `GqNA prakata karanA' . isakA BAva kisI SArIrika aBivyakwi ke Upara uTAne se 
;AyA huA hE . jaba koI vyakwi GqNA ke BAva ko prakata karanA cAhawA hE wo vaha BOMhoM
;kA caDAnA avaSya karawA hE . isase yaha arWa-viswAra samaJA jA sakawA hE . 
;
;-- `viroXa karanA' . hinxI meM BI isa prakAra kA prayoga xeKA jA sakawA hE . bahuwa 
;prasaMgoM meM jaba viroXa prakata karane ke BAva ko kahanA howA hE wo `AvAja uTAne'
;yA `AvAja UzcA karane' ke kriyArUpa kA prayoga kiyA jAwA hE .
;
;-- anya prayoga tippaNiyoM se saralawayA sajaJe jA sakawe hEM .  
;
;
