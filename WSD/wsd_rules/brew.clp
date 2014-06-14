;@@@ Added by Garima Singh(M.TEch-C.S, Banasthali Vidyapith)12-dec-2013
;The Chinese and Japanese brew Green tea and drink it without milk or sugar.[gyananidhi]
;चीनी और जापानी हरी पत्ती की चाय को उबालते हैं और उसे चीनी या दूध मिलाए बिना पीते हैं।
(defrule brew2
(declare (salience 5000))
(id-root ?id brew)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-word ?id1 tea|coffee)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ubAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brew.clp 	brew2   "  ?id "  ubAla )" crlf))
)


;@@@ Added by Garima Singh(M.TEch-C.S, Banasthali Vidyapith)12-dec-2013
;Trouble has been brewing for some time now.[cambridge]
;थोडे समय से परेशानी उमडती रही है . 
;A storm was brewing up out at sea.[cambridge]
;आँधी समुद्र के बाहर  उमड रही थी .
(defrule brew3
(declare (salience 5000))
(id-root ?id brew)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-word ?id1 storm|trouble)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id umadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brew.clp 	brew3   "  ?id "  umadZa )" crlf))
)


;***********************DEFAULT RULE***********************

;$$$ modified by Garima Singh(M.TEch-C.S, Banasthali Vidyapith)12-dec-2013
;This beer is brewed in the Czech Republic.
;यह बियर चेक गणराज्य में तैयार करी जाती है
(defrule brew0
(declare (salience 0)); salience reduced by Garima Singh
(id-root ?id brew)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brew.clp 	brew0   "  ?id "  wEyAra_kara )" crlf))
)

;"brew","VI","1.umadZanA"
;The tea is brewing
;
(defrule brew1
(declare (salience 0)); salience reduced by Garima Singh
(id-root ?id brew)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maxya_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brew.clp 	brew1   "  ?id "  maxya_banA )" crlf))
)

;"brew","VT","1.maxya_banAnA"
;They brew wine every year.
;
