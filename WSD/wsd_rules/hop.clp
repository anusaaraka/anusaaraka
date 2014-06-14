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
;@@@ Added by Prachi Rathore[28-2-14]
;Hop in, I'll drive you home.9oald]
;बैठ जाइये , मैं आपको घर छोड दूँगा . 
(defrule hop0
(declare (salience 5000))
(id-root ?id hop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bETa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hop.clp 	hop0 "  ?id "  " ?id1 " bETa_jA)" crlf))
)

;@@@ Added by Prachi Rathore[28-2-14]
 ;We hopped over to Paris for the weekend.[oald]
;हम सप्ताहान्त के लिये पेरिस गये . 
(defrule hop3
(declare (salience 5000))
(id-root ?id hop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 over)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hop.clp 	hop3 "  ?id "  " ?id1 " jA )" crlf))
)

;@@@ Added by Prachi Rathore[28-2-14]
 ; I like to hop from channel to channel when I watch TV.[oald]
;मैं जल्दी से चैनल बदलना पसन्द करता हूँ जब मैं दूरदर्शन देखता हूँ . 
(defrule hop4
(declare (salience 5000))
(id-root ?id hop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxI_se_baxala ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hop.clp 	hop4   "  ?id "  jalxI_se_baxala  )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[28-2-14]
;How far can you hop? [shiksharthi-kosh]
;कितना दूर आप फलाँग सकते हैं? 
(defrule hop1
(declare (salience 400))
(id-root ?id hop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PalAzga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hop.clp 	hop1   "  ?id "  PalAzga )" crlf))
)

;@@@ Added by Prachi Rathore[28-2-14]
;Hop of horses.[shiksharthi-kosh]
;घोडों की फलाँग . 
(defrule hop2
(declare (salience 400))
(id-root ?id hop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PalAzga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hop.clp 	hop2   "  ?id "  PalAzga )" crlf))
)

;@@@ Added by Prachi Rathore[28-2-14]
;He crossed the hall with a hop, skip and a jump.[oald]
(defrule hop5
(declare (salience 200))
(id-root ?id hop)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PalAzga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hop.clp 	hop5   "  ?id "  PalAzga )" crlf))
)
