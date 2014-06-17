;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01-March-2014
;She banged on the door angrily.[oald]
;उसने दरवाजे पर जोर से मारा
;The baby was banging the table with his spoon.[oald]
(defrule bang3
(declare (salience 3000))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(or(kriyA-on_saMbanXI  ?id ?)(kriyA-with_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_se_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bang.clp 	bang3   "  ?id " jora_se_mAra  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01-March-2014
;He banged the money down on the counter.[oald]
;उसने काउण्टर पर पैसा जोर से पटका
(defrule bang4
(declare (salience 3000))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jora_se_patakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bang.clp	  bang4  "  ?id "  " ?id1 " jora_se_patakA  )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01-March-2014
;She tripped and banged her knee on the desk.[oald]
;वह फिसल गयी और मेज पर उसका घुटना जोर से टकराया
(defrule bang5
(declare (salience 3000))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-object ?id ?id1)
(id-word ?id1 knee|head|hand|leg)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_se_takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bang.clp 	bang5   "  ?id " jora_se_takarA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01-March-2014
;I banged into a chair and hurt my leg.[oald]
;मैं एक कुर्सी से जोर से टकराया और मेरे पैर पर चोट लग गयी
(defrule bang6
(declare (salience 3000))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-into_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_se_takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bang.clp 	bang6   "  ?id " jora_se_takarA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01-March-2014
;He keeps banging on about his new job.[oald]
;वह अपने नये काम के बारे में बाते करके पकाता रहता है
(defrule bang7
(declare (salience 3000))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 on)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwe_karake_pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bang.clp	  bang7  "  ?id "  " ?id1 " bAwe_karake_pakA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01-March-2014
;They have been banged up for something they didn't do.[oald]
;उन्हें उसके लिये गिरफ्तार किया गया है जो उन्होंने किया ही नहीं है
(defrule bang8
(declare (salience 3500))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-subject  ?id ?sub)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(not(kriyA-object  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 giraPwAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bang.clp	  bang8  "  ?id "  " ?id1 " giraPwAra_kara )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01-March-2014
;He banged up his truck.[oald]
;उसने उसके ट्रक को नुकसान पहुँचाया
(defrule bang9
(declare (salience 3000))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nukasAna_pahuzcA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bang.clp	  bang9  "  ?id "  " ?id1 "  nukasAna_pahuzcA  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " bang.clp	  bang9   "  ?id " ko )" crlf) 
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;I banged up my knee pretty badly.[oald]
;मैंने मेरे घुटने को काफी बुरी तरह से चोट पहुँचायी 
(defrule bang10
(declare (salience 3000))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?id2)
(id-word ?id2 knee)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cota_pahuzcA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bang.clp	  bang10  "  ?id "  " ?id1 "  cota_pahuzcA  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " bang.clp	  bang10   "  ?id " ko )" crlf) 
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;A window was banging somewhere .[oald]
;खिडकी कहीं जोर से खड़क रही थी
(defrule bang11
(declare (salience 3000))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-subject  ?id ?id1)
(id-word ?id1 window)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_se_KadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bang.clp 	bang11   "  ?id " jora_se_KadZaka )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;The party went with a bang.[oald]
;पार्टी बहुत शानदार तरीके से गई . 
(defrule bang12
(declare (salience 3000))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-with_saMbanXI  ?kri ?id)
(id-root ?kri go|end)
(id-word =(- ?id 2) with)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 2) bahuwa_SAnxAra_warIke_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "   bang.clp 	bang12  "  ?id "  "  (- ?id 2) " bahuwa_SAnxAra_warIke_se )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;A balloon suddenly went bang.[oald]
;गुब्बारा बहुत तेज आवाज के साथ फटा 
(defrule bang13
(declare (salience 3000))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-object  ?kri ?id)
(id-root ?kri go)
(id-word =(- ?id 2) with)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 2) bahuwa_weja_AvAja_ke_sAwa_PatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "   bang.clp 	bang13  "  ?id "  "  (- ?id 2) " bahuwa_weja_AvAja_ke_sAwa_PatA )" crlf)
)
)

;**************************DEFAULT RULES********************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01-March-2014
;The door swung shut with a bang.[oald]
;दरवाजा एक तेज आवाज के साथ बंद हो गया.
(defrule bang0
(declare (salience 0))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bang.clp 	bang0   "  ?id " weja_AvAja  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01-March-2014
;Don't bang the door when you go out![oald]
;दरवाजा तेज आवाज के साथ /जोर से  मत  बंद करना जब आप बाहर जाओ!  
(defrule bang1
(declare (salience 0))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_se_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bang.clp 	bang1   "  ?id " jora_se_banxa_kara )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01-March-2014
;You're bang on time, as usual.[oald]
;तुम पूरी तरह से समय पर हो, हमेशा की तरह.
(defrule bang2
(declare (salience 0))
(id-root ?id bang)
?mng <-(meaning_to_be_decided ?id) 
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrI_waraha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bang.clp 	bang2   "  ?id " pUrI_waraha_se  )" crlf)
)
)
