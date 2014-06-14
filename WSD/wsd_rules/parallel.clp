;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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

;Parallel experiments are being conducted in both countries.
;दोनो देशों में समान प्रयोग चलाए जा रहे हैं . 
(defrule parallel0
(declare (salience 9000))
(id-root ?id parallel)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
(id-cat_coarse ?id1 noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parallel.clp 	parallel0   "  ?id " samAna )" crlf))
)


;There are a number of parallels between our two situations.
;हमारी दो परीस्थितियों के बीच बहुत सारी समानता हैं . 
(defrule parallel1
(declare (salience 8000))
(id-word ?id parallels)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-between_saMbanXI ?id ?id1)(viSeRya-with_saMbanXI  ?id ?id1))
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAnawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parallel.clp 	parallel1   "  ?id " samAnawA )" crlf))
)

;By symmetry, the electric field will not depend on y and z coordinates and its direction at every point must be parallel to the x-direction.
;सममिति के अनुसार विद्युत क्षेत्र y तथा z निर्देशाङ्कों पर निर्भर नहीं करेगा तथा इसकी प्रत्येक बिन्दु पर दिशा x - दिशा के समानान्तर होनी चाहिए . 
(defrule parallel2
(declare (salience 7000))
(id-root ?id parallel)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAnAnwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parallel.clp 	parallel2   "  ?id " samAnAnwara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;My ideas are parallel to yours. [rajpal]
;मेरे विचार आपके समान हैं .
(defrule parallel3
(declare (salience 7000))
(id-root ?id parallel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ?verb ?id)
(kriyA-subject  ?verb ?id1)
(id-root ?id1 idea|plan|view|goal|opinion|concept|proposal|objective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parallel.clp 	parallel3   "  ?id " samAna )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;Mr Rajiv is without a parallel. [rajpal]
;मिस्टर राजीव अतुलनीय हैं . 
(defrule parallel4
(declare (salience 7000))
(id-root ?id parallel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-without_saMbanXI  ? ?id)
(id-root ?id1 without)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 awulanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " parallel.clp  parallel4  "  ?id "  " ?id1 "  awulanIya  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;You can not parallel his success. [rajpal]
;अाप उसकी सफलता की तुलना नहीं कर सकते .
(defrule parallel5
(declare (salience 7000))
(id-root ?id parallel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 success|victory)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wulanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parallel.clp 	parallel5   "  ?id " wulanA )" crlf))
)

;############################################## Default Rules ##########################################################
;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule parallel6
(declare (salience 6000))
(id-root ?id parallel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wulanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parallel.clp 	parallel6   "  ?id " wulanA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule parallel7
(declare (salience 6000))
(id-root ?id parallel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wulanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parallel.clp 	parallel7   "  ?id " wulanIya )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule parallel8
(declare (salience 6000))
(id-root ?id parallel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbarI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parallel.clp 	parallel8   "  ?id " barAbarI_kara )" crlf))
)


;The road and the canal are parallel to each other.
;सडक और नहर एक दूसरे के समानान्तर हैं . 
(defrule parallel9
(id-root ?id parallel)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAnAnwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parallel.clp 	parallel9   "  ?id " samAnAnwara )" crlf))
)
