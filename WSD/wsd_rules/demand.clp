
(defrule demand0
(declare (salience 5000))
(id-root ?id demand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mAzgoM_se_BarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  demand.clp  	demand0   "  ?id "  mAzgoM_se_BarA )" crlf))
)

;"demanding","Adj","1.mAzgoM_se_BarA"
;The job of a medical practitioner is highly demanding.
;



;@@@ Added by Pramila(Banasthali University) on 19-11-2013
;He has always demanded the highest standards of behaviour from his children.         ;cald
;उसने अपने बच्चों से हमेशा उच्चस्तरीय व्यवहार की अपेक्षा की है.
(defrule demand1
(declare (salience 4900))
(id-root ?id demand)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id2 behaviour)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apekRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demand.clp 	demand1   "  ?id "  apekRA_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 19-11-2013
;"Where do you think you're going?" demanded the police officer.               ;cald
;पुलिस अधिकारी ने प्रश्न किया “ तुम क्या सोचते हो कि तुम किस ओर जा रहें हों ?
(defrule demand2
(declare (salience 4900))
(id-root ?id demand)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id2)
(kriyA-kriyA_viSeRaNa  ?id2 ?id1)
(id-root ?id1 where|what|when|how|which)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demand.clp 	demand2   "  ?id "  praSna_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 19-11-2013
;This is a very difficult piece of music to play - it demands a lot of concentration.            ;cald
;यह संगीत बजाने का सबसे मुश्किल भाग है –इसमें बहुत एक्रागता की आवश्कता होती है.
;He seems to lack many of the qualities demanded of  a successful politician.             ;cald
;उसमे एक सफल राजनेता बनने के कई गुणों जिनकी आवश्कता होती है उनका अभाव है.
(defrule demand3
(declare (salience 4800))
(id-root ?id demand)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-of_saMbanXI  ?id ?id1)(kriyA-vAkyakarma  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyakawA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demand.clp 	demand3   "  ?id "  AvaSyakawA_ho )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 19-11-2013
;I demand to see the manager.        ;cald
;मैं मैनेजर से मिलना चाहता हूँ 
(defrule demand4
(declare (salience 4900))
(id-root ?id demand)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-root ?id1 see)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demand.clp 	demand4   "  ?id "  cAha )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 19-11-2013
;She demanded that he return the books he borrowed from her.              ;cald
;जो किताबें उसने उससे ली थी उन्हें वापिस करने के लिए उसने उससे माँग की .
(defrule demand5
(declare (salience 5000))
(id-root ?id demand)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id1)
(kriyA-vAkya_viBakwi  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAzga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demand.clp 	demand5   "  ?id "  mAzga_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 01-04-2014
;Ramprasad Yadav, the PSS from Bengabad, has made the allegation and demanded Panchayat Raj officers relieve the Chief of his duties and 
;that action is taken against the Secretary.   ;news dev corpus
;इसी तरह के कई आरोप लगाते हुए बेंगाबाद के पंसस रामप्रसाद यादव ने जिला पंचायती राज पदाधिकारी को आवेदन देकर प्रमुख को पदमुक्त और सचिव पर कारवाई करने की मांग की है।
(defrule demand6
(declare (salience 5000))
(id-root ?id demand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id2 ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAzga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demand.clp 	demand6   "  ?id "  mAzga_kara )" crlf))
)
;--------------------------default rules-------------------------------------
(defrule demand7
(declare (salience 3000))
(id-root ?id demand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAzga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demand.clp 	demand7   "  ?id "  mAzga_kara )" crlf))
)

;default_sense && category=verb	mAzga{aXIkAra_se}	0
;"demand","VT","1.mAzganA{aXIkAra_se}"
;Women must demand for their participation in the society.
;OrawoM ko samAja meM apanI BAgIxArI mAzganI hI cAhie.
;--"2.mAzganA
;Bringing up a child demands a lot of patience.
;
;LEVEL 
;Headword : demand
;
;Examples --
;
;"demand","N","1.mAzga"
;Every demand of a child should not be fulfilled.
;bAlaka kI hara mAzga pUrI nahIM karanI cAhie.
;
;The demand for software engineers has increased.
;sOYPtaveyara iMjIniyaroM kI mAzga baDZa gayI hE.
;
;The number of trained professionals has far exceeded the market demand
;praSikRiwa vyAvasAyikoM kI saMKyA bAjZAra kI mAzga se kahIM aXika ho gayI hE.
;
;
;sUwra : mAzga
