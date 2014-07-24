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

;@@@ Added by Prachi Rathore[5-2-14]
;to terminate a pregnancy [oald]
;गर्भपात करना . 
(defrule terminate0
(declare (salience 5000))
(id-root ?id terminate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 pregnancy|fetus)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 garBapAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " terminate.clp 	terminateo  "  ?id "  " ?id1 "  garBapAwa_kara  )" crlf))
)


;@@@ Added by Prachi Rathore[5-2-14]
;He was terminated last month.[m-w]
;उसको पिछले महीने नौकरी से निकाल दिया गया था . 
;Plans are being made to terminate unproductive employees.[m-w]
;अलाभप्रद कर्मचारियों को नौकरी से निकाल देने के लिए योजनाएँ बनाई जा रहीं हैं . 
(defrule terminate1
(declare (salience 5000))
(id-root ?id terminate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-karma  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkarI_se_nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terminate.clp 	terminate1   "  ?id "  nOkarI_se_nikAla_xe )" crlf))
)


;@@@ Added by Prachi Rathore[5-2-14]
;This train terminates at London Victoria.[oald]
;यह रेलगाडी लन्दन विक्टोरिया तक जाती है . 
(defrule terminate2
(declare (salience 5000))
(id-root ?id terminate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 train|bus|taxi)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka_hI_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terminate.clp 	terminate2   "  ?id "  waka_hI_jA )" crlf))
)

;@@@ Added by Prachi Rathore[5-2-14]
;Your contract of employment terminates in December.[oald]
;व्यवसाय का आपका अनुबन्ध दिसम्बर में समाप्त होता है .  
(defrule terminate4
(declare (salience 5000))
(id-root ?id terminate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terminate.clp 	terminate4   "  ?id "  samApwa_ho )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[5-2-14]
;They terminated their agreement. 
;उन्होंने उनका राज़ीनामा समाप्त किया . 
(defrule terminate3
(declare (salience 4000))
(id-root ?id terminate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terminate.clp 	terminate3   "  ?id "  samApwa_kara )" crlf))
)
