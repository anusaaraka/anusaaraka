
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


;He concluded by wishing everyone a safe trip home.
;उसने सबको सुखद यात्रा की शुभकामनाएँ देते हुये समाप्त किया
;The commission concluded its investigation last month.
;आयोग ने पिछले महीने उसकी जाँच-पड़ताल समाप्त करी 

(defrule conclude0
(declare(salience 4500))
(id-root ?id conclude)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-word ?id1 speech|investigation)
;(kriyA-subject ?id ?id1)
;(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conclude.clp 	conclude0   "  ?id "  samApwa_kara )" crlf))
)

(defrule conclude1
(declare(salience 3500))
(id-root ?id conclude)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-by_saMbanXI ?id ?)(kriyA-with_saMbanXI ?id ?))
;(kriyA-subject ?id ?id1)
;(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conclude.clp 	conclude1   "  ?id "  samApwa_kara )" crlf))
)


;The concert concluded with a rousing chorus.
;संगीत कार्यक्रम एक उत्साहपूर्ण कोरस के साथ समाप्त हुआ 
;The programme concluded with Stravinsky's ‘Rite of Spring’
;कार्यक्रम  Stravinsky के ‘Rite of Spring’ के साथ समाप्त हुआ
(defrule conclude2
(declare(salience 3800))
(id-root ?id conclude)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object ?id ?))
(not(kriyA-vAkyakarma ?id ?)) 
(kriyA-subject ?id ?id1)
(id-root ?id1 concert|programme)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conclude.clp 	conclude2   "  ?id "  samApwa_ho )" crlf))
)


;They concluded a treaty with Turkey.
;उन्होंने तुर्की के साथ सन्धि पर हस्ताक्षर किये
;A trade agreement was concluded between the two countries.
;दोनों देशों के बीच एक व्यापार समझौते पर  हस्ताक्षर किये गये
(defrule conclude3
(declare(salience 4000))
(id-root ?id conclude)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object ?id ?id1)(kriyA-subject ?id ?id1))
(id-root ?id1 agreement|treaty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haswAkRara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conclude.clp 	conclude3   "  ?id "  haswAkRara_kara )" crlf))
)

;What do you conclude from that?
;आप उससे क्या निष्कर्ष निकालते हैं? 
;The jury concluded from the evidence that the defendant was innocent.
;जूरी ने प्रमाण से निष्कर्ष निकाला कि प्रतिवादी निर्दोष था
;He concluded from their remarks that they were not in favour of the plan.
;उसने उनकी टिप्पणियों से निष्कर्ष निकाला कि वे योजना के पक्ष में नहीं थे . 
(defrule conclude4
(declare(salience 4000))
(id-root ?id conclude)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRkarRa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conclude.clp 	conclude4   "  ?id "  niRkarRa_nikAla )" crlf))
)

;The report concluded that the cheapest option was to close the laboratory.
;रिपोर्ट ने निष्कर्ष निकाला कि सबसे अधिक सस्ता विकल्प प्रयोगशाला बंद करने वाला था 
;He concluded from their remarks that they were not in favour of the plan.
;उसने उनकी टिप्पणियों से निष्कर्ष निकाला कि वे योजना के पक्ष में नहीं थे . 
(defrule conclude5
(declare(salience 4500))
(id-root ?id conclude)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi ? ?id2)
(kriyA-vAkyakarma ?id ?id1)
(kriyA-vAkya_viBakwi ?id1 ?id2)
(id-root ?id2 that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRkarRa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conclude.clp 	conclude5   "  ?id "  niRkarRa_nikAla )" crlf))
)
;***************************************** DEFAULT RULE **********************************************************

;The discussions continued late into the night, but nothing was concluded
;चर्चाएँ देर रात तक चलती रहीं, परन्तु कुछ भी निष्कर्ष नहीं निकला
(defrule conclude6
(declare(salience 0))
(id-root ?id conclude)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRkarRa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conclude.clp 	conclude6   "  ?id "  niRkarRa_nikAla )" crlf))
)

;**************************************************************** EXAMPLES ******************************************************************

;They concluded a treaty with Turkey.[oald]
;A trade agreement was concluded between the two countries.[oald]
;The jury concluded from the evidence that the defendant was innocent.[cambridge]
;The discussions continued late into the night, but nothing was concluded.[cambridge]
;What do you conclude from that?[oald]
;The report concluded that the cheapest option was to close the laboratory.[oald]
;He concluded from their remarks that they were not in favour of the plan.[oald]
;It was concluded that the level of change necessary would be low.[oald]
;Thus, whenever you find that the net electric flux through a closed surface is zero, we conclude that the total charge contained in the closed surface is zero.[physics parralel corpus]

;Let me make just a few concluding remarks.[oald]
;The programme concluded with Stravinsky's ‘Rite of Spring’.[oald]
;He concluded by wishing everyone a safe trip home.[oald]
;The commission concluded its investigation last month.[oald]
;She concluded the speech by reminding us of our responsibility.[cambridge] 
;Before I conclude, I'd like to thank you all for coming.[cambridge]
;The concert concluded with a rousing chorus.[cambridge]

;‘So it should be safe to continue,’ he concluded.[oald]
;‘Anyway, she should be back soon,’ he concluded.[oald]

;She concluded her speech with a quotation from Shakespeare.[oald][result may come incorrect due to wrong parse]

