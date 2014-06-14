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

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)3-Feb-2014
;It is reasonable to assume that the economy will continue to improve.[oald]
;यह सोचना पर्याप्त है कि अर्थ प्रबन्धन सुधरना जारी रहेगा . 
(defrule assume1
(declare (salience 4000))
(id-root ?id assume)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ? ?id)
(kriyA-vAkyakarma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assume.clp 	assume1   "  ?id "  soca )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)3-Feb-2014
;Don't always assume the worst.[oald]
;हमेशा बहुत बुरा मत सोचिए  . 
(defrule assume2
(declare (salience 4500))
(id-root ?id assume)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?)
(AjFArWaka_kriyA  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assume.clp 	assume2   "  ?id "  soca )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)3-Feb-2014
;I had assumed him to be a Belgian.[oald]
;मैंने उसको बेल्जियन वासी समझा था . 
(defrule assume3
(declare (salience 4500))
(id-root ?id assume)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(kriyA-kqxanwa_karma  ?id ?id1)
(id-root ?id1 be)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " assume.clp 	assume3  "  ?id "  " ?id1 "   samaJa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)3-Feb-2014
;The court assumed responsibility for the girl's welfare.[oald]
;अदालत ने लडकी की देखभाल का उत्तरदायित्व लिया . 
;Rebel forces have assumed control of the capital.[oald]
;विद्रोही बल राजधानी के ऊपर नियन्त्रण ले चुके हैं . 
(defrule assume4
(declare (salience 4000))
(id-root ?id assume)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assume.clp 	assume4   "  ?id "  le )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)3-Feb-2014
;Under Asutosh the Calcutta University assumed a cosmopolitan character.[gyananidhi]
;आशुतोष के नेतृत्व में कलकत्ता विश्वविद्यालय ने सही राष्ट्रीय स्वरूप प्राप्त किया।
;Without maps or any direct knowledge of the Russian southern coast, the enterprise assumed the character of an adventure from the voyages of discovery. [coca]
;नक्शे या रूसी दक्षिणी तट के किसी भी प्रत्यक्ष ज्ञान के बिना उद्यम ने समुद्री यात्राओं की खोज से एक साहसिक कार्य का चरित्र प्राप्त किया . 
(defrule assume5
(declare (salience 4000))
(id-word ?id assumed)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj character)
(or (samAsa_viSeRya-samAsa_viSeRaNa  ?obj ?)(viSeRya-of_saMbanXI  ?obj ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assume.clp 	assume5   "  ?id "  prApwa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)3-Feb-2014
;He assumed an air of concern.[oald]
;उसने चिंता का ढोंग किया
;He assumed a look of indifference but I knew how he felt.[cambridge]
;उसने उदासीनता का ढोंग किया परन्तु मुझे पता था वह कैसा महसूस कर रहा है
(defrule assume7
(declare (salience 4000))
(id-word ?id assumed)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj look|air)
(viSeRya-of_saMbanXI  ?obj ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DoMga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assume.clp 	assume7   "  ?id "  DoMga_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)3-Feb-2014
;Moving to a different town, he assumed a false name.[cambridge]
;एक अलग नगर में जाकर, उसने एक झूठा नाम रखा .
(defrule assume8
(declare (salience 4000))
(id-word ?id assumed)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj name)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assume.clp 	assume8   "  ?id "  raKa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)3-Feb-2014
;During the investigation, two detectives assumed the identities of antiques dealers.[cambridge]
;तहक़ीक़ात के दौरान, दो जासूसों ने अनोखा समान बेचने वाले व्यापारियों की पहचान धारण कीं . 
(defrule assume9
(declare (salience 4000))
(id-word ?id assumed)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj identity)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XAraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assume.clp 	assume9   "  ?id "  XAraNa_kara )" crlf))
)

;****************DEFAULT RULES***************************************


;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)3-Feb-2014
;It is generally assumed that stress is caused by too much work.[oald]
;यह आम तौर पर माना जाता है कि तनाव बहुत ज्यादा काम के कारण होता है .
(defrule assume0
(declare (salience 0))
(id-root ?id assume)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assume.clp 	assume0   "  ?id "  mAna )" crlf))
)

;****************EXAMPLES**********************************************
