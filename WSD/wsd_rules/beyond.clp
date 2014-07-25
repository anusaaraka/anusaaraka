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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;I'm afraid physics is completely beyond me.
;मुझे डर है भौतिक विज्ञान मेरी समझ के पार है
;How you could ask a question like that after the statement she just made is beyond me.
;उसके इस तरह के बयान के बाद आप इस तरह का सवाल कैसे पूछ सकते है यह मेरी समझ के पार है.
(defrule beyond0
(declare (salience 4000))
(id-root ?id beyond)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) me)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa_ke_pAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beyond.clp 	beyond0   "  ?id "  samaJa_ke_pAra )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;The repercussions will be felt throughout the industry and beyond .
; प्रभाव उद्योग और उसके आगे महसूस किया जाएगा.       
(defrule beyond4
(declare (salience 4000))
(id-root ?id beyond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(id-word =(- ?id 1) and)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usake_Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beyond.clp 	beyond4   "  ?id "  usake_Age )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;Beyond telling the schools and colleges what syllabi they had to follow, the University had nothing to do with the educational institutions.[gyananidhi]
;स्कूलों और कॉलेजों को यह बताने के अलावा कि उन्हें क्या पाठ्यक्रम का पालन करना है, विश्वविद्यालय को शैक्षणिक संस्थानों के साथ और कुछ लेना देना नहीं था
(defrule beyond6
(declare (salience 4000))
(id-root ?id beyond)
?mng <-(meaning_to_be_decided ?id)
(kriyA-beyond_saMbanXI  ? ?id1)
(id-cat_coarse ?id1 verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_alAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beyond.clp 	beyond6   "  ?id "  ke_alAvA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;Few people live beyond the age of a hundred.
;कुछ लोग सौ की उम्र के बाद जिवित रहते हैं . 
;We cannot allow the work to continue beyond the end of the year. 
;हम वर्ष के अन्त के बाद कार्य जारी रहने की अनुमति नहीं दे सकते हैं . 
(defrule beyond7
(declare (salience 4000))
(id-root ?id beyond)
?mng <-(meaning_to_be_decided ?id)
(kriyA-beyond_saMbanXI  ?kri ?id1)
(viSeRya-det_viSeRaNa  ?id1 ?)
(not(id-root ?kri is))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beyond.clp 	beyond7   "  ?id "  ke_bAxa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;Tonight's performance has been cancelled due to circumstances beyond our control.
;आज की रात का प्रदर्शन हमारे नियन्त्रण के बाहर हालातों के कारण रद्द कर दिया गया . 
(defrule beyond8
(declare (salience 4000))
(id-root ?id beyond)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-beyond_saMbanXI  ? ?id1)
(id-word ?id1 control)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beyond.clp 	beyond8   "  ?id "  ke_bAhara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;From the top of the hill we could see our house and the woods beyond.
;पहाडी के सर्वोच्च स्थान से हम हमारा घर और उसके आगे लकडियों को देख सके . 
(defrule beyond9
(declare (salience 4000))
(id-root ?id beyond)
?mng <-(meaning_to_be_decided ?id)
(conjunction-components  ? $? =(- ?id 1) $?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usake_Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beyond.clp 	beyond9   "  ?id "  usake_Age )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)29-jan-2014
;We passed the hotel and drove a bit beyond to see the ocean.
;हम होटल से आगे निकले और महासागर को देखने के लिये थोडा सा आगे चलाया 
(defrule beyond10
(declare (salience 4000))
(id-root ?id beyond)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beyond.clp 	beyond10   "  ?id "  Age )" crlf))
)


;****************************DEFAULT RULES*****************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)

(defrule beyond1
(declare (salience 0))
(id-root ?id beyond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beyond.clp 	beyond1   "  ?id "  ke_Age )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;In the distance, beyond the river, was a small town. 
(defrule beyond2
(declare (salience 0))
(id-root ?id beyond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beyond.clp 	beyond2   "  ?id "  ke_pAra )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
(defrule beyond3
(declare (salience 0))
(id-root ?id beyond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraloka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beyond.clp 	beyond3   "  ?id "  paraloka )" crlf))
)


;******************************************************** EXAMPLES ****************************************************************************
;I'm afraid physics is completely beyond me.
;How you could ask a question like that after the statement she just made is beyond me.
;Something beyond me made my hand flip over Alma's picture.
;How I knew about the lake and its location was beyond me.
;How you did it is beyond me.
;It's beyond me why you and that quack doctor had to go mucking around with all those worms in the first place. 
;Why anyone would haul a body halfway up a cliff was beyond me.
;These financial matters are quite beyond me.
;That's beyond me why they would go to Bermuda.

;Behind me, beyond me, I heard the screams of pain, of devastated lives.

;Few people live beyond the age of a hundred.
;We cannot allow the work to continue beyond the end of the year. 
;I've got nothing to tell you beyond what I told you earlier. 
;The repercussions will be felt throughout the industry and beyond .
;Tonight's performance has been cancelled due to circumstances beyond our control.
;She has always lived beyond her means.
;His thoughtlessness is beyond belief.
;He survived the accident, but his car was damaged beyond repair.

;In the distance, beyond the river, was a small town. 
;From the top of the hill we could see our house and the woods beyond.
;Her beauty is beyond compare.
;We passed the hotel and drove a bit beyond to see the ocean.
;The children who are part of the study will be monitored through their school years and beyond.
;My house is just beyond those trees.
;They crossed the mountains and travelled to the valleys beyond. 
;Beyond those trees you will find his house. 
;She's got nothing beyond her state pension .
;I own nothing beyond the clothes on my back. 
;Don't stay here beyond midnight. 

