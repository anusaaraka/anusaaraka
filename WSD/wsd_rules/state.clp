;Added by Rashmi Ranjan(Banasthali Vidyapith)
;They were in a state of shock. [m-w]
;वे सदमे की अवस्था में थे.
;I'm worried about the state of her health.		[m-w]
;मैं उसके स्वास्थ्य की अवस्था के बारे में चिंतित हूँ.
; The drug creates an altered state of consciousness.	[m-w]
;मादक पदार्थ चेतना की अन्य अवस्था में ले जाता है.
;What is the company's financial state?		[m-w]
;कंपनी की वित्तीय अवस्था क्या है?
;The current state of the economy. [m-w]
;अर्थव्यवस्था की वर्तमान अवस्था.
;Her life is in a state of complete chaos. 		[m-w]
;उसका जीवन पूरी तरह अराजकता की अवस्था में है.
;The empire fell into a state of decline.		[m-w]
;साम्राज्य गिरावट की अवस्था में गिर गया.
;The country is in a state of war. [m-w]
;देश युद्ध की अवस्था में है.
;The state of the economy .	[cl]
;अर्थव्यवस्था की अवस्था.
;The building is in a terrible state.			[cl]
;इमारत एक भयानक अवस्था में है.
;She has been in state of shock,since her mother died.[old]
;उसकी माँ के निधन के बाद से वह सदमे की अवस्था में है.
;The solid and liquid states. [m-w]
;ठोस और तरल अवस्था.
;Happiness is the state of being happy.[m-w]
;खुशी खुश होने की अवस्था  है.
(defrule state0
(declare (salience 4900))
(id-root ?id state)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?id1)(subject-subject_samAnAXikaraNa  ?sub ?id)(kriyA-in_saMbanXI  ? ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  state.clp 	state0   "  ?id "  avasWA)" crlf))
)

;Modified by Rashmi Ranjan(Banasthali Vidyapith)
;Alaska is the largest state in the US.[cl]
;अलास्का अमेरिका में सबसे बड़ा राज्य है.
;The 50 states of the U.S.	[m-w]
;अमेरिका के 50 राज्य .
;Chihuahua is a state in northern Mexico.		[m-w]
;चिहुआहुआ उत्तरी मेक्सिको में एक राज्य है.
;Vermont was the only New England state to pass the law.[m-w]
;वरमोंट कानून पारित करने के लिए केवल न्यू इंग्लैंड राज्य था.
;Removed conditions (viSeRya-viSeRaNa ?id ?id1),(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1),(viSeRya-in_saMbanXI ?id1 ?id), (id-word ?id1 policy|czechoslovak|small|city)
(defrule state1
(declare (salience 6000))
(id-root ?id state)
?mng <-(meaning_to_be_decided ?id)
(or(subject-subject_samAnAXikaraNa  ?sub ?id)(viSeRya-of_saMbanXI  ?id ?sub))
(id-cat_coarse ?sub PropN)
;(id-root ?sub Chihuahua|U.S|Mexico|Vermont|England|Alaska|India|America)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  state.clp 	state1   "  ?id "  rAjya)" crlf))
)

;##########################DEFAULT#####################################################
;Almora is a small town in Uttarakhanda state.	[old]
;अल्मोड़ा उतराखंड राज्य में एक छोटा सा शहर है.
(defrule state2
(id-root ?id state)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  state.clp 	state2   "  ?id "  rAjya)" crlf))
)

;Please state the purpose of your visit.[m-w]
;अपनी यात्रा के उद्देश्य बताइये.
(defrule state3
(id-root ?id state)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  state.clp 	state3   "  ?id "  bawAnA)" crlf))
)

;They have arranged state banquet in the honour of the president.[old]
;उन्होने अध्यक्ष के सम्मान में राजकीय भोज की व्यवस्था की है.
(defrule state4
(id-root ?id state)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjakIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  state.clp 	state4   "  ?id "  rAjakIya)" crlf))
)

;#############################Removed rules#######################################
;state_adjective	niSciwa
;(id-word ?id stated )
;(id-cat_coarse ?id adjective)
;You must report at the office at the time stated.

;state_noun	hAlawa
;(id-word ?id1 certain)
;(viSeRya-viSeRaNa ?id1 ?id)

;They stated, "It will materialise soon"

;state	vyakwa_kara
;(kriyA-object ?id ?id1)

;state_verb	vyakwa_kara


;state_noun	sWiwi


;########################################examples################################
;Examples --
;"state","N","1.manoxaSA/sWiwi-mana kI sWiwi-sWiwi
;She has been in state of shock,since her mother died.
;jaba se usakI mAz marI hE vaha mAnasika AGAwa kI sWiwi meM hE.
;"2.rAjaBoja"-rAjya kA prawiniXiwva karawe huye rARtrapawi ke sammAna me Boja xiyA gayA-rAjya
;They have arranged state banquet in the honour of the president.
;unhone rARtrapawi ke sammAna meM rAjakIya Boja kA Ayojana kiyA hE.
;"3.rAjya"
; American heads of state are coming to our country.  
;amarIkI rAjyoM ke pramuKa hamAre xeSa me A rahe hEM
;
;"state","V","1.GoRiwa karanA"-kahanA 
;The doctor stated that the man had died from head injury.
;dAktara ne GoRiwa kara xiyA ki AxamI sira kI cota ke kAraNa marA WA
;
;"2.kahanA" 
;His report clearly states what the problem is.
;usakI riporta sAPa kaharahI hE ki samasyA kahAz hE.
;
;"state","adj","1.rAjakIya/sarakArI -rAjakIya kArya yAni rAjya kA kArya
;Govt. should do something for the poor condition of the State schools.
;sarakAra ko kuCa karanA cAhiye rAjakIya skUloM kI KarAba hAlawa para. 
;
;
;     nota:--uparyukwa 'state'Sabxa ke liye saMjFA,kriyA,evaM viSeRaNa,ke saBI vAkyoM          para XyAna xeM wo sAre arWoM ko sWiwi,rAjya,Ora kahanA,se jodZA jA sakawA  
;          hE.
;
;sUwra : rAjya[<sWiwi]/kahanA
;
;;Ours is not a small state
