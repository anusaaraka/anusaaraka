;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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

;@@@ Added by Pramila(BU)
;These figures demonstrate the size of economic problem facing country.
;ये आंकड़े देश के सामने आर्थिक समस्या के आकार को प्रदर्शित करते है.
;Research has demonstrated that babies can recognise their mother's voice.
;अनुसंधान  ने प्रदर्शित किया कि बच्चें उनकी माँ की आवाज को पहचान सकते हैं .
;These problems demonstrate importance of strategic planning.
;ये समस्याएं रणनीतिक योजना के महत्व को प्रदर्शित करती है.
(defrule demonstrate0
(declare (salience 4900))
(id-root ?id demonstrate)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject ?id ?id1)(kriyA-object ?id ?id1))
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demonstrate.clp 	demonstrate0   "  ?id " praxarSiwa_kara  )" crlf))
)

;@@@ Added by Pramila(BU)
;She described the dance step, then took a partner and demonstrated.
;उसने नृत्य कदम का वर्णन किया,फिर एक साथी लिया और प्रदर्शन किया.
;The salesperson plugged in and demonstrated the vacuum cleaner.
;विक्रेता में खामियों को दूर किया और वैक्यूम क्लीनर का प्रदर्शन किया.
;He demonstrated the laws of physics with laboratory equipment.
;उन्होंने प्रयोगशाला के उपकरण के साथ भौतिक विज्ञान के नियमों का प्रदर्शन किया.
;I want to demonstrate the good qualities of the new SURF EXCEL before you.
;मैं  आपके सामने नए सर्फ एक्सल के अच्छे गुणों का प्रदर्शन करना चाहते हूं .
;Thousands of people gathered to demonstrate against the new proposals.
;हजारों लोग नए प्रस्तावों के खिलाफ प्रदर्शन करने के लिए एकत्र हुए.
;Thousands demontrasted in front of the Secratariate against the governments policy of liberalization.
;हजारों  ने Secratariate के सामने सरकारों की उदारीकरण की नीति के खिलाफ  प्रदर्शन किया.

(defrule demonstrate1
(declare (salience 4900))
(id-root ?id demonstrate)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-subject ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))(kriyA-against_saMbanXI  ?id ?id2))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demonstrate.clp 	demonstrate1   "  ?id " praxarSana_kara  )" crlf))
)

;@@@ Added by Pramila(BU)
;He has demonstrated a genuine interest in the project.
;उसने परियोजना में एक वास्तविक रूचि व्यक्त की.
;His answer demonsrated the complete lack of understanding of question.
;उसके जवाब ने सवाल की समझ के पूर्ण अभाव को व्यक्त किया.

(defrule demonstrate2
(declare (salience 5000))
(id-root ?id demonstrate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-word ?id1 lack|interest)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demonstrate.clp 	demonstrate2   "  ?id " vyakwa_kara  )" crlf))
)

;@@@ Added by Pramila(BU) on 29-03-2014
;Students of the Dattatreya city Municipal corporation secondary school demonstrated their imagination power by creating the fictitious fort "Duttgarh". ;news dev corpus
;महानगर पालिका अंतर्गत दत्तात्रय नगर माध्यमिक स्कूल के विद्यार्थियों ने काल्पनिक किला 'दत्तगढ़' बनाकर अपनी कल्पनाशक्ति का परिचय दिया।
(defrule demonstrate3
(declare (salience 5000))
(id-root ?id demonstrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id2)
(id-cat_coarse ?id2 verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricaya_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demonstrate.clp 	demonstrate3   "  ?id " paricaya_xe  )" crlf))
)

;---------------------------------------------------default rules----------------------------------------------------------------------------
;@@@ Added by Pramila(BU)
(defrule demonstrate4
(declare (salience 4200))
(id-root ?id demonstrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demonstrate.clp 	demonstrate4   "  ?id "  xarSA )" crlf))
)



;@@@ Added by Pramila(BU)
(defrule demonstrate5
(declare (salience 4000))
(id-root ?id demonstrate)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demonstrate.clp 	demonstrate5   "  ?id "  xiKA )" crlf))
)
