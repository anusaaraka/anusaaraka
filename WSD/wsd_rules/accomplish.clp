
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-Feb-2014
;Considerable progress has already been made in this direction for example in conversion of solar energy geothermal energy etc. into electricity but much more is still to be accomplished.[ncert]
;इस दिशा में पहले से ही काफी प्रगति हो चुकी है (उदाहरण के लिए सौर ऊर्जा, भू - तापीय ऊर्जा आदि के विद्युत ऊर्जा में रूपान्तरण के रूप में) परन्तु इसे और अधिक सम्पादित किया जाना अभी शेष है. ".
(defrule accomplish3
(declare (salience 3000))
(id-root ?id accomplish)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sampAxiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  accomplish.clp  	accomplish3   "  ?id "  sampAxiwa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-Feb-2014
;But how was Asutosh accomplishing this great national task when an unsympathetic government was starving the University.
;परंतु उस स्थति में जबकि एक संगदिल सरकार विश्वविद्यालय को भूखा मार रही थी, आशुतोष इस महान राष्ट्रीय कार्य को किस प्रकार पूरा कर रहे थे?
(defrule accomplish4
(declare (salience 3000))
(id-root ?id accomplish)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-word ?id1 task)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  accomplish.clp  	accomplish4  "  ?id "  pUrA_kara )" crlf))
)



;*********************DEFAULT RULES***********************

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-Feb-2014
;removed '(id-root ?id accomplish)' from condition part and changed the meaning from 'saPala_huA' to 'saPala_ho'.
(defrule accomplish0
(declare (salience 0));salience reduced  by Garima Singh
(id-word ?id accomplished )
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  accomplish.clp  	accomplish0   "  ?id "  saPala_ho )" crlf))
)

; verb meaing added by Amba; meaning need to be checked.
(defrule accomplish1
(declare (salience 0));salience reduced  by Garima Singh
(id-root ?id accomplish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id accomplished )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nipuNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  accomplish.clp  	accomplish1   "  ?id "  nipuNa )" crlf))
)

;"accomplished","Adj","1.nipuNa"
;She is an accomplished dancer.
;
;
(defrule accomplish2
(declare (salience 0));salience reduced  by Garima Singh
(id-root ?id accomplish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_saPala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accomplish.clp 	accomplish2   "  ?id "  kAma_saPala_kara )" crlf))
)

;default_sense && category=verb	pUrA_kara	0
;"accomplish","VT","1.pUrA_karanA"
;We have accomplished our task of nabbing the murderers. 
;
;
