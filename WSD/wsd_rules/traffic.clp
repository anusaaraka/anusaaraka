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
;@@@ Added by Prachi Rathore[26-2-14]
;the traffic in firearms[oald]
;अग्न्यस्ट्र का अवैध व्यापार . 
(defrule traffic0
(declare (salience 5000))
(id-root ?id traffic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id2)
(id-root ?id1 in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 avEXa_vyApAra))
(assert (id-H_vib_mng ?id2 kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " traffic.clp 	traffic0  "  ?id "  " ?id1 " avEXa_vyApAra  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "   traffic.clp 	traffic0   "  ?id2 "  kA )" crlf))
)



;@@@ Added by Prachi Rathore[26-2-14]
;Police are looking for ways of curbing the traffic in guns.[cambridge]
;पुलीस बन्दूको के अवैध व्यापार को नियन्त्रित करने के लिये तरीके ढूँढ रहीं हैं . 
(defrule traffic4
(declare (salience 5000))
(id-root ?id traffic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id2 ?id3)
(kriyA-object  ?id2 ?id)
(id-root ?id1 in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 avEXa_vyApAra))
(assert (id-H_vib_mng ?id3 kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " traffic.clp 	traffic4   "  ?id "  " ?id1 " avEXa_vyApAra  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  traffic.clp 	traffic4   "  ?id3 "  kA )" crlf)
))




;@@@ Added by Prachi Rathore[26-2-14]
;to traffic in drugs [oald]
;दवा का अवैध व्यापार करना . 
(defrule traffic5
(declare (salience 5000))
(id-root ?id traffic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 avEXa_vyApAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " traffic.clp 	traffic5   "  ?id "  " ?id1 " avEXa_vyApAra_kara  )" crlf))
)


;@@@ Added by Prachi Rathore[26-2-14]
;the traffic of goods between one country and another[oald]
;दो देशो के बीच बीच  सामग्री  का लेन देन . 
(defrule traffic6
(declare (salience 5000))
(id-root ?id traffic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id2)
(or(id-root ?id2 personnel|goods|idea|information|arms)(id-word ?id2  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lena_xena))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  traffic.clp 	traffic6   "  ?id "  lena_xena)" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx


;@@@ Added by Prachi Rathore[26-2-14]
;There's always a lot of traffic at this time of day.[oald]
;दिन के इस समय पर हमेशा यातायात बहुत ज्यादा होता  है . 
(defrule traffic2
(declare (salience 400))
(id-root ?id traffic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwAyAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  traffic.clp 	traffic2   "  ?id "  yAwAyAwa)" crlf))
)

;@@@ Added by Prachi Rathore[26-2-14]

(defrule traffic3
(declare (salience 200))
(id-root ?id traffic)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id trEPika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  traffic.clp 	traffic3   "  ?id "  trEPika)" crlf))
)
