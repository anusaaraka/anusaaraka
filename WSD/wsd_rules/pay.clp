;He gets a good pay.
;use acCA vewana milawA hE.
(defrule pay-vewana0
(declare (salience 50))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vewana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pay.clp 	pay-vewana0   "  ?id "  vewana )" crlf))
)

;He works to get paid.	-- Amba
;vaha vewana pAne ke liye kAma karawA hE.
(defrule pay1
(declare (salience 100))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id paid )
(id-root =(- ?id 1) get)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vewana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pay.clp       pay1   "  ?id "  vewana )" crlf))
)

;@@@ Added by Nandini 16-9-13
;My company pays well.[oxford Advance lerner dictionary]
;merI kampanI acCA vewana xewI hE.

(defrule pay2
(declare (salience 200))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 company|school)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vewana_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pay.clp 	pay2   "  ?id "  vewana_xe )" crlf))
)

;I'll pay you back for this deed.
;mEM wumhArI isa karanI kI wumheM sajZA xUMgA

(defrule pay3
(declare (salience 650))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
;(kriyA-for_saMbanXI  ?id ?id2)
;(id-root ?id2 deed)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sajZA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay3  "  ?id "  " ?id1 "  sajZA_xe  )" crlf))
)

;Her hard work paid off (rule modified by Nandini 6-09-13)
;usakI kadZI mehanawa acCe pariNAma lAI 

(defrule pay4
(declare (salience 360))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-word ?id2 work|gamble)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acCe_pariNAma_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay4  "  ?id "  " ?id1 "  acCe_pariNAma_lA  )" crlf))
)

;I'm sorry, I wasn't paying attention to what you were saying.
;They paid no attention to him.

(defrule pay5
(declare (salience 400))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 attention)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay5  "  ?id "  " ?id1 "  XyAna_xe  )" crlf))
)

;They always pay their rent on time.
;ve hameSA apanA kirAyA samaya par xewe hEz.
(defrule pay6
(declare (salience 500))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 fare|freight|hire|rent|£|pound|money|rupee)
(kriyA-object  ?id ?id1)
(or(kriyA-on_saMbanXI  ?id ?)(kriyA-for_saMbanXI  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay6  "  ?id "   xe  )" crlf))
)

;Are you paying in cash or by credit card?[oxford Advance lerner dictionary]
;kyA Apa nakaxa yA kredita kArda ke xvArA pEse_xe rahe hEM?
;I will pay for the tickets. (" I " Added in animate.txt)[oxford Advance lerner dictionary]
;mEM tikatoM ke lie pEse xUzgA.
(defrule pay7
(declare (salience 600))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(or(kriyA-in_saMbanXI  ?id ?)(kriyA-for_saMbanXI  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BugawAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pay.clp	pay7  "  ?id "    BugawAna_kara  )" crlf))
)

;Her parents paid for her to go to Canada.[oxford Advance lerner dictionary]
;उसके मां-बाप ने उसे कनाडा जाने के लिए पैसे दिए।
;Would you mind paying the taxi driver?
(defrule pay8
(declare (salience 350))
;(declare (salience 750))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
;(kriyA-samakAlika_kriyA  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEse_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pay.clp	pay8  "  ?id "    pEse_xe  )" crlf))
)

;We paid off our mortgage after fifteen years.[oxford Advance lerner dictionary]
;पंन्द्रह वर्षो बाद हमने अपना ऋण अदा किया।
(defrule pay9
(declare (salience 800))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off) 
(kriyA-upasarga  ?id ?id1)
(kriyA-after_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CudA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay9  "  ?id "  " ?id1 "  CudA  )" crlf))
)

;The crew were paid off as soon as the ship docked.[oxford Advance lerner dictionary]
;jaise hI jahAja baMxargAha meM rukA, nAvikoM ko pEse xiye gaye We.
;All the witnesses had been paid off.
;saBI sAkRiyoz ko pEse xIye gaye We.
(defrule pay10
(declare (salience 360))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 paise_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay10  "  ?id "  " ?id1 "  paise_xe  )" crlf))
)

;It is hard to make farming pay.[oxford Advance lerner dictionary]
;खेती लाभदायी बनाना कठिन है.
(defrule pay11
(declare (salience 980))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) farming)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABaxAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pay.clp	pay11  "  ?id "    lABaxAyI  )" crlf))
)


;It pays to keep up to date with your work.[oxford Advance lerner dictionary]
;yaha Apake kArya ke lie lABaxAyI howA hE.
;It would probably pay you to hire an accountant.[oxford Advance lerner dictionary]
;Apa ko eka leKAkAra ko niyukwa karanA samBavawaH lABaxAyI hogA.
(defrule pay13
(declare (salience 990))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kriyArWa_kriyA  ?id ?)(kriyA-vAkyakarma  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABaxAyI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pay.clp	pay13  "  ?id "    lABaxAyI_ho  )" crlf))
)

;We've paid out thousands of pounds in health insurance over the years.[oxford Advance lerner dictionary]
(defrule pay14
(declare (salience 800))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out) 
(kriyA-upasarga  ?id ?id1)
;(kriyA-after_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay14  "  ?id "  " ?id1 "  CukA  )" crlf))
)

;Crime doesn't pay anyone.[oxford Advance lerner dictionary]
;aparaXa kisIko lABaxAyI nahiM howA hE. 
(defrule pay15
(declare (salience 990))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 crime)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABaxAyI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pay.clp	pay15  "  ?id "    lABaxAyI_ho  )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;These are supposed to be the prints of Rama's sandals to which Bharat paid homage. [gyannidhi]
;ये राम के चप्पल के रेखा चित्र हैं जिन्हें भरत ने श्रद्दाञ्जलि अर्पित की . 
(defrule pay16
(declare (salience 400))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 homage|service|respect|honour|worship|tribute)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arpiwa_kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pay.clp	pay16  "  ?id "    arpiwa_kI  )" crlf))
)

;@@@ Added by Nandini(4-1-14)
;They will give us the money on one condition that we pay it back within six months.[via mail]
;ve hameM eka Sarwa para pEse xeMge ki hama CaH mahInoM meM yaha axA kareMge.
(defrule pay17
(declare (salience 700))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-within_saMbanXI  ?id ?id2)
(id-root ?id2 month)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 axA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay17  "  ?id "  " ?id1 "  axA_kara  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 11-1-2014
;All her hard work paid off in the end, and she finally passed the exam.[Cambridge]
;उसकी कङी मेहनत का अन्त में फल मिला, अौर उसने अन्ततः परीक्षा उत्तीर्ण की.
(defrule pay18
(declare (salience 700))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pala_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay18  "  ?id "  " ?id1 "  Pala_mila  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-1-2014
;We should be able to pay off the debt within two years. [Cambridge]
;हमें दो वर्ष के अन्दर उधार चुकाने में समर्थ होना चाहिये.
(defrule pay19
(declare (salience 710))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 off)
(kriyA-object  ?id ?id2)
(id-root ?id2 debt|money|bill|balance|due|debit|cash|loan)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pay.clp	pay19  "  ?id "  " ?id1 "  cukA  )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 27-1-2014
;She paid him a handsome compliment. [OALD]
;उसने उसे उचित सम्मान दिया . 
(defrule pay20
(declare (salience 5000))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 compliment|approval|praise|tribute)
(or(kriyA-object  ?id ?id1)(kriyA-object_2  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pay.clp	pay20  "  ?id "    xe  )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 27-1-2014
;If it were urged that the tax-payers of Bengal were too poor to be able to pay for the 
;advantages of such an improved education, the answer of the Commission was that, Bengal 
;was too poor to be able to afford the waste of ability which was caused by the. present system. [gyannidhi]
;यदि इस बात पर ज़ोर दिया जाता कि बंगाल के करदाता इतनी विकसित  शितक्षा प्रणाली के लाभ की कीमत चुकाने के लिए बपहुत निर्धन थे, 
;तो आयोग का उत्तर था कि बंगाल इतना निर्धन है कि वह वर्तमान पद्धति के कारण होने वाले क्षमता के अपव्यय को बर्दाश्त नहीं कर सकता।
(defrule pay21
(declare (salience 5000))
(id-root ?id pay)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kImawa_cukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pay.clp	pay21  "  ?id "    kImawa_cukA  )" crlf))
)



;===============Sentence-for-Discussion===========

;Crime doesn't pay anyone.[oxford Advance lerner dictionary]
;aparAXa lABaxAyI nahIM howA.

;We've paid out thousands of pounds in health insurance over the years.

;=========Extra-sentences========
;I don't pay you to sit around all day doing nothing!
;Would you mind paying the taxi driver?
;She pays pound 200 a week for this apartment.
;He still hasn't paid me the money .
;I'll pay for the tickets.
;Her hard work paid off.
;The gamble paid off.

