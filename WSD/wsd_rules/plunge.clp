;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;I really enjoyed my plunge in the pool.
;मैंने वास्तव में ताल में मेरी डूबकी का आनन्द उठाया . 
(defrule plunge0
(declare (salience 5000))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dubakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge0   "  ?id "  dubakI )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;We are expecting a plunge in profits this year.
;हम इस वर्ष लाभ में गिरावट की आशा कर रहे हैं . 
(defrule plunge1
(declare (salience 4900))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge1   "  ?id "  girAvata )" crlf))
)

;$$$ Modified mng from 'Japata' to 'dUbanA' by Sonam Gupta MTech IT Banasthali 2013
;The fall in demand caused share prices to plunge.
;माँग में गिरावट शेयर मूल्य के डूबने का कारण हुई.
(defrule plunge2
(declare (salience 4800))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dUbanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge2   "  ?id "  dUbanA )" crlf))
)

;"plunge","N","1.Japata"
;The car started with plunge.
;--"2.dubakI"
;The boy took a plunge into the lake.
;

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;We ran down to the beach and plunged into the sea. [Cambridge]
;हम समुद्रतट गये और समुद्र के अन्दर गोता लगाया. 
(defrule plunge3
(declare (salience 4700))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 sea|river)
(kriyA-into_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gowA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge3   "  ?id "  gowA_lagA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Her car plunged off a bridge. [MW]
;उसकी गाङी ने पुल पर से छलांग लगा दी.
(defrule plunge4
(declare (salience 4600))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 over|off)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalAzga_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge4   "  ?id "  CalAzga_lagA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Cook the peas by plunging them into boiling water. 
;मटर को उबलते पानी में भिगो कर पकाओ.
(defrule plunge5
(declare (salience 4500))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id2 water)
;(id-root ?id1 cook|prepare|heat|boil|poach|microwave|barbeque|roast)
;(viSeRya-by_saMbanXI  ?id1 ?id)
(and(kriyA-into_saMbanXI  ?id ?id2)(kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bigo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge5   "  ?id "  Bigo )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Our income has plunged dramatically.
;हमारी अाय नाटकीय ढङ्ग से कम हो चुकी है . 
(defrule plunge6
(declare (salience 4400))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(id-root ?id1 dramatically)(id-root ?id2 pay|income|salary|wage|earning|revenue|population))
(or(and(kriyA-kriyA_viSeRaNa  ?id ?id1)(kriyA-subject  ?id ?id2))(kriyA-subject  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge6   "  ?id "  kama_ho )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The stock market plunged yesterday. [MW]
;शेयर बाजार कल गिर गया.
(defrule plunge7
(declare (salience 4300))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 market|rating|foot)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge7   "  ?id "  gira )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The road plunges down the mountain. [MW]
;सङक पहाङ से नीचे की ओर आ रही है.
(defrule plunge8
(declare (salience 4200))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 down|cliff)
(or(kriyA-upasarga  ?id ?id1)(kriyA-subject  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_nIce_kI_ora_A_rahI_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge8   "  ?id "  se_nIce_kI_ora_A_rahI_hE )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The earthquake plunged entire towns over the edge of the cliffs. [OALD]
;भूकम्प ने पूरे शहर को चट्टानों के किनारे धँसा दिया.
(defrule plunge9
(declare (salience 4100))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 earthquake)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XazsA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge9   "  ?id "  XazsA_xe )" crlf))
)

;@@@ Added by Sonam Gupta Mtech IT Banasthali 2013
;This year profits plunged by 40%. [OALD]
;इस वर्ष लाभ ४०% तक गिरे.
(defrule plunge10
(declare (salience 4000))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) by)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka_girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge10   "  ?id "  waka_girA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;He plunged the knife into the man's stomach. [Cambridge]
;उसने आदमी के पेट के अन्दर चाकू घोंपा . 
(defrule plunge11
(declare (salience 3900))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 knife)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GoMpA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge11   "  ?id "  GoMpA )" crlf))
)

;@@@ Added by Sonam Gupta Mtech IT Banasthali 2013
;Trying to forget about her, he plunged into his work. [Cambridge]
;उसके बारे में भूलने के लिए प्रयास करते हुए, उसने उसके कार्य के अन्दर डुबा दिया . 
(defrule plunge12
(declare (salience 3800))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 work)
(kriyA-into_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dubA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge12   "  ?id "  dubA_xe )" crlf))
)

(defrule plunge13
(declare (salience 3700))
(id-root ?id plunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PazsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunge.clp 	plunge13   "  ?id "  PazsA )" crlf))
)

;"plunge","V","1.PazsAnA"
;The municipal workers plunged the iron rods into the drain to clean up.
;--"2.gowA_lagAnA"
;I love to plunge in swimming pool for hours.
;
