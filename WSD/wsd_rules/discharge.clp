;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################
;@@@ Added by Pramila(BU) on 08-01-2014
;The court discharged him.     ;shiksharthi
;न्यायालय ने उसे बरी कर दिया.
(defrule discharge0
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 court)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barI_kara_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge0   "  ?id "  barI_kara_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  discharge.clp      discharge0   "  ?id " ne )" crlf))
)


;@@@ Added by Pramila(BU) on 08-01-2014
;The wound discharged pus.           ;shiksharthi
;घाव से मवाद निकला.
(defrule discharge1
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 wound)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge1   "  ?id "  nikala )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  discharge.clp      discharge1   "  ?id " se )" crlf))
)



;@@@ Added by Pramila(BU) on 08-01-2014
;He discharged the gun suddenly.     ;shiksharthi
;उसने एकाएक बंदूक दाग दी.  
;The police stated that some 50 rounds had been discharged.       ;cald
;पुलिस ने बताया कि 50 कुछ गोलियाँ दाग दी गई थी.   
(defrule discharge2
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 gun|round)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge2   "  ?id "  xAga_xe )" crlf))
)



;@@@ Added by Pramila(BU) on 08-01-2014
;You must discharge your debt.       ;shiksharthi
;तुम्हे अपना ऋण भुगतान करना चाहिए. 
(defrule discharge3
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 debt|paymnet)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BugawAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge3   "  ?id "  BugawAna_kara )" crlf))
)



;@@@ Added by Pramila(BU) on 08-01-2014
;Patients were being discharged from the hospital too early.    ;oald
;मरीजों को इतनी जल्दी अस्पताल से छुट्टी दी जा रही थी.
(defrule discharge4
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-root ?id1 hospital)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CuttI_xe))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge4   "  ?id "  CuttI_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  discharge.clp      discharge4   "  ?id " ko )" crlf))
)

;@@@ Added by Pramila(BU) on 08-01-2014
;She had discharged herself against medical advice. ;oald
;वह चिकित्सीय सलाह के खिलाफ खुद को छुट्टी दे चुकी थी.
(defrule discharge5
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?id2)
(id-root ?id2 medical)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CuttI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge5   "  ?id "  CuttI_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 08-01-2014
;He was discharged from the army following his injury.    ;oald
;उसे उसकी चोट के बाद सेना से निकाल दिया गया.
;She was discharged from the police force for bad conduct.     ;oald
;उसे बुरे आचरण के लिए पुलिस बल से निकाल दिया गया.
(defrule discharge6
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(or(viSeRya-for_saMbanXI  ?id1 ?id2)(viSeRya-following_saMbanXI  ?id1 ?id2))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge6   "  ?id "  nikAla_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 08-01-2014
;More than half of all prisoners discharged are reconvicted within two years.        ;cald
;बरी कर दिए गए कैदियों में से आधे से ज्यादा ने दो वर्ष में दुबारा अपराध कर दिया.
(defrule discharge7
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barI_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge7   "  ?id "  barI_kara_xe 
)" crlf))
)

;@@@ Added by Pramila(BU) on 08-01-2014
;The river is diverted through the power station before discharging into the sea.  ;oald
;नदी को समुद्र में निर्वहन होने से पहले पावर स्टेशन के माध्यम से मोड़ दिया गया है.

(defrule discharge8
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-before_saMbanXI  ?id1 ?id)
(kriyA-into_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge8   "  ?id "  mila )" crlf))
)

;@@@ Added by Pramila(BU) on 08-01-2014
;The factory was fined for discharging chemicals into the river.         ;oald
;कारखाने पर नदी में रसायन के निर्वहन करने के लिए जुर्माना लगाया गया.
(defrule discharge9
(declare (salience 4700))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvahana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge9   "  ?id "  nirvahana_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 08-01-2014
;the discharge of debts           ;oald
;ऋण का भुगतान
;Arrangements have been made for the discharge of mortgage payments.  ;oald
;गिरवी अदायगी के भुगतान की व्यवस्था के दी गई है.
(defrule discharge10
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1  debt|obligation|payment)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BugawAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge10   "  ?id "  BugawAna )" crlf))
)

;@@@ Added by Pramila(BU) on 08-01-2014
;Large amounts of dangerous waste are discharged daily by the factory.        ;cald
;फैक्ट्री द्वारा रोजाना बड़ी मात्रा में खतरनाक  कूड़ा-कचरा निकाला जाता है.
(defrule discharge11
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge11   "  ?id "  nikAla )" crlf))
)
;@@@ Added by Pramila(BU) on 08-01-2014
;Discharge of duties/obligations         ;oald
;कर्त्तव्यों/दायित्वों का पालन
(defrule discharge12
(declare (salience 5000))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 duty|obligation)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge12   "  ?id "  pAlana )" crlf))
)
;@@@ Added by Pramila(BU) on 08-01-2014
;If the authority is to discharge its legal duty to house the homeless, it needs government support.     ;cald
;यदि अधिकारी को बेघरों को बसाने के लिए अपने कानूनी कर्तव्य को निभाना है, तो इसे सरकार के समर्थन की जरूरत है.
;Six months before his actual date of retirement, he decided to retire as he felt that his state of health was such that he would not be 
;fit to discharge his responsibilities to his satisfaction.         ;gyannidhi
;अवकाश ग्रहण करने की वास्तविक तारीख से 6 महीने पहले ही उन्होंने अवकाश ले लेने का फैसला किया क्योंकि उनका विचार था कि अपने स्वास्थ्य के कारण अपनी ज़िम्मेदारियों को वे संतोषजनक ढंग
;से निभाने में समर्थ नहीं होंगे।
(defrule discharge13
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 duty|obligation|responsibility)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niBAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge13   "  ?id "  niBAnA )" crlf))
)

;@@@ Added by Pramila(BU) on 08-01-2014
;The judge gave him a one-year conditional discharge.     ;cald
;न्यायाधीश ने उसे एक साल की सशर्त रिहाई दी.
(defrule discharge14
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 conditional)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rihAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge14   "  ?id "  rihAI )" crlf))
)

;@@@ Added by Pramila(BU) on 08-01-2014
;The soldier received a dishonourable discharge for a disciplinary offence.     ;cald
;सैनिक को एक अनुशासनात्मक अपराध के लिए एक अपमानपूर्ण बर्खास्तगी मिली.
(defrule discharge15
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1 dishonourable)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barKAswagI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge15   "  ?id "  barKAswagI )" crlf))
)
;-------------------default rules-----------------------------
;@@@ Added by Pramila(BU) on 08-01-2014
;The ship discharged the coal.  ;shiksharthi
;जहाज से कोयला उतारा.
(defrule discharge16
(declare (salience 4000))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge16   "  ?id "  uwAra )" crlf))
)
;@@@ Added by Pramila(BU) on 08-01-2014
;Thousands of fish were killed as a result of a discharge of poisonous chemicals from a nearby factory.            ;cald
;नजदीकी कारखाने द्वारा विषैले रसायनों के प्रवाह से हजारों मछलियाँ मारी गई.
(defrule discharge17
(declare (salience 4000))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discharge.clp 	discharge17   "  ?id "  pravAha )" crlf))
)



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_discharge5
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?id1)
(subject-subject_samAnAXikaraNa ?id1 ?id2)
(id-root ?id2 medical)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CuttI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " discharge.clp   sub_samA_discharge5   "   ?id " CuttI_xe )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_discharge5
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?id1)
(object-object_samAnAXikaraNa ?id1 ?id2)
(id-root ?id2 medical)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CuttI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " discharge.clp   obj_samA_discharge5   "   ?id " CuttI_xe )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_discharge14
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 conditional)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rihAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " discharge.clp   sub_samA_discharge14   "   ?id " rihAI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_discharge14
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 conditional)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rihAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " discharge.clp   obj_samA_discharge14   "   ?id " rihAI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_discharge15
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 dishonourable)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barKAswagI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " discharge.clp   sub_samA_discharge15   "   ?id " barKAswagI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_discharge15
(declare (salience 4800))
(id-root ?id discharge)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 dishonourable)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barKAswagI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " discharge.clp   obj_samA_discharge15   "   ?id " barKAswagI )" crlf))
)
