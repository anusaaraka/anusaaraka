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

;@@@ Added by Garima
;Success can be achieved by hard work.[self]
;सफलता कडी मेहनत के द्वारा प्राप्त की जा सकती है . 
;He had finally achieved success.[oald]
;उसने अन्ततः सफलता प्राप्त करी. 
(defrule achieve0
(declare (salience 3700))
(id-root ?id achieve)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object ?id ?id1)(kriyA-subject ?id ?id1))
(id-root ?id1 success)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  achieve.clp 	achieve0   "  ?id "  prApwa_kara )" crlf))
)


;@@@ Added by Garima
;She finally achieved her ambition to visit South America.
;उसने अन्तत: दक्षिण अमेरिका जाने के अपने लक्ष्य को पूरा किया
(defrule achieve1
(declare (salience 3700))
(id-root ?id achieve)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object ?id ?id1)(kriyA-subject ?id ?id1))
(id-root ?id1 ambition|target)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  achieve.clp 	achieve1   "  ?id "  pUrA_kara )" crlf))
)

;@@@ Added by Garima
;They could not achieve their target of less than 3% inflation.[oald]
;वह ३% से कम महँगाई के उनके लक्ष्य को पूरा नहीं कर पाये
;The government's training policy, he claimed, was achieving its objectives. [cambridge]
;उसने यह दाबा किया है कि सरकार कीं ट्रेनिग कीं योजना ,अपना उद्देश्यों को पूरा कर रही थी 
(defrule achieve2
(declare (salience 3600))
(id-root ?id achieve)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object ?id ?id1)(kriyA-subject ?id ?id1))
(id-root ?id1 target)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara/prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  achieve.clp 	achieve2   "  ?id "  pUrA_kara/prApwa_kara )" crlf))
)

;************************DEFAULT RULE**************************

;@@@ Added by Garima
;I haven't achieved very much today.[oald]
;मैंने आज ज्यादा कुछ हासिल नहीं किया
(defrule achieve3
(declare (salience 3600))
(id-root ?id achieve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAsila_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  achieve.clp 	achieve3   "  ?id "  hAsila_kara )" crlf))
)

;****************************************************EXAMPLES********************************************************************************

;He had finally achieved success.[oald]
;They could not achieve their target of less than 3% inflation.[oald]
;I haven't achieved very much today.[oald]
;All you've achieved is to upset my parents.[oald]
;Their background gives them little chance of achieving at school.[oald]
;The government's training policy, he claimed, was achieving its objectives. [cambridge]
;She finally achieved her ambition to visit South America.[cambridge]
;I've been working all day, but I feel as if I've achieved nothing.[cambridge]

