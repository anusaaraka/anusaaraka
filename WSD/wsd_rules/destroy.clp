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

;The building was completely destroyed by fire.  ;oald
;इमारत पूरी तरह से आग से नष्ट हो गई.
;Most of the old part of the city was destroyed by bombs during the war.       ;cald
;शहर के अधिकतर पुराने हिस्से युद्ध में बम के दौरान नष्ट हो गए थे .
(defrule destroy0
(declare (salience 4900))
(id-root ?id destroy)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  destroy.clp 	destroy0   "  ?id "  naRta_ho )" crlf))
)

;You have destroyed my hopes of happiness.             ;oald
;आपने मेरी खुशी की उम्मीदों को समाप्त कर दिया है.
;The accident seemed to have completely/totally destroyed his confidence.       ;cald
;दुर्घटना ने उसके आत्मविश्वास को पूरी तरह से समाप्त कर दिया .
(defrule destroy1
(declare (salience 4800))
(id-root ?id destroy)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-object  ?id ?id1)(viSeRya-of_saMbanXI  ?id1 ?id2))(kriyA-kriyArWa_kriyA  ?id1 ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  destroy.clp 	destroy1   "  ?id "  samApwa_kara_xe )" crlf))
)


;Failure was slowly destroying him.                ;oald
;विफलता उसको धीरे धीरे बर्बाद कर रही थी.
(defrule destroy2
(declare (salience 4900))
(id-root ?id destroy)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 failure)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barbAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  destroy.clp 	destroy2   "  ?id " barbAxa_kara  )" crlf))
)

;The injured horse had to be destroyed.                 ;oald
;घायल घोड़े को मार दिया गया.
(defrule destroy3
(declare (salience 4900))
(id-root ?id destroy)
?mng <-(meaning_to_be_decided ?id)
(and(kriyA-subject  ?id ?id1)(viSeRya-viSeRaNa  ?id1 ?id2))
(id-word ?id2 injured)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  destroy.clp 	destroy3   "  ?id " mAra_xe  )" crlf))
)
;---------------------default rules----------------------------------------
;They've destroyed all the evidence.           ;oald
;उन्होंने सारे सबूत नष्ट कर दिए.
;Heat gradually destroys vitamin C.                ;oald
;गर्मी धीरे - धीरे विटामिन सी को नष्ट कर देती है.

(defrule destroy4
(declare (salience 3000))
(id-root ?id destroy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  destroy.clp 	destroy4   "  ?id " naRta_kara_xe  )" crlf))
)

(defrule destroy5
(declare (salience 0))
(id-root ?id destroy)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  destroy.clp 	destroy5   "  ?id " naRta_kara_xe  )" crlf))
)
