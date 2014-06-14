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
;@@@ Added by Prachi Rathore[7-2-14]
;These are good, strong toys for tiny tots.[oald]
;ये बहुत अच्छे हैं , छोटे बच्चों के लिये मजबूत खिलौने . 
(defrule tot0
(declare (salience 5000))
(id-root ?id tot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baccA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tot.clp 	tot0   "  ?id "  baccA )" crlf)
))


;@@@ Added by Prachi Rathore[7-2-14]
 ;The trip isn't really that cheap when you tot everything up.[oald]
;यात्रा वास्तव में इतनी सस्ती बी नहीं है जब आप हर चीज़ का हिसाब लगाते हैं . 
(defrule tot1
(declare (salience 4000))
(id-root ?id tot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hisAba_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tot.clp 	tot1  "  ?id "  " ?id1 "  hisAba_lagA )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx

;@@@ Added by Prachi Rathore[7-2-14]
 ;a tot of whisky.[oald]
;मदिरा की अल्प मात्रा . 
(defrule tot2
(declare (salience 4000))
(id-root ?id tot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpa_mAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tot.clp 	tot2   "  ?id "  alpa_mAwrA )" crlf))
)
