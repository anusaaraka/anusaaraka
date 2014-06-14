;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)12-dec-2013
;A gale-force wind had blown the fence down .[cambridge]
;हवा कीं तेजी ने बाड़े को गिरा दिया
(defrule blow17
(declare (salience 5000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-aXikaraNavAcI  ?id ?id1)
(id-word ?id1 down)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blow.clp 	blow17   "  ?id "  girA_xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)12-dec-2013
;The letter blew away and I had to run after it.[cambridge]
;पत्र उड़ गया और मुझे उसके पीछे भागना पड़ा.
(defrule blow18
(declare (salience 5000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 away)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uda_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow18  "  ?id "  " ?id1 "  uda_jA  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)12-dec-2013
;I blew the dust off the books.[cambridge]
;मैने पुस्तकों पर से धूल झाड दी .
(defrule blow19
(declare (salience 5500))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-off_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?obj)
(id-word ?obj dust)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAda_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blow.clp 	blow19   "  ?id "  JAda_xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)12-dec-2013
;example given below is a contadictory example of rule 'blow4'.So I have in creased the salience in this rule. According to me rule 'blow4' should be modified or deleted because the condition given in that rule is not sufficient. 
;I wish you wouldn't blow smoke in my face.[cambridge]
;मै आशा करता हूँ कि तुम मेरे चेहरे पर धुआं नहीं उड़ाओगे .
(defrule blow20
(declare (salience 5000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-word ?id1 smoke|dust|air)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id udA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blow.clp 	blow20   "  ?id "  udA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;He scored the winning goal just before the whistle blew.[cambridge]
;दूसरी सीटी बजने से जरा पहले उसने जीत का गोल कर दिया .
(defrule blow21
(declare (salience 5000))
(id-word ?id blew)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(not(kriyA-object ?id ?))
(id-word ?id1 whistle|notes|music|trumpet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blow.clp 	blow21   "  ?id "  baja )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;Ann blew a few notes on the trumpet.[cambridge]
;एन ने तूर्य पर कुछ नोटस बजाए .
(defrule blow22
(declare (salience 5000))
(id-word ?id blew)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-word ?id1 whistle|notes|music|trumpet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blow.clp 	blow22   "  ?id "  bajA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;Losing his job was a severe blow to his confidence.[cambridge]
;नौकरी का छूटना उसके आत्मविश्वास के लिए एक भारी आघात था.
(defrule blow23
(declare (salience 5000))
(id-word ?id blew)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id2)
(viSeRya-to_saMbanXI  ?id ?id1)
(id-word ?id1 confidence)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AGAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blow.clp 	blow23   "  ?id "  AGAwa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;Just blow off his comments, he's only joking.[cambridge]
;उसकी टिप्पणी पर ध्यान मत दो ,वह मजाक कर रहा है.
(defrule blow24
(declare (salience 5000))
(id-word ?id blew)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
(id-root ?obj comment)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 para_XyAna_mawa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow24  "  ?id "  " ?id1 "  para_XyAna_mawa_xe  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;They threatened to blow up the plane if their demands were not met.[cambridge]
;उन्होंने प्लेन को धमाके से उड़ाने की धमकी दी अगर उनकी माँगे नही पूरी की गयी
(defrule blow25
(declare (salience 4000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ? )
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XamAke_se_udA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow25  "  ?id "  " ?id1 "  XamAke_se_udA  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;Would you help me blow up these balloons?[cambridge]
;क्या तुम इन गुब्बारों को फुलाने में मेरी मदद करोंगे .
(defrule blow26
(declare (salience 5000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?obj)
(id-root ?obj balloon)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow26  "  ?id "  " ?id1 "  PulA  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;Demonstrators nearly came to blows with the police during the march.[cambridge]
;प्रदर्शनकरियों कीं  प्रदर्शन के दौरान पुलिस से लगभग हाथापाई कीं नौबत आ गयीं .
(defrule blow27
(declare (salience 5000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?kri ?id)
(id-root ?kri come)
(viSeRya-with_saMbanXI  ?id ?id1)
;(id-word =(- ?id 1) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) ladZAI_para_uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow27  "  ?id "  " (- ?id 1) "  ladZAI_para_uwara  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;Do you think the two countries will come to blows over this?[cambridge]
;क्या तुम्हें लगता है कि दोनों देश इस पर एक दूसरे से विवाद करेंगे 
(defrule blow28
(declare (salience 5000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?sub)
(kriyA-to_saMbanXI  ?kri ?id)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) vivAxa_para_uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow28  "  ?id "  " (- ?id 1) "  vivAxa_para_uwara  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)09-jan-2014
;A severe wind was blowing .
;बहुत तेज हवा चल रही थी
(defrule blow29
(declare (salience 5000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-word ?sub wind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blow.clp 	blow29   "  ?id "  cala )" crlf))
)


;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;The bridge blew up.[old]
;pula XamAke ke kAraNa tukadZe-tukadZe ho gayA
(defrule blow0
(declare (salience 4000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(not(kriyA-object ?id ? ))
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XamAke_se_uda_jA));meaning changed by Garima Singh
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow0  "  ?id "  " ?id1 "  XamAke_se_uda_jA  )" crlf));meaning changed by Garima Singh
)

;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;The teacher blew up over his student.[old]
;SikRaka vixyArWI pe BadZaka uTA
;My dad blew up when he saw the phone bill.
;मेरे पिता जी गुस्से से पागल हो गए जब उन्होंने फोन का बिल देखा .
(defrule blow1
(declare (salience 5000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-subject ?id ?sub)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(not(kriyA-object ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BadZaka_jA)); meaning changed by Garima Singh
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow1  "  ?id "  " ?id1 "  BadZaka_jA  )" crlf));meaning changed by Garima Singh
)

;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-dec-2013
;He blew up the image to detect some important details.
;usane kuCa mahawvapUrNa jAnakArI prApwa karane ke liye Poto ko badZA kiyA
(defrule blow2
(declare (salience 5000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?obj)
(id-word ?obj image)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow2  "  ?id "  " ?id1 "  baDZA  )" crlf))
)

;this rule needs to be modified 
(defrule blow3
(declare (salience 3700));salience reduced by Garima Singh 
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 dAztanA_yA_gusse_se_bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow3  "  ?id "  " ?id1 "  dAztanA_yA_gusse_se_bAwa_kara  )" crlf))
)

;My father blew me up for arriving late.
;mere piwA ne muJe xerI se Ane para dAztA
(defrule blow4
(declare (salience 4600))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " blow.clp blow4 " ?id "  acAnaka_A )" crlf)) 
)

(defrule blow5
(declare (salience 4500))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow5  "  ?id "  " ?id1 "  acAnaka_A  )" crlf))
)

(defrule blow6
(declare (salience 4400))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prahAra_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " blow.clp blow6 " ?id "  prahAra_kara )" crlf)) 
)


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)23-jan-2014
;A pile of papers blew off the desk.[oald]
;समाचार पत्रों का ढेर मेज से उड़ गया .
(defrule blow7
(declare (salience 4300))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
;(kriyA-subject  ?id ?sub);uncomment this and the line below if any conflict is found 
;(id-word ?sub pile)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 udZa_jA));meaning changed from 'prahAra_kara' to 'uda_jA' by Garima Singh
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow7  "  ?id "  " ?id1 "  udZa_jA  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " blow.clp    blow7   "  ?id " se )" crlf)
)
)

(defrule blow8
(declare (salience 4200))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buJA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " blow.clp blow8 " ?id "  buJA )" crlf)) 
)

(defrule blow9
(declare (salience 4100))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 buJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow9  "  ?id "  " ?id1 "  buJA  )" crlf))
)

(defrule blow10
(declare (salience 4000))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-over_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_kisI_viSeRa_asara_se_Gata_jA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " blow.clp blow10 " ?id "  binA_kisI_viSeRa_asara_se_Gata_jA )" crlf)) 
)

(defrule blow11
(declare (salience 3900))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 binA_kisI_viSeRa_asara_se_Gata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow11  "  ?id "  " ?id1 "  binA_kisI_viSeRa_asara_se_Gata_jA  )" crlf))
)

(defrule blow12
(declare (salience 3800))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id visPota_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " blow.clp blow12 " ?id "  visPota_kara )" crlf)) 
)

(defrule blow13
(declare (salience 3700))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 visPota_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow13  "  ?id "  " ?id1 "  visPota_kara  )" crlf))
)

(defrule blow14
(declare (salience 3600))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upon_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ninxA_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " blow.clp blow14 " ?id "  ninxA_kara )" crlf)) 
)

(defrule blow15
(declare (salience 3500))
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ninxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blow.clp	blow15  "  ?id "  " ?id1 "  ninxA_kara  )" crlf))
)

(defrule blow16
(declare (salience 0));salience reduced by Garima Singh(M.Tech-C.S)
(id-root ?id blow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id udA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blow.clp 	blow16   "  ?id "  udA )" crlf))
)

;default_sense && category=verb	udZA	0
;"blow","VT","1.udZAnA"
;The breeze blew the shirt away.
;
;LEVEL 
;Headword : blow
;
;Examples --
;
;aMgrejZI Sabxa 'blow' ke saMjFA Ora kriyA prayogoM meM xo alaga alaga arWa xiKawe hEM
;
;1. "blow","N","GUzsA'   
;   He received a severe blow on his face.
;   eka BArI GUzsA usake muzha para padA.
;  --"2.XakkA" 
;   His wife's death came as a terrble blow to him.
;   usakI pawnI kI mqwyu usake liye eka badZA XakkA WA. 
;
;2. "blow","V","1.bahanA"
;   The wind was blowing hard.
;   havA jora se baha rahI WI. <--- bahanA <--- havA ke pravAha ke sAWa calanA
;   --"2.udZanA/udZAnA"  <-- havA ke pravAha ke sAWa calanA
;   Her hair were blowing in the wind.
;   usake bAla havA meM udZa rahe We. 
;   --"3.PUzkanA"  <-- havA ke pravAha ko xiSA xenA
;   Hari blew the balloon very hard.
;   harI ne gubbAre meM jora se havA PUzkI  
;   --"4.bajAnA"  <-- havA PUzkanA
;   The referee blew his whistle
;   reParI ne sItI bajAyA.
;   --"5.havA_Bara_kara_Calle_banAnA" <-- havA ko AkAra xenA
;   He blows smoke-rings while smoking.
;   vaha sigareta pIwe samaya Xuze ke Calle banAwA hE.                  
;
;Upara xiye saBI uxAharaNoM se eka bAwa spaRta hE ki 'blow' Sabxa kA eka arWa
;'havA ke pravAha' se judZA hE. 
;
;kuCa anya uxAharaNa xeKeM --
; 
;   Please blow out the candle.
;   momabawI ko buJA xo.  <--PUzka_kara_usakI_jvAlA_ko_naRta_kara_xo
;   
;   The storm has blown over.
;   wUPAna XIre-XIre Wama gayA <--havA kI gawi pUre wejZa para Akara gujZara gayI
;
;   Due to short circuit the fuse has blown.
;   SOYrta sarakita ke kAraNa PyUjZa udZa gayA. <--PyUjZa meM pravAha Wama gayA  
;   
;   The soldiers have blown the bridge.
;   sipAhiyoM ne pula udA xiyA hE. <---kisI vaswu meM iwanA wejZa pravAha uwpanna karanA ki vaha tUta gayA
;   
;   The spy's cover was blown.
;   gupwacara kA parxA PASa ho gayA. <--jo vaha Cipakara kara rahA WA use sAmane le AyA gayA<---usake Upara kA AcCAxana udZA xiyA gayA
;   
;   He has blown all his paternal property in gambling
;   usane jue meM apanI sArI pEwqka saMpawwi udZA xI. 
;   
;   He blew his chances by arriving late for the interview.
;   usane sAkRAwkAra meM xera se Akara (cune jAne kI) sArI samBAvanAez Ko xIM. <--Ko xI <--havA meM bahA xI <--udZA xI
;
;ina saBI uxAharaNoM se 'blow' kA eka arWa 'udZanA/udAnA' BI spaRta ho rahA hE. 
;jo havA ke pravAha se hI sambanXiwa hE. 
;'blow' kA eka arWa 'havA ko wIvrawA se pravAhiwa karanA' yAni 'PUzkanA' hE.
;jaba kisI vaswu ko 'PUzkA jAwA hE wo vaha udZa jAwI hE'.
;kyoMki usameM gawi hE awaH usa gawi se 'XamAke' kA arWa AwA hE.   
;
;'blow' Sabxa kI etymology xeKeM wo lagawA hE ki mUlawaH 'blow' meM 'vAyu ke pravAha, 
;wIvrawA, Ora Sakwi' kA arWa nihiwa WA.    
;1. Blow, n. [OE. blaw, blowe; cf. OHG. bliuwan, pliuwan, to beat, G.
;   bl\'84uen, Goth. bliggwan.] 1. A forcible stroke with the hand, fist,
;   or some instrument, as a rod, a club, an ax, or a sword.
;   [1913 Webster]
;
;2. Blow, v. i. [imp. Blew (bl); p. p. Blown (bln); p. pr. & vb. n.
;   Blowing.] [OE. blawen, blowen, AS. blwan to blow, as wind; akin to
;OHG. pljan, G. bl\'84hen, to blow up, swell, L. flare to blow, Gr.
;   'ekflai`nein to spout out, && to E. bladder, blast, inflate, etc.,
; && perh. blow to bloom.] 1. To produce a current of air; to move, as
;   air, esp. to move rapidly or with power; as, the wind blows.
;   [1913 Webster]
;
;
;wIvra gawi se calane vAlI havA ke 'WapedZoM' se saMjFA arWa 'GUzsA' yA 'XakkA' prajaniwa ho gayA.
;
;awaH 'blow' kA anwarnihiwa sUwra nimna ho sakawA hE - 
;
;
;		      havA_PUzkanA[bahanA]
;                         |       | |---------------------
;     ----------------------      |                       |
;      |      |            |      -----------            wejZI_se
;   havA_BaranA  udZAnA    buJAnA    |         |             |
;      |       |           |     sAWa_bahanA  baha_kara_WamanA     | saMjFA
; -------   --------       |      |          |          WapedZe  
; |     |   |      |  Aga_Axi     pawwe_Axi  gawi_rukanA
;gubbArA bajAnA |  |                         | 
;       | naRta_karanA sAmAnya                 PyUjZa
;      sItI        |
;                 AlaMkArika_prayoga
;                     |
;             -------------------
;             |       |         |
;            pEse    bAwa      jAsUsI_jAla
;                 
;
;sUwra : PUzkanA^bahanA[__>WapedZe>]
;
;
;blow-dry - bAla suKAne vAlI maSIna se bAla suKAnA 
;blow-hole -  
;blow-out - tAyara paMkcara honA 
;blow-up - Poto ko badZA karanA 
;
;
