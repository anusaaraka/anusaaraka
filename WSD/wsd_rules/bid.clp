
(defrule bid0
(declare (salience 5000))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bidding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bolI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bid.clp  	bid0   "  ?id "  bolI )" crlf))
)

;"bidding","N","1.bolI"
;The bidding at the stock market was brisk today.
;--"2.AjFA/vinawI"
;At his father's bidding he wrote to the lawyer.
;
;
(defrule bid1
(declare (salience 4900))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bolI_lagA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " bid.clp bid1 " ?id "  bolI_lagA )" crlf)) 
)

(defrule bid2
(declare (salience 4800))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bolI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bid.clp	bid2  "  ?id "  " ?id1 "  bolI_lagA  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;She bid 7 lacs for the painting.[old example]
;उसने पेंटिंग के लिए 7 लाख की बोली लगाई.
(defrule bid5
(declare (salience 4800))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bolI_lagA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid5   "  ?id "  bolI_lagA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " bid.clp 	bid5   "  ?id " kA )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;She made a bid of 7 lacs for the painting.[old example]
;उसने पेंटिंग के लिए 7 लाख की बोली लगाई थी.
(defrule bid6
(declare (salience 4800))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?)
(kriyA-object  ?kri ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bolI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid6   "  ?id "  bolI_lagA )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;A French firm will be bidding for the contract.[oald]
;फ्रांस की कम्पनी ठेके के लिये निविदा पेश करेगी
(defrule bid7
(declare (salience 4850))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
(id-word ?id1 contract)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivixA_peSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid7   "  ?id "  nivixA_peSa_kara )" crlf)
)
)
;note:निविदा is a synonym for tender.आवेदन करना can also be used.
;ex:
;1. सरकार की निविदा की अंतिम तरीख 28 जनवरी तय की है।
;   The government has fixed a tender last Trik January 28.[livehindustan.com]
;2. निविदा पेश करने की अंतिम तारीख बढाकर 28 जनवरी कर दी गई है। [p7news.com]
;   The last date for the tender offer has been extended to January 28.
;3. डेटाविंड के अलावा घरेलू हैंडसेट कंपनी सिमट्रोनिक्स तथा अन्य ने इस आर्डर के लिए निविदा पेश करने में रुचि दिखाई है।[livehindustan.com]
;   Besides Detavind Simtroniks and other domestic handset company to introduce this order have shown interest in the tender.

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;The company submitted a bid for the contract to clean the hospital.[oald]
;कम्पनी ने अस्पताल साफ करने के ठेके के लिये निविदा पेश करी है
(defrule bid8
(declare (salience 4850))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(kriyA-for_saMbanXI  ?kri ?id1)
(id-word ?id1 contract)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivixA_peSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid8   "  ?id "  nivixA_peSa_kara )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;The team is bidding to retain its place in the league.[oald]
;टीम सङ्घ में उसका स्थान बनाए रखने के लिये प्रयास कर रही है . 
(defrule bid9
(declare (salience 4800))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(to-infinitive  =(+ ?id 1) ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid9   "  ?id "  prayAsa_kara )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;A bid for power.[oald]
;शक्ति प्राप्त करने का प्रयास
(defrule bid10
(declare (salience 4800))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-word ?id1 power)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  prApwa_karane_kA_prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp	bid10   "  ?id "  prApwa_karane_kA_prayAsa )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;A desperate bid to escape from his attackers.[oald]
;उसके हमलावरों से बचने के लिए एक हताश कोशिश.
(defrule bid11
(declare (salience 4800))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(kriyA-anaBihiwa_subject  ?kri ?id)
(to-infinitive  =(+ ?id 1) ?kri)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) koSiSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp	bid11   "  ?id "  koSiSa )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;In bidding him farewell, the Advocate-General said, apart from the brilliance of your career on the Bench, you have earned the esteem by your uniform courtesy.[gyananidhi]
;उनको विदाई देते हुए एडवोकेट जनरल ने कहा, पीठ पर शानदार कार्यकाल के अलावा आपने एक समान भद्र व्यवहार, संकोची लोगों की तत्काल प्रशंसा और सतत प्रोत्साहन से वकील समुदाय का सम्मान और स्नेह अर्जित किया है।
(defrule bid12
(declare (salience 4800))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa  ?obj ?id1)
(kriyA-object  ?id ?obj)
(id-word ?id1 farewell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid11   "  ?id "  xe )" crlf))
)


;***********************************DEFAULT RULES********************************

(defrule bid3
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlAma_kI_bolI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid3   "  ?id "  nIlAma_kI_bolI )" crlf))
)

;"bid","N","1.nIlAma_kI_bolI"
;She made a bid of 7 lacs for the painting.
;


(defrule bid4
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlAmI_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid4   "  ?id "  nIlAmI_bola )" crlf)
)
)

;"bid","V","1.[nIlAmI]_bola"

;"bid","VT","1.bolI_bolanA"
;She bid 7 lacs for the painting.
;
;--------------- Removed rules-----------
; bid5  by Garima
;	if category verb then 'bolI_bola'      

