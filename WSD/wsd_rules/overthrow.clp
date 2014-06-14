;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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

;@@@ Added by Pramila(BU) on 19-02-2014
;The president was overthrown in a military coup.  ;oald
;अध्यक्ष को एक सैनिक आकस्मिक शासन-परिवर्तन में पद से हटा दिया गया था . 
;He said that Allende's government in Chile was overthrown by the army and the CIA in 1973.   ;cald
;उसने कहा कि चिली में अलेंडे की सरकार को 1973 में सेना और सीआईए द्वारा पद से हटा दिया गया.
(defrule overthrow1
(declare (salience 4900))
(id-root ?id overthrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxa_se_hatA_xe))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overthrow.clp 	overthrow1   "  ?id "  paxa_se_hatA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  overthrow.clp      overthrow1   "  ?id " ko )" crlf))
)

;@@@ Added by Pramila(BU) on 19-02-2014
;All his dreams were overthrown when he became lame.      ;shiksharthi
;जब वह लंगड़ा हो गया तो उसके सभी सपने टूट गए.
(defrule overthrow2
(declare (salience 4900))
(id-root ?id overthrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-samakAlika_kriyA  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overthrow.clp 	overthrow2   "  ?id "  tUta )" crlf))
)

;@@@ Added by Pramila(BU) on 19-02-2014
;The overthrow of that destiny was sure.      ;shiksharthi
;उस वंश का विनाश निश्चित था.
(defrule overthrow3
(declare (salience 4900))
(id-root ?id overthrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vinASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overthrow.clp 	overthrow3   "  ?id "  vinASa )" crlf))
)

;@@@ Added by Pramila(BU) on 19-02-2014
;They made another run due to overthrow.      ;shiksharthi
;उन्होंने दूसरा रन ओवर थ्रो के कारण बनाया.
(defrule overthrow4
(declare (salience 100))
(id-root ?id overthrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ovar_Wro))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overthrow.clp 	overthrow4   "  ?id "  ovar_Wro )" crlf))
)

;@@@ Added by Pramila(BU) on 19-02-2014
;The British overthrew the Moghuls.      ;shiksharthi
;ब्रिटिश लोगो ने मुगलो को हरा दिया.
(defrule overthrow5
(declare (salience 100))
(id-root ?id overthrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overthrow.clp 	overthrow5   "  ?id "  harA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  overthrow.clp      overthrow5   "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  overthrow.clp      overthrow5   "  ?id " ko )" crlf))
)
