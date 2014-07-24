;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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


;Be sure to enable your computer's firewall.                        ;m-w
;आपके कम्प्यूटर का फायरवाल सक्रिय है यह सुनिश्चित करें.

(defrule enable0
(declare (salience 5000))
(id-root ?id enable)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id1 ?id)
(id-root ?id1 sure)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakriya_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enable.clp 	enable0   "  ?id " sakriya_hE )" crlf))
)


;Computerization should enable us to cut production costs by half.          ;cald
;कंप्यूटरीकरण से  हम उत्पादन लागत में अर्द्धांश तक उत्पादन खर्चे में कटौती करने में समर्थ होने चाहिए.
(defrule enable1
(declare (salience 4900))
(id-root ?id enable)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id1)
(kriyA-by_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWa_ho))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enable.clp 	enable1   "  ?id " samarWa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enable.clp     enable1   "  ?id "  se )" crlf))
)


;You can enable compression or even virus scanning prior to backup.         ;old
;आप बैकअप से पहले वायरस स्कैनिंग या संपीडन भी सक्रिय कर सकते हैं.
(defrule enable2
(declare (salience 4900))
(id-root ?id enable)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakriya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enable.clp 	enable2   "  ?id " sakriya_kara )" crlf))
)

;----------------------------default rules------------------------------

;The Department is leading the effort to enable a smooth and timely transition.          ;old
;विभाग एक सरल और समय पर परिवर्तन को सक्षम बनाने में अग्रणी है.
;The software enables you to create your own DVDs.         ;oald
;सॉफ्टवेयर आपको खुद की डीवीडी बनाने के लिए सक्षम बनाता है.
;This is a new programme to enable older people to study at college.    ;oald
;यह वृद्ध लोगों को कॉलेज में अध्ययन करने में सक्षम बनाने के लिए एक नया कार्यक्रम है.

(defrule enable3
(declare (salience 3000))
(id-root ?id enable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakRama_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enable.clp 	enable3   "  ?id " sakRama_banA )" crlf))
)


(defrule enable4
(declare (salience 0))
(id-root ?id enable)
?mng <-(meaning_to_be_decided ?id)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakRama_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enable.clp 	enable4   "  ?id " sakRama_banA )" crlf))
)

