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
;@@@ Added by Prachi Rathore[24-2-14]
;- To some others the challenge in carrying out imaginative new experiments to unlock the secrets of nature to verify or refute theories is thrilling.[ncert]
;.कुछ अन्य के लिए प्रकृति के रहस्यों से पर्दा हटाने के लिए कल्पनाशील नवीन प्रयोग करने की चुनौती, नियमों का सत्यापन अथवा निराकरण रोमाञ्चकारी हो सकता है..
(defrule unlock0
(declare (salience 5000))
(id-root ?id unlock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 secret)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parxA_hatA ))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unlock.clp 	unlock0   "  ?id "  parxA_hatA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  unlock.clp 	unlock0   "  ?id "  se)" crlf))
)



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[24-2-14]
;to unlock the door.[oald]
;दरवाजे का ताला खोलना . 
(defrule unlock1
(declare (salience 400))
(id-root ?id unlock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlA_Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unlock.clp 	unlock1   "  ?id "  wAlA_Kola )" crlf))
)

;@@@ Added by Prachi Rathore[24-2-14]

(defrule unlock2
(declare (salience 200))
(id-root ?id unlock)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlA_Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unlock.clp 	unlock2   "  ?id "  wAlA_Kola )" crlf))
)
