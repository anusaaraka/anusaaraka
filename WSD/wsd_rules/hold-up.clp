;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore[29-3-14]
 ;Akhil Bhartiya Janwadi Mahila Samiti and DYFI jointly launched a state-wide campaign against corruption in jobs, fraud and hold-ups. [news]
; रोहतक. नौकरियों में भ्रष्टाचार, फर्जीवाड़े व लूट- खसोट के खिलाफ अखिल भारतीय जनवादी महिला समिति और डीवाईएफआई ने संयुक्त रूप से प्रदेशव्यापी अभियान शुरू किया है। 
;In the hold-up, a masked youth threatened the bank staff with a gun.
(defrule hold-up1
(declare (salience 5000))
(id-root ?id hold-up)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-in_saMbanXI  ?id1 ?id)(conjunction-components  ?id1 ? ? ?id))
(id-root ?id1 threaten|fraud)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id luta-Kasota))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold-up.clp 	hold-up1   "  ?id "  luta-Kasota )" crlf))
)

;@@@ Added by Prachi Rathore[29-3-14]
 ;Sorry I'm late. There was a hold-up on the motorway.[oald]
;देरी के लिये क्षमा कीजिए . मोटर के चौडा रास्ते पर रुकावट थी . 
;a hold-up at the local supermarket[oald]
(defrule hold-up2
(declare (salience 5000))
(id-root ?id hold-up)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-on_saMbanXI ?id ?id1)(viSeRya-at_saMbanXI ?id ?id1))
(id-root ?id1 motorway|way|market|supermarket)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rukAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold-up.clp 	hold-up2   "  ?id "  rukAvata )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx

;@@@ Added by Prachi Rathore[29-3-14]
  ;Come on, let's go. What's the hold-up?[cambridge]
; आइये , चलिये हम चलें, क्या देर  है? 
(defrule hold-up3
(declare (salience 400))
(id-root ?id hold-up)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold-up.clp 	hold-up3   "  ?id "  xera)" crlf))
)

;@@@ Added by Prachi Rathore[29-3-14]

(defrule hold-up4
(declare (salience 200))
(id-root ?id hold-up)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold-up.clp 	hold-up4   "  ?id "  xera )" crlf))
)
