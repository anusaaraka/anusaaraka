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

;@@@ Added by Pramila(Banasthali University) on 10-01-2014
;They divested President of his power.       ;shiksharthi
;उन्होंने राष्ट्रपति के अधिकार छीन लिए.
(defrule divest0
(declare (salience 5000))
(id-root ?id divest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id2 right|privilege|power)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CIna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divest.clp 	divest0   "  ?id "  CIna_le )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 24-01-2014
;He was divested of his privileges.       ;shiksharthi
;उससे उसके अधिकार छीन लिए गए.
(defrule divest1
(declare (salience 5000))
(id-root ?id divest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-of_saMbanXI  ?id ?id2)
(id-root ?id2 right|privilege|power)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CIna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divest.clp 	divest1   "  ?id "  CIna_le )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 25-01-2014
;He divested himself of the coat.           ;shiksharthi
;उसने अपना कोट उतारा.
(defrule divest2
(declare (salience 5000))
(id-root ?id divest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-of_saMbanXI  ?id ?id1)
(id-root ?id1 coat|jacket|shirt|trouser)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divest.clp 	divest2   "  ?id "  uwAra )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 07-02-2014
;After the Government of India Act of 1919 came into force the Government of India divested themselves of all responsibility in 
;connection with the University and handed over the institution to the Government of Bengal.           ;gyannidhi
;1919 की भारत सरकार अधिनियम के लागू होने के बाद भारत सरकार ने  विश्वविद्यालय से संबंधित समस्त उत्तरदायित्व से अपने आपको मुक्त किया और  इस बंगाल सरकार के हवाले किया।
(defrule divest3
(declare (salience 5000))
(id-root ?id divest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-of_saMbanXI  ?id ?id1)
(id-root ?id1 responsibility)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divest.clp 	divest3   "  ?id "  mukwa_kara )" crlf))
)
;----------------------------default rules-----------------------------

;@@@ Added by Pramila(Banasthali University) on 10-01-2014
;The company is divesting itself of some of its assets.       ;oald
;कम्पनी अपनी सम्पत्ति में से कुछ सम्पत्ति का निपटारा कर रही है.
; meaning changed from 'uwAra' to 'nipatArA_kara' (25-01-14)
(defrule divest4
(declare (salience 4000))
(id-root ?id divest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nipatArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divest.clp 	divest4   "  ?id "  nipatArA_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 10-01-2014
; meaning changed from 'uwAra' to 'nipatArA_kara' (25-01-14)
(defrule divest5
(declare (salience 0))
(id-root ?id divest)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nipatArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divest.clp 	divest5   "  ?id "  nipatArA_kara )" crlf))
)
