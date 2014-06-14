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
;@@@ Added by Prachi Rathore
;She was hovering between life and death.[oald]
;वह जीवन और मृत्यु के बीच झूल रही थी . 
(defrule hover0
(declare (salience 5500))
(id-root ?id hover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-between_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hover.clp 	hover0   "  ?id "  JUla )" crlf))
)

;@@@ Added by Prachi Rathore
;A hawk hovered over the hill.[oald]
;बाज ने पहाडी के ऊपर एक जगह चक्कर काटा . 
(defrule hover1
(declare (salience 5000))
(id-root ?id hover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 moon|hawk|bird)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_jagaha_cakkara_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hover.clp 	hover1   "  ?id "  eka_jagaha_cakkara_kAta )" crlf))
)

;@@@ Added by Prachi Rathore
;He hovered on the edge of consciousness.[oald]
;वह चेतना की अवस्था के आस पास था . 
(defrule hover2
(declare (salience 5000))
(id-root ?id hover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-word ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Asa_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hover.clp 	hover2   "  ?id "  Asa_pAsa )" crlf))
)

;@@@ Added by Prachi Rathore
;Temperatures hovered around freezing.
;तापमान जमा देने के आस पास . 
(defrule hover3
(declare (salience 5000))
(id-root ?id hover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-around_saMbanXI  ?id ?id1)
(id-root ?id1 freeze|percent|temparature)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) Asa_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hover.clp	hover3  "  ?id "  " (+ ?id 1) "  Asa_pAsa )" crlf))
)

;@@@ Added by Prachi Rathore
;You must not hover on right matters.[SikSArWI_kosh]
;आपको सही विषयों पर नहीं हिचकिचाना चाहिए . 
(defrule hover4
(declare (salience 5500))
(id-root ?id hover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 matter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hicakicA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hover.clp 	hover4   "  ?id "  hicakicA )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore
;Bees hovered around the hive.  [m-w]
;मधुमक्खियाँ मधुमक्खियों का छत्ते पर मँड़राती हैं.  
(defrule hover5
(declare (salience 4000))
(id-root ?id hover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mazdaZrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hover.clp 	hover5   "  ?id "  mazdaZrA )" crlf))
)
