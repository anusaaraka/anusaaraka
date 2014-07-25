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
;Galileo thus, arrived at a new insight on motion that had [eluded] Aristotle and those who followed him.      ;physics
;इस प्रकार गैलीलियो को गति के सम्बन्ध में एक नई अन्तर्दृष्टि प्राप्त हुई,जो अरस्तू तथा उनके अनुयायिओं को समझ में नहीं आई .

(defrule elude0
(declare (salience 5000))
(id-root ?id elude)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa_nahIM_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elude.clp 	elude0   "  ?id "  samaJa_nahIM_A )" crlf))
)

;They had minor breakthroughs but real success eluded them.  ;cald
;उनके पास मामूली सफलताए थी लेकिन असली सफलता उन्हें नहीं मिल पाई.
;Finally he remembered the tiny detail that had eluded him the night before. ;oald
;अंत में उसे जानकारी याद आ गया जो उसे रात से पहले नहीं मिल पाई थी  .
;The cause of the disease continues to elude researchers. ;m-w
;बीमारी का कारण शोधकर्ताओं को मिल नहीं पा रहा  है.
;The gold medal continues to elude her.  ;cald
;स्वर्ण पदक उसे नहीं मिल पा रहा है.

(defrule elude1
(declare (salience 4900))
(id-root ?id elude)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kriyA_viSeRaNa  ?id ?id1)(kriyA-kAlavAcI  ?id ?id1)(kriyA-kriyArWa_kriyA  ?id1 ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila_nahIM_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elude.clp 	elude1   "  ?id "  mila_nahIM_pA )" crlf))
)

;He tried to elude the security men by sneaking through a back door.  ;old
;उन्होंने पीछे के दरवाजे के माध्यम से चुपके से सुरक्षाकर्मियों से बचकर निकलने की कोशिश की.
;The killer was able to elude the police.  ;m-w
;हत्यारा पुलिस से बचकर निकलने में सक्षम हुआ.
;The two men managed to elude the police for six weeks. ;oald
;दो आदमी छह सप्ताह तक पुलिस से  बचकर निकलने में कामयाब रहे.

(defrule elude2
(declare (salience 5000))
(id-root ?id elude)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-by_saMbanXI  ?id ?id1)(and(kriyA-object  ?id ?id1)(id-word ?id1 police)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacakara_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elude.clp 	elude2   "  ?id "  bacakara_nikala )" crlf))
)

;We need to ensure that bad cases do not elude tough penalties.  ;old
;हम यह सुनिश्चित करने की जरूरत है कि बुरे मामले कठिन दंड से नहीं बचेगे.
(defrule elude3
(declare (salience 5000))
(id-root ?id elude)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elude.clp 	elude3   "  ?id "  baca )" crlf))
)


;----------------------default rules------------------------------

;He was extremely tired but sleep eluded him.  ;oald
;वह बहुत थक गया था लेकिन नींद उसे नहीं मिल पाई.
;They're a popular band but chart success has eluded them so far. ;oald
;वे एक लोकप्रिय बैंड रहे हैं, लेकिन चार्ट सफलता अब तक उन्हें नहीं मिल पाई है.
(defrule elude4
(declare (salience 4000))
(id-root ?id elude)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila_nahIM_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elude.clp 	elude4   "  ?id "  mila_nahIM_pA )" crlf))
)


(defrule elude5
(declare (salience 3000))
(id-root ?id elude)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila_nahIM_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elude.clp 	elude5   "  ?id "  mila_nahIM_pA )" crlf))
)
