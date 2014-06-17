
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-jan-2014
;The baby had been abandoned by its mother.[oald]
;शिशु उसकी माँ के द्वारा छोड दिया गया था . 
(defrule abandon2
(declare (salience 4000)) 
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon2   "  ?id "  CodZa_xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-jan-2014
;People often simply abandon their pets when they go abroad.[oald]
;लोग अक्सर बड़ी आसानी से उनके पालतू जानवर छोड़ देते हैं जब वे विदेश जाते हैं . 
(defrule abandon3
(declare (salience 4000)) 
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon3   "  ?id "  CodZa_xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-jan-2014
;The study showed a deep fear among the elderly of being abandoned to the care of strangers.[oald]
;अध्ययन ने बुजुर्गो के बीच अजनबी की देखभाल में छोड़ दिये जाने का एक गहरा भय दिखाया . 
(defrule abandon4
(declare (salience 4000)) 
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-of_saMbanXI  ?id2 ?id) ;uncomment this line if any conflicting example is found.
(kriyA-to_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon4   "  ?id "  CodZa_xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-jan-2014
;Snow forced many drivers to abandon their vehicles.[oald]
;बरफ के कारण बहुत सारे चालको को उनके वाहन छोडने पड़े . 
;He gave the order to abandon ship.
;उसने जहाज छोड़ने का ओर्डर दिया . 
(defrule abandon5
(declare (salience 4000)) 
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(to-infinitive  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon5   "  ?id "  CodZa )" crlf))
)
;conflicting example:We had to abandon any further attempt at negotiation.so a new rule is added below.

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-jan-2014
;We had to abandon any further attempt at negotiation.[oald]
;हमें मोल तोल के और अधिक प्रयास को बन्द करना पडा . 
(defrule abandon6
(declare (salience 4000))
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj attempt)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon6   "  ?id "  banxa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  abandon.clp      abandon6   "  ?id " ko )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-jan-2014
;The country abandoned its political leaders after the war.[oald]
;देश ने युद्ध के बाद उसके राजनैतिक नेताओं को समर्थन देना बन्द किर दिया . 
(defrule abandon7
(declare (salience 4000)) 
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj leader)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWana_xenA_banxa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon7   "  ?id "  samarWana_xenA_banxa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  abandon.clp      abandon7   "  ?id " ko )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-jan-2014
;By 1930 he had abandoned his Marxist principles.[oald]
;1930 तक उसने उसके मार्क्सवाधी सिद्धान्तों का पालन करना बन्द किया था . 
(defrule abandon8
(declare (salience 4000)) 
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj principle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlana_karanA_banxa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon8   "  ?id "  pAlana_karanA_banxa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  abandon.clp      abandon8   "  ?id " kA )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-jan-2014
;He abandoned himself to despair.[oald]
;उसने स्वयं को निराशा के हवाले कर दिया . 
(defrule abandon9
(declare (salience 4000)) 
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?obj)
(id-root ?obj himself|herself|yourself|ourself)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havAle_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon9   "  ?id "  havAle_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  abandon.clp      abandon9   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-jan-2014
;He drank with abandon.[shiksharthi kosh]
;उसने असंयम के साथ पिया . 
(defrule abandon10
(declare (salience 4000)) 
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?kri ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaMyama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon10   "  ?id "  asaMyama )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-jan-2014
;They abandoned the match because of rain.[oald]
;उन्होंने वर्षा की वजह से मैच रोक दिया . 
(defrule abandon11
(declare (salience 4000))
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj match)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon11   "  ?id "  roka_xe )" crlf))
)

;***********************DEFAULT RULES***************************

(defrule abandon0
(declare (salience 0))
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id abandoned )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  abandon.clp  	abandon0   "  ?id "  CodZA_huA )" crlf))
)

;"abandoned","Adj","1.CodZA_huA"
;Abandoned children are kept in orphanages.
;
(defrule abandon1
(declare (salience 0)) ; salience reduced by Garima Singh
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon1   "  ?id "  CodZa_xe )" crlf))
)

;default_sense && category=verb	CodZa_xe	0
;"abandon","V","1.CodZa_xenA"
;A baby abandoned by its parents was found here.
;
;SabdasUtra explanation starts here 
;LEVEL 
;Headword : abandon
;
;Examples --
;
;"abandon","V","1.CodZa_xenA"
;A baby abandoned by its parents was found here.
;apane mAwA-piwA xvArA CodZa xiyA gayA eka baccA yahAz milA
;
;"abandoned","Adj","1.CodZA_huA"
;Abandoned children are kept in orphanages.
;CodZe hue bacce anAWAlayoM meM raKe jAwe hEM.
;
;"abandon","N","1.svacCanxawA/lAparavAhI"<--svayaM ko mukwa kara lenA hara ora se <-- 
;CodZa xenA  
;She was dancing with reckless abandon.
;vaha eka beparavAha svacCanxawA ke sAWa nAca rahI WI.
;
;         sUwra : CodZa_xenA[CodZA_huA]   
;
;
;
;
;
