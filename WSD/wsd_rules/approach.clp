
;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)22-jan-2014
;In the latest approach to language teaching direct method is preferred.[old example]
;भाषा शिक्षण की नवीनतम पद्धति में प्रत्यक्ष विधि को पसंद किया जाता है.
(defrule approach1
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
;(viSeRya-to_viSeRaNa  ?id ?id1);commented by Garima Singh 
(viSeRya-to_saMbanXI  ?id ?id1);added by Garima Singh
(id-word ?id1 teaching);added by Garima Singh
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxXawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp    approach1   "  ?id "   paxXawi )" crlf))
)




;--"2.paxXawi"
;In the latest approach to language teaching direct method is preferred.
;--"3.praswAva"
;They have made an approach to the local authorities in this connection.



;Added by Meena(25.02.10)
;Certain phenomena can be approached better by certain techniques.
(defrule approach2
(declare (salience 5000));salience changed by Garima Singh
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 phenomena)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp  approach2   "  ?id "  samaJa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21-jan-2014
;We have been approached by a number of companies that are interested in our product.[oald]
;हमें कई कंपनियों द्वारा संपर्क किया गया है जो हमारे उत्पाद में रुची रखती है
(defrule approach5
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMparka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach5   "  ?id "  saMparka_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21-jan-2014
;I'd like to ask his opinion but I find him difficult to approach .[oald]
;मैं उसकी राय लेना पसन्द करूँगा परन्तु मैं उसको संपर्क करना मुश्किल पाता हूँ .
(defrule approach6
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ? ?id)
(kriyA-subject  ?id ?sub)
(id-word ?sub he|she|him|her)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMparka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach6   "  ?id "  saMparka_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21-jan-2014
;She approached the bank for a loan.[oald]
;उसने ऋण के लिये बैंक से संपर्क किया
(defrule approach7
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?) 
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMparka_kara))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach7   "  ?id "  saMparka_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  approach.clp      approach7   "  ?id " se )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21-jan-2014
;What's the best way of approaching this problem?[oald]
;इस समस्या को सुलझाने का सर्वोत्तम तरीका क्या है? 
(defrule approach8
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj problem|task)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sulaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach8   "  ?id "  sulaJA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-jan-2014
;All three teams adopted different approaches to the problem.[gyananidhi]
;तीनो टीमों ने समस्या को हल करने के लिये अलग तरीके अपनाए . 
(defrule approach9
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri adopt|follow|take)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach9   "  ?id "  warIkA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-jan-2014
;She resented his persistent approaches.[oald]
;उसने उसके लगातार प्रयासो को नापसंद किया
(defrule approach10
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(id-root ?kri resent)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach10   "  ?id "  prayAsa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-jan-2014
;She hadn't heard his approach and jumped as the door opened.[oald]
;उसने उसके आने की आवाज नहीं सुनी थी और दरवाजा खुलते ही वह कूद पड़ी
(defrule approach11
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri hear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ane_kI_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach11   "  ?id "  Ane_kI_AvAja )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-jan-2014
;All the approaches to the palace were guarded by troops.[oald]
;महल के सभी रास्तो की सैनिक दलों द्वारा रखवाली की गयीं थीं . 
(defrule approach12
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-to_saMbanXI  ?id ?id1)
(id-word ?id1 palace|fort)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAswA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach12   "  ?id "  rAswA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 23-jan-2014
;As you approach the town, you'll see the college on the left.[oald]
;जब आप नगर पहुँचेंगे, आप बाँयी तरफ पर कालेज को देखेंगे . 
(defrule approach13
(declare (salience 4000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach13   "  ?id "  pAsa_pahuzca )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 23-jan-2014
;They have made an approach to the local authorities in this connection.
;The club has made an approach to a local company for sponsorship.
(defrule approach14
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(kriyA-to_saMbanXI  ?kri ?id1)
(id-word ?kri made)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMparka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach14   "  ?id " saMparka_kara)"  crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 23-jan-2014
;The approach of spring.[oald]
;बसंत ऋतु का आगमन
(defrule approach15
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 spring|autumn|summer|winter|monsoon)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Agamana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach15   "  ?id " Agamana)"  crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 23-jan-2014
;They felt apprehensive about the approach of war.[oald]
;वह युद्ध के प्रारम्भ के बारे में आशङ्कित थे. 
(defrule approach16
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 war)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAramBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach16   "  ?id " prAramBa)"  crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 23-jan-2014
;Few writers approach his richness of language.[oald]
;थोड़े लेखक ही उसकी जैसी समृद्ध भाषा का प्रयोग कर पाते है
(defrule approach17
(declare (salience 5000))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
;(id-word ?id2 language);uncomment this line if any conflict is found
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayoga_kara_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach17   "  ?id " prayoga_kara_pA)"  crlf)
)
)


;************************DEFAULT RULES********************************

(defrule approach3
(declare (salience 0))
;(declare (salience 100));salience changed by Garima Singh
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach3   "  ?id "  pAsa_A )" crlf))
)

;"approach","VTI","1.pAsa_AnA"
;Can anyone approach an uncaged lion?
;No singer could approach Mohan's && Rafi's high range quality.
;--"2.pahuzcanA"
;We should seriously consider how to approach the problem before we make any definite plans.
;


(defrule approach0
(declare (salience 100));salience changed by Garima Singh
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach0   "  ?id "  pahuzca )" crlf))
)

;"approach","N","1.pahuzca/nikatawA"
;Quick transportation  has  enabled  us  an  easy  approach to the remote parts of the world.
;Ravi has an easy approach to The Minister.

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21-jan-2014
;We heard the sound of an approaching car.
;हमने पास आती हुई गाड़ी कि आवाज सुनी
(defrule approach4
(declare (salience 0))
(id-root ?id approach)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approach.clp 	approach4   "  ?id "  pAsa_A )" crlf))
)
