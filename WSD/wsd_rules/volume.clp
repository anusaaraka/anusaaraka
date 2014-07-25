;This file is created by Aditya and Hardik,IIT(BHU)


;This article originally appeared in volume 5.
(defrule volume0
(declare (salience 4700))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse = (+ ?id 1) number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id granWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume0   "  ?id "  granWa )" crlf))
)

;The essay in this volume is nice.
;The quotes of this volume are nice.
(defrule volume1
(declare (salience 4900))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 essay|quotes|article|vocabulary)
(or(viSeRya-of_saMbanXI ?id1 ?id)(viSeRya-in_saMbanXI ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id granWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume1   "  ?id "  granWa )" crlf))
)

;$$$ Modified by Prachi Rathore[7-3-14]
;Meaning changed from wivrawA to AvAja
;He was playing music at low volume.
;volume is too loud.
(defrule volume2
(declare (salience 5000))
(id-root ?id volume)
(id-word ?id1 high|low|top|loud)
(or(viSeRya-viSeRaNa ?id ?id1)(subject-subject_samAnAXikaraNa ?id1 ?id))
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume2   "  ?id "  AvAja )" crlf))
)

;Radhika ordered me to increase the volume of the speaker.
;I increased the volume of speaker to maximum.
;The volume of speaker must be increased.
(defrule volume3
(declare (salience 5100))
(id-root ?id volume)
(id-word ?id1 tv|sterio|radio|television|laptop|speaker|computer)
(viSeRya-of_saMbanXI ?id ?id1)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIvrawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume3   "  ?id "  wIvrawA )" crlf))
)

;What is the volume of cylinder?
(defrule volume4
(declare (salience 4000))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 container|cylinder|cone|sphere|cube|hemisphere)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ayawana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume4   "  ?id "  Ayawana )" crlf))
)

;@@@ Added by Prachi Rathore
;The Universe was extremely hot at the time of creation and had zero volume![gyannidhi]
;उत्पत्ति के समय ब्रह्मांड अत्यंत गर्म था और इसका आयतन शून्य था।
(defrule volume5
(declare (salience 4000))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ayawana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume5   "  ?id "  Ayawana)" crlf))
)

;@@@ Added by Prachi Rathore
;To turn the volume up.[oald]
; आवाज तेज कर देने के लिये . 
(defrule volume6
(declare (salience 5000))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root =(+ ?id 1) up|down)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume6   "  ?id "  AvAja)" crlf))
)

;@@@ Added by Prachi Rathore[29-1-14]
;The tremendous amount of labour which Asutosh had to undergo as Vice- Chancellor for reshaping the University can only be understood if one takes the trouble of going through the volumes or proceedings of the University bodies during those years.  [gyannidhi]
;-आशुतोष द्वारा कुलपति के रूप में विश्वविद्यालय के पुनर्निर्माण के लिए जो ज़बर्दस्त परिश्रम करना पड़ा उसे केवल तभी समझा जा सकता है जब हम उन वर्षों के दौरान विश्वविद्यालय के निकायों की कार्यवाहियों या विवरण पुस्तकों को पढ़ने का कष्ट करें।
(defrule volume7
(declare (salience 4000))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-through_saMbanXI  ?id1 ?id)
(id-root ?id1 go)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puswaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume7   "  ?id "  puswaka)" crlf))
)

;@@@ Added by Prachi Rathore[29-1-14]
;a library of over 50000 volumes.[oald]
; 50000 से ज्यादा पुस्तकों का पुस्तकालय . 
;a slim volume of poetry.[oald]
;काव्य की एक पतली पुस्तक . 
(defrule volume8
(declare (salience 4000))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id1 ?id)(viSeRya-of_saMbanXI  ?id ?id1))
(id-root ?id1 library|poetry|series)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puswaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume8   "  ?id "  puswaka)" crlf))
)


;@@@ Added by Prachi Rathore[3-2-14]
;The report runs into five volumes and covers, practically the whole sphere of education.  [gyannidhi]
;रिपोर्ट पांच खंडों में है और इसमें शिक्षा का लगभग सारा क्षेत्र शामिल है।
(defrule volume9
(declare (salience 4000))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-saMKyA_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume9   "  ?id "  KaMda)" crlf))
)

;@@@ Added by Prachi Rathore[21-2-14]
;The quotes of this volume are nice.
(defrule volume10
(declare (salience 4000))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 quote)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume10   "  ?id "  KaMda)" crlf))
)


