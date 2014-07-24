;@@@ Added by Pramila(Banasthali University) on 25-11-2013
;I really enjoyed that film/book/concert/party/meal.                ;cald
;मुझे उस फिल्म देखने में सचमुच बहुत मज़ा आया . 
;Did you enjoy the book?                  ;sentence of this file
;kyA wumhe kiwAba paDZane meM majA AyA
(defrule enjoy0
(declare (salience 5000))
(id-root ?id enjoy)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 book|film|concert|party|meal|dinner|lunch|breakfast)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majA_A))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enjoy.clp 	enjoy0   "  ?id "  majA_A )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  enjoy.clp     enjoy0   "  ?id "ko )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 11-12-2013
;Come on, why aren't you dancing? Enjoy yourselves!                ;cald
;अरे ,तुम क्यों नहीं डांस कर रहें हो ? तुम भी मज़ा करो .
;Here are your drinks. Enjoy!                    ;cald
;यह लो अपने पेय . और मज़ा करो .
(defrule enjoy1
(declare (salience 5000))
(id-root 1 enjoy)
?mng <-(meaning_to_be_decided 1)
(id-right_punctuation  ?last	PUNCT-Exclamation)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 majZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enjoy.clp 	enjoy1   "  1 "  majZA_kara)" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 25-11-2013                  
;She is enoying her good health after a prolong sickness.                   ;sentence of this file
;eka lambI bImArI ke paScAwa,vaha acCe svAsWya kA suKa le rahI hE.
(defrule enjoy2
(declare (salience 5000))
(id-root ?id enjoy)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 health)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suKa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enjoy.clp 	enjoy2   "  ?id "  suKa_le)" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 25-11-2013   
;I don't think Marie is enjoying herself very much at school.              ;cald
;मुझे नहीं लगता मारी को स्कूल में ज्यादा अच्छा लग रहा है 
(defrule enjoy3
(declare (salience 5000))
(id-root ?id enjoy)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-object  ?id ?id1)(id-root ?id1 herself|myself|ourselves|themselves|himself))
(id-root-category-suffix-number =(+ ?id 1)  ? verb ing ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA_laga))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enjoy.clp 	enjoy3   "  ?id "  acCA_laga)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enjoy.clp     enjoy3   "  ?id "ko )" crlf)
)
)

(defrule enjoy4
(declare (salience 4000))
(id-root ?id enjoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ananxa_uTA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enjoy.clp 	enjoy4   "  ?id "  Ananxa_uTA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enjoy.clp     enjoy4   "  ?id " kA )" crlf)
)
)

;@@@ Added by Pramila(Banasthali university) on 01-04-2014  
; Out of the thirty companies involved in Sensex only nine recorded a loss while the rest of them enjoyed gains.   ;news-dev corpus
;सेंसेक्स में शामिल तीस कंपनियों में से महज नौ ने नुकसान उठाया जबकि बाकी सभी मुनाफे में रहीं।
(defrule enjoy5
(declare (salience 5000))
(id-root ?id enjoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 gain)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enjoy.clp 	enjoy5   "  ?id "  raha )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enjoy.clp     enjoy5   "  ?id " meM )" crlf)
)
)

;The industry enjoyed an abnormal profit this year.
;
;LEVEL 
;Headword : enjoy
;
;Examples --
;
;"enjoy","V","1.AnaMxa lenA"
;She enjoyed the evening at the beach.
;usane samuxra ke kinAre saMXyA kA AnaMxa liyA.
;"2.rasa lenA"-rasa lene meM BI AxamI ko AnaMxa kI anuBUwi howI hE,yAni AnaMxa lewA hE-AnaMxa lenA
;Did you enjoy the book? 
;kyA wumhe kiwAba paDZane meM rasa AyA
;"3.suKa lenA"-suKa kI prApwi meM BI AxamI ko AnaMxa milawA hE-AnaMxa lenA
;We have enjoyed ourselves very much in your company.
;hama logoM ne Apake sAniXya kA bahuwa suKa liyA.
;She is enoying her good health after a prolong sickness.
;eka lambI bImArI ke paScAwa,vaha acCe svAsWya kA suKa uTA rahI hE.
;"4.majA lenA"-AnaMxa lenA
;They enjoyed the dinner very much. 
;unhone rAwri ke Bojana kA bahuwa majA liyA.
;"5.viSvAsapAwra hone kA Ananxa lenA"-kisI kA viSvAsapAwra banane meM kuCa pAne kA Ananxa hE -AnaMxa milanA-AnaMxa lenA
;She enjoys her boss's confidence.
;vaha apane bOsa kI viSvAsapAwra hone kA Ananxa uTA rahI hE
;
;nota:-- uparyukwa saBI vAkyoM meM 'enjoy'Sabxa kA arWa 'AnaMxa lene' se BalI-BAzwi nikala rahA hE awaH isakA sUwra nimna prakAra xe sakawe hEM
;
;sUwra : AnaMxa_lenA 
