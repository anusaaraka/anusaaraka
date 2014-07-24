
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-dec-2013
;Pussy slept so much that Sidey had grown quite unafraid of her and walked past without bothering to see how near old Pussy was.[gyananidhi]
;उसके सोते रहने के कारण दुमछल निडर हो गयी थी और इस बात की परवाह नहीं करती थीं कि बिल्ली उसके कितने पास में हैं।
(defrule bother2
(declare (salience 4500))
(id-root ?id bother)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(kriyA-without_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paravAha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bother.clp 	bother2   "  ?id "  paravAha_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-dec-2013
;I don't know why I bother!Nobody ever listens![oald]
;मुझे नहीं पता मैं क्यों परेशान होता हूँ ! कोई भी कभी भी नहीं सुनता है!
(defrule bother3
(declare (salience 4000))
(id-root ?id bother)
?mng <-(meaning_to_be_decided ?id)
(niReXawmaka_vAkya)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bother.clp 	bother3   "  ?id "  pareSAna_ho )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-dec-2013
;I don't want to bother her with my problems at the moment. [oald]
;मैं इस समय उसे अपनी समस्याएं बताकर परेशान नहीं करना चाहता हूँ
(defrule bother4
(declare (salience 4000))
(id-root ?id bother)
?mng <-(meaning_to_be_decided ?id)
(niReXawmaka_vAkya)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bother.clp 	bother4   "  ?id "  pareSAna_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-dec-2013
;I don't know why you bother with that crowd .[oald]
;मुझे नहीं पता तुम उस भीड़ के साथ क्यों समय व्यतीत करते हो
(defrule bother5
(declare (salience 4000))
(id-root ?id bother)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(id-word ?id1 crowd)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya_vyawIwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bother.clp 	bother5   "  ?id "  samaya_vyawIwa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-dec-2013
;He doesn't bother much about his appearance.[oald]
;वह अपने प्रकटन को लेकर ज्यादा चिंतित नहीं होता है
(defrule bother6
(declare (salience 4000))
(id-root ?id bother)
?mng <-(meaning_to_be_decided ?id)
(kriyA-about_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciMwiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bother.clp 	bother6  "  ?id "  ciMwiwa_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-dec-2013
;He didn't even bother to let me know he was coming.[oald]
;उसने मुझे यह बताने की जहमत नहीं उठाई कि वह आ रहा है
(defrule bother7
(declare (salience 4000))
(id-root ?id bother)
?mng <-(meaning_to_be_decided ?id)
(or
(kriyA-kriyArWa_kriyA  ?id ?id1)
(kriyA-kqxanwa_karma  ?id ?id1)
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jahamawa_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bother.clp 	bother7  "  ?id "  jahamawa_uTA )" crlf))
)

;***************************DEFAULT RULE**********************************

(defrule bother0
(declare (salience 0));salience reduced by Garima
(id-root ?id bother)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bother.clp 	bother0   "  ?id "  pareSAnI )" crlf))
)

;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-dec-2013 . changed the meaning from 'wanga_kara' to 'pareSAna_kara'
;Modified by sheetal(25-02-10)
;The playing of the piano really bothers John .
;"bother","N","1.pareSAnI"
(defrule bother1
(declare (salience 0));salience reduced by Garima
(id-root ?id bother)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara))
(assert (kriyA_id-object_viBakwi ?id ko));added by sheetal
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bother.clp    bother1   "  ?id "  pareSAna_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  bother.clp    bother1   "  ?id "  ko )" crlf))
)

;"bother","VT","1.waMga_karanA"
;Mosquitoes buzzing in my ear really bothers me
;Don't bother the professor while she is grading term papers
;The mere thought of her bothered him && made his heart beat faster
;


