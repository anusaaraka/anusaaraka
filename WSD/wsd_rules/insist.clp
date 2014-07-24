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
;@@@ Added by Prachi Rathore[4-1-14]
;I insisted on abolishing these evils.[shiksharthi - kosh]
;मैंने ये बुराइयाँ उन्मूलन करने पर जोर दिया . 
;They adamantly insisted upon being included in the meeting. [m-w]
;उन्होंने अडिग रूप से बैठक में सम्मिलित होना के ऊपर जोर दिया . 
(defrule insist0
(declare (salience 5000))
(id-root ?id insist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-on_saMbanXI  ?id ?id1)(kriyA-upon_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insist.clp 	insist0   "  ?id " jora_xe )" crlf))
)

;@@@ Added by Prachi Rathore[4-1-14]
;I insisted on her leaving my house without any delay. [shiksharthi - kosh]
;मैंने उस पर बिना कोई विलम्ब के मेरे घर को छोड जाने के लिये जोर डाला . 
(defrule insist1
(declare (salience 5500))
(id-root ?id insist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(kriyA-subject  ?id1 ?id2)
(or(id-cat_coarse ?id2 pronoun)(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insist.clp 	insist1   "  ?id " jora_dAla )" crlf))
)

;@@@ Added by Prachi Rathore[4-1-14]
;I insist!‘Please come with us.’[oald]
;He had to change his plan because of raman's insist.[shiksharthi - kosh]
(defrule insist3
(declare (salience 4500))
(id-root ?id insist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject  ?id1 ?id2)(viSeRya-RaRTI_viSeRaNa  ?id ?id1))
(or(id-cat_coarse ?id2 pronoun)(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Agraha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insist.clp 	insist3   "  ?id " Agraha_kara )" crlf))
)

;@@@ Added by Prachi Rathore[4-1-14]
;The robber-chief insisted that he must have bumped into a sharp stone in the dark.[gyan-nidhi]
(defrule insist4
(declare (salience 5500))
(id-root ?id insist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkya_viBakwi  ?vak ?id1)
(kriyA-vAkyakarma  ?id  ?vak)
(id-root ?id1 that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ade_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insist.clp 	insist4   "  ?id " ade_raha )" crlf))
)

;@@@ Added by Prachi Rathore[4-1-14]
;He insisted he was innocent.[oald]
;
(defrule insist5
(declare (salience 5000))
(id-root ?id insist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDawA_se_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insist.clp 	insist5   "  ?id " xqDawA_se_kaha )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[4-1-14]
;
(defrule insist2
(declare (salience 4000))
(id-root ?id insist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAzga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insist.clp 	insist2   "  ?id "  mAzga_kara )" crlf))
)
