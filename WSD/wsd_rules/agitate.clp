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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali vidyapith)7-Feb-2014
;Political groups agitating for social change.[oald]
;राजनीतिक समूह सामाजिक परिवर्तन के लिए आंदोलन/अभियान करते हुए 
;As a young man, he had agitated against the Vietnam war.[cam]
;अपनी युवावस्था में, उसने वेतनाम युद्ध के विरुद्ध आंदोलन किया था . 
(defrule agitate1
(declare (salience 4000))
(id-root ?id agitate)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-for_saMbanXI ?id ?)(kriyA-against_saMbanXI ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AMxolana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agitate.clp 	agitate1   "  ?id "  AMxolana_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali vidyapith)7-Feb-2014
;I didn't want to agitate her by telling her.[cambridge]
;मैं उसको बता कर परेशान नहीं करना चाहता था
(defrule agitate2
(declare (salience 3000))
(id-root ?id agitate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ? ?id)
(to-infinitive  ?id1 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pareSAna_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " agitate.clp	agitate2  "  ?id "  " ?id1 "  pareSAna_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " agitate.clp    agitate2   "  ?id " ko )" crlf)
)
)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali vidyapith)7-Feb-2014
;She became very agitated when her son failed to return home.[cam]
;वह बहुत चिंतित हो गयी जब उसका बेटा घर नहीं आया
(defrule agitate3
(declare (salience 3000))
(id-word ?id agitated)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(kriyA-subject  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciMwiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agitate.clp 	agitate3   "  ?id "  ciMwiwa )" crlf))
)




;******************************DEFAULT RULES****************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali vidyapith)7-Feb-2014
;Agitate the mixture to dissolve the powder.[oald]
;पाउडर को घोलने के लिये मिश्रण को हिलाओ.
;Pour the powder into the solution and agitate it until the powder has dissolved.[cambridge]
;पाउडर को मिश्रण में डालो और उसको तब तक हिलाओ जब तक पाउडर पूरी तरह घुल ना जाये
(defrule agitate0
(declare (salience 0))
(id-root ?id agitate)
?mng <-(meaning_to_be_decided ?id)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agitate.clp 	agitate0   "  ?id "  hilA )" crlf))
)


;*******************************EXAMPLES***********************************

;Political groups agitating for social change.
;The unions continue to agitate for higher pay.
;As a young man, he had agitated against the Vietnam war.
;Her family are agitating to have her transferred to a prison in the UK.
;Her family are agitating to have her transferred to a prison in the UK.
;This remark seemed to agitate her guest.
;I didn't want to agitate her by telling her.
;She became very agitated when her son failed to return home.
;Agitate the mixture to dissolve the powder.
;Pour the powder into the solution and agitate it until the powder has dissolved.

