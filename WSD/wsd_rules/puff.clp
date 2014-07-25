
(defrule puff0
(declare (salience 5000))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id puffed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id PUlA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  puff.clp  	puff0   "  ?id "  PUlA_huA )" crlf))
)
;"puffed","Adj","1.PUlA_huA"
;She was puffed after climbing the stairs.
;
(defrule puff1
(declare (salience 4900))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JakorA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff1   "  ?id "  JakorA )" crlf))
)
;"puff","Adj","1.JakorA"
;A puff of air brought a little relief during power cut.
;--"2.lacCA"
;A puff of smoke emerged out from the chimney.
;--"3.eka_waraha_kA_viSiRta_piRtaka"
;She is expert in making chololate puffs.
;--"4.Svasana"
;He was merely able to speak out of puff.
;
(defrule puff2
(declare (salience 4800))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUzka-PUzkakara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff2   "  ?id "  PUzka-PUzkakara_nikAla )" crlf))
)
;"puff","V","1.PUzka-PUzkakara_nikAlanA"
;He was punished for puffing smoke into people's faces.

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-1-2014
;To puff on a cigarette. [Cambridge]
;सिगरेट में फूँक मारना .
(defrule puff3
(declare (salience 5500))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUzka_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff3   "  ?id "  PUzka_mAra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-1-2014
;Puff of smoke. [Cambridge]
;धुँए का झोंका .
(defrule puff4
(declare (salience 5500))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JoMkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff4   "  ?id "  JoMkA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-1-2014
;Chimneys were puffing out clouds of smoke. [OALD]
;चिमनी धुँए के बादल छोङ रही थी .
(defrule puff5
(declare (salience 5500))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XuzA_Cofa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puff.clp  puff5  "  ?id "  " ?id1 "  XuzA_Cofa  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-1-2014
;I was starting to puff a little from the climb. [OALD]
;???Translation required .
(defrule puff6
(declare (salience 5500))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(kriyA-kriyArWa_kriyA  ?id2 ?id)
(id-cat_coarse ?id1 pronoun)
(id-root ?id2 start|begin)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAzPa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff6   "  ?id "  hAzPa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-1-2014
;The train puffed into the station. [OALD]
;स्टेशन में रेलगाङी धुँआ छोङते हुए अन्दर आई  .
(defrule puff7
(declare (salience 5500))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
(id-root ?id1 into)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XuzA_Cofawe_hue_anxara_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puff.clp  puff7  "  ?id "  " ?id1 "  XuzA_Cofawe_hue_anxara_A  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-1-2014
;He had a few puffs at the cigar. [OALD]
;उसने सिगार से कुछ कश लिए .
(defrule puff8
(declare (salience 5500))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-at_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff8   "  ?id "  kaSa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-1-2014 [A better meaning for PUFF is needed here]
;Take two puffs from the inhaler every four hours. [OALD]
;हर चार घण्टे में ईन्हेलर से दो कश लीजिए .
(defrule puff9
(declare (salience 5500))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-from_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff9   "  ?id "  kaSa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-1-2014 
;The press is full of puffs for his new movie. [OALD]
;प्रैस उसकी नई चलचित्र की अतिशय प्रशंसा से भरी हुई है .
(defrule puff10
(declare (salience 5500))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awiSaya_praSaMsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff10   "  ?id "  awiSaya_praSaMsA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-1-2014 
;The bikers puffed up the hill. [MW]
;बाइकर्स पहाङी पर हाँफते हुए चढा .
(defrule puff11
(declare (salience 5500))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-root ?id1 up)
(id-cat_coarse ?id2 noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAzPawe_hue_caDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puff.clp  puff11  "  ?id "  " ?id1 "  hAzPawe_hue_caDa  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-1-2014 
;Her face puffed up from an allergic reaction to the almonds. [MW]
;उसके चेहरा बादाम से हुए एलर्जिक प्रतिक्रिया से सूज गया .
(defrule puff12
(declare (salience 5900))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
(kriyA-subject  ?id ?noun)
(viSeRya-RaRTI_viSeRaNa  ?noun ?id2)
(id-cat_coarse ?id2 pronoun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sUja_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puff.clp  puff12  "  ?id "  " ?id1 "  sUja_jA  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-1-2014 
;Puffs filled with cream cheese and apricot jam. [MW]
;क्रीम चीज़ और खुबानी के जैम से भरे हुए पफ .
(defrule puff13
(declare (salience 5900))
(id-root ?id puff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 fill|full)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paPa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff13   "  ?id "  paPa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-1-2014 
;A gust of wind puffed out the boat's sails. [MW]
;हवा के झोंके ने नाव के पाल को फुला दिया .
(defrule puff14
(declare (salience 5900))
(id-root ?id puff)
(id-word ?id puffed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puff.clp 	puff14   "  ?id "  PUla )" crlf))
)

;--"2.sigareta_pInA"
;Puffing pipe in cinema hall his prohibitted.
;--"3.kaSa_yA_xama_lagAnA"
;He was puffing hard when he reached the hill top.
;
