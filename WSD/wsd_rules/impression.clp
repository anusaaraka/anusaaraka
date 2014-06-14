;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02 at gmail dot com)
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
;------Default-Rule-----
(defrule impression0
(declare (salience 4800))
(id-root ?id impression)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impression.clp 	impression0   "  ?id "  CApa )" crlf))
)
;--------XX------------

;Let me assure you that if you and your ministers are under such an impression,you are entirely mistaken. 
;मैं आपको विश्वास दिलाता हूं कि यदि अाप और अापके मंत्री  इस धारणा मे हैं,तो आप पूरी तरह गलत हैं| 
(defrule impression1
(declare (salience 4900))
(id-root ?id impression)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-under_saMbanXI ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id is_XAraNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impression.clp 	impression1   "  ?id "  is_XAraNA )" crlf))
)

;The general impression of everyone present was one of disappointment
(defrule impression2
(declare (salience 4900))
(id-root ?id impression)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impression.clp 	impression2   "  ?id "  rAya )" crlf))
)
;The performance left a lasting impression on Gandhi's mind. 
;इस प्रदर्शन ने गांधी के मन पर एक अमिट प्रभाव छोड़ा.
(defrule impression3
(declare (salience 4900))
(id-root ?id impression)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word =(+ ?id 1) on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) praBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " impression.clp	impression3  "  ?id "  " (+ ?id 1) "  praBAva )" crlf)))

