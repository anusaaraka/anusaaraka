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


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)8-Feb-2014
;Footnotes are given at the bottom of each page.[oald]
;पादटिप्पणी हर एक पृष्ठ के निचले भाग में दिए गये हैं . 
(defrule bottom3
(declare (salience 4000))
(id-root ?id bottom)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ? ?id)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_nicale_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bottom.clp  	bottom3   "  ?id "  ke_nicale_BAga )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)8-Feb-2014
;The book I want is right at the bottom.[oald]
;वह पुस्तक जो मैं चाहता हूँ  ठीक सबसे नीचे है . 
(defrule bottom4
(declare (salience 4000))
(id-root ?id bottom)
?mng <-(meaning_to_be_decided ?id)
(id-last_word ?id bottom)
(viSeRya-at_saMbanXI  ?id1 ?id)
(id-word ?id1 right)
(id-word =(+ ?id1 1) at)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id1 1) sabase_nIce))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bottom.clp  	bottom4  "  ?id "  " (+ ?id1 1) "   sabase_nIce )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)8-Feb-2014
;I went to the school at the bottom of our street.[oald]
;मैं हमारी सड़क के दूसरे छोर पर स्थित विद्यालय में गया . 
;There was a stream at the bottom of the garden.[oald]
;उद्यान के दूसरे छोर पर एक जलधारा थी . 
(defrule bottom5
(declare (salience 4000))
(id-root ?id bottom)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 street|garden|lane|road)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsare_Cora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bottom.clp  	bottom5   "  ?id "  xUsare_Cora )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)8-Feb-2014
;A battle between the teams at the bottom of the league.[oald]
;सङ्घ में अंतिम स्थान की टीमों के बीच लड़ाई . 
;I was always bottom of the class in math.[oald]
;मैं गणित में हमेशा कक्षा में अंतिम स्थान पर रहता था 
(defrule bottom6
(declare (salience 4000))
(id-root ?id bottom)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 league|class)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) meM_AMwima_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bottom.clp  	bottom6  "  ?id "  " (+ ?id1 1) "  meM_AMwima_sWAna )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)8-Feb-2014
;We need to find out what lies at the bottom of these fears.[oald]
;हमें पता करने की जरूरत है कि इन आशंकाओं के पीछे क्या कारण है . 
(defrule bottom7
(declare (salience 4500))
(id-root ?id bottom)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?kri ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 fear)
(id-word =(+ ?kri 1) at)
=>
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?kri 1) ke_pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bottom.clp  	bottom7  "  ?id "  " (+ ?kri 1) "   ke_pICe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)8-Feb-2014
;We came bottom with 12 points.[oald]
;हम १२ अंको के साथ अंतिम स्थान पर आये
(defrule bottom8
(declare (salience 4000))
(id-root ?id bottom)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) came)
(kriyA-with_saMbanXI  =(- ?id 1) ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwima_sWAna_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bottom.clp  	bottom8   "  ?id "  aMwima_sWAna_para )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)8-Feb-2014
;The recession is finally beginning to show signs of bottoming out.[oald]
;आर्थिक मन्दी अन्ततः अंत होने के संकेत देना शुरु कर रही है . 
(defrule bottom9
(declare (salience 4000))
(id-root ?id bottom)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aMwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bottom.clp  	bottom9  "  ?id "  " ?id1 "   aMwa_ho )" crlf))
)

;***************************DEFAULT RULES******************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)8-Feb-2014
;He dived in and hit his head on the bottom.[oald]
;उसने डुबकी मारी और तल पर उसका सर टकराया .  
(defrule bottom0
(declare (salience 0))
(id-root ?id bottom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bottom.clp  	bottom0   "  ?id "  wala )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)8-Feb-2014
(defrule bottom1
(declare (salience -100))
(id-root ?id bottom)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bottom.clp  	bottom1   "  ?id " nIce )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)8-Feb-2014
;Put your clothes in the bottom drawer.[oald]
;अपने कपड़े सबसे नीचे वाली  दराज़ में रखो
(defrule bottom2
(declare (salience 0))
(id-root ?id bottom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabase_nIce_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bottom.clp  	bottom2   "  ?id "  sabase_nIce_vAlA )" crlf))
)
