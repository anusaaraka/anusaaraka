

;@@@ Added by Anita - 7.5.2014
;I hate flying so I go everywhere by road or rail. [cambridge dictionary]
;मुझे उड़ान से नफरत है इसलिए मैं सड़क या रेल द्वारा हर जगह जाता हूँ ।
;It would be better to transport the goods by rail rather than by road.  [oxford learner's dictionary] [relation missing]
;यह सड़क मार्ग के बजाय रेल मार्ग से माल परिवहन करना बेहतर होगा ।
;It takes about five hours by road.  [oxford learner's dictionary]
;सड़क मार्ग से लगभग पांच घंटे लगते हैं ।
(defrule road0
(declare (salience 5000))
(id-root ?id road)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?kri ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZaka_mArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  road.clp     road0  "  ?id " sadZaka_mArga )" crlf))
)
;@@@ Added by Anita - 7.5.2014
;The road from here to Adelaide goes through some beautiful countryside. [cambridge dictionary]
;यहाँ से एडिलेड का मार्ग कुछ सुंदर ग्रामीण  क्षेत्रों से होकर जाता है ।
;All roads into the town were blocked by the snow. [cambridge dictionary]
;शहर के अंदर सभी मार्ग बर्फ से बंद हो गये थे ।
(defrule road1
(declare (salience 3000))
(id-root ?id road)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-from_saMbanXI  ?id ?)(viSeRya-into_saMbanXI  ?id  ?sam))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  road.clp     road1  "  ?id "  mArga )" crlf))
)

;@@@ Added by Anita - 7.5.2014
;Most road accidents are caused by people driving too fast. [cambridge dictionary]
;अधिकांश सड़क दुर्घटनाएँ लोगों के तेजी से ड्राइविंग की वजह से होती हैं ।
(defrule road2
(declare (salience 4000))
(id-root ?id road)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 accident)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  road.clp     road2  "  ?id "  sadZaka )" crlf))
)

;@@@ Added by Anita - 8.5.2014
;They live just along road.  [oxford learner's dictionary]
;वे इसी सड़क पर आगे रहते हैं ।
(defrule road3
(declare (salience 3500))
(id-root ?id road)
?mng <-(meaning_to_be_decided ?id)
(kriyA-along_saMbanXI  ?kri ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  road.clp     road3  "  ?id "  sadZaka )" crlf))
)
;@@@ Added by Anita - 8.5.2014
;We have discussed privatization, but we would prefer not to go down that particular road.  [oxford ;learner's dictionary]
;हमने निजीकरण पर चर्चा की है, लेकिन हम उस रास्ते पर जाना पसंद नहीं करेंगे ।
(defrule road4
(declare (salience 4500))
(id-root ?id road)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 particular)
(viSeRya-viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAswA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  road.clp     road4  "  ?id " rAswA )" crlf))
)
;#######################################default-rule###############################
;@@@ Added by Anita - 7.5.2014
;Be careful when you cross a main road. [cambridge dictionary]
;आप एक बड़ी सड़क को पार करते समय सावधान रहें ।
;There's a sweet shop on the other side of the road. [cambridge dictionary]
;सड़क के दूसरी तरफ एक मिठाई की दुकान है ।
;Is this the Belfast road ? [cambridge dictionary]
;क्या यह बेलफास्ट  सड़क  है ?
;My car was in the garage for a week, but it's now back on the road. [cambridge dictionary]
;मेरी गाड़ी एक सप्ताह के लिए गैरेज में थी, लेकिन अब यह फिर सड़क पर है ।
;After two days on the road, they reached the coast. [cambridge dictionary]
;दो दिनों तक सड़क पर चलने के बाद , वे समुद्रतट  पर पहुंचे .
;Most rock groups spend two or three months a year on the road. [cambridge dictionary]
;ज्यादातर रॉक समूह एक वर्ष में सड़क पर दो या तीन महीने व्यतीत करते हैं ।
;Take the first road on the left and then follow the signs.  [oxford learner's dictionary]
;बाईं तरफ पहली सड़क लो और फिर चिह्नों का अनुसरण करें ।
;We parked on a side road.  [oxford learner's dictionary]
;हमने अपना वाहन  एक छोटी सड़क पर खड़ा किया ।
(defrule road_default-rule
(declare (salience 0))
(id-root ?id road)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  road.clp  road_default-rule   "  ?id "  sadZaka )" crlf))
)





