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
;She's arriving tomorrow, I believe.
;मुझे लगता है ,वह कल आ रही है .
(defrule believe0
(declare (salience 4000))
(id-root ?id believe)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma ?id ?id1)
(id-last_word ?id believe)
;(kriyA-object ?id ?id1)
;(id-word ?id1 I)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  believe.clp 	believe0   "  ?id "  laga )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  believe.clp    believe0   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;He believes that all children are born with equal intelligence. 
;वह मानता है कि सब बच्चे समान ज्ञान के साथ पैदा हुए हैं . 
(defrule believe1
(declare (salience 4000))
(id-root ?id believe)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma ?id ?id1)
(kriyA-vAkya_viBakwi ?id1 ?id2)
(id-word ?id2 that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  believe.clp 	believe1   "  ?id "  mAna )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;She couldn't believe that it was all happening again.
;वह विश्वास नहीं कर पा रही थी कि यह सब फिर से हो रहा था .
(defrule believe2
(declare (salience 4000))
(id-root ?id believe)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma ?id ?id1)
(kriyA-kriyA_niReXaka ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  believe.clp 	believe2   "  ?id "  viSvAsa_kara )" crlf))
)

;note deleted rule3
;**************************DEFAULT RULES*************************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;Ready in debate, prompt and  firm in giving decisions, he has, I believe, been a most expert chairman at meetings.[gyananidhi]
;विवाद में निपुण, फैसले करने में चुस्त और दृढ़ होने के कारण , मैं मानता हूँ, वे बैठकों में सबसे अधिक कुशल अध्यक्ष रहे हैं।
(defrule believe4
(declare (salience 0))
(id-root ?id believe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna));changed the meaning from 'viSvasa_kara' to 'mAna' by Garima Singh(5-feb-2014)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  believe.clp 	believe4   "  ?id "  mAna )" crlf))
)






