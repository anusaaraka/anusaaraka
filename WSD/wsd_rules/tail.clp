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
;@@@ Added by Prachi Rathore[15-1-14]
;The number of tourists tails off in October.[oald]
; अक्तूबर में पर्यटकों की संख्या कम होती हैं . 
(defrule tail0
(declare (salience 5000))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tail.clp	tail0  "  ?id "  " ?id1 "   kama_ho  )" crlf))
)

;@@@ Added by Prachi Rathore[15-1-14]
;‘But why…?’ Her voice tailed away.[oald]
(defrule tail1
(declare (salience 5000))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tail.clp	tail1  "  ?id "  " ?id1 "   kama_ho  )" crlf))
)


;@@@ Added by Prachi Rathore[15-1-14]
;Traffic tailed back five miles from the scene of the accident.[oald]
(defrule tail2
(declare (salience 5000))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-word ?id1 back)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  lambI_kawAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tail.clp	tail2  "  ?id "  " ?id1 "  lambI_kawAra  )" crlf))
)

;@@@ Added by Prachi Rathore[15-1-14]
;The police have put a tail on him.[oald]
;पुलीस उस पर निगरानी रखती है 
(defrule tail5
(declare (salience 5000))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 put)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigarAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tail.clp 	tail5   "  ?id "  nigarAnI )" crlf))
)


;@@@ Added by Prachi Rathore[15-1-14]
;I call tails. [m-w]
;
(defrule tail6
(declare (salience 5000))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 call)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id telsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tail.clp 	tail6  "  ?id " telsa )" crlf))
)

;@@@ Added by Prachi Rathore[15-1-14]
;Is it heads or tails? [m-w]
;क्या यह हेड्स या टेल्स है? 
(defrule tail7
(declare (salience 5000))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(conjunction-components  ? ?id1 ?id)
(id-root ?id1 head)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id telsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tail.clp 	tail7  "  ?id " telsa )" crlf))
)

;@@@ Added by Prachi Rathore[16-1-14]
;The men all wore top hat and tails.[oald]
;सब आदमियों ने ऊँची टोपी और पहनावा विशेष पहने थे . 
(defrule tail8
(declare (salience 5000))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(conjunction-components  ?id2 $? ?id $?)
(kriyA-object  ?id1 ?id2)
(id-root ?id1 wear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahanAvA_viSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tail.clp 	tail8   "  ?id "  pahanAvA_viSeRa )" crlf))
)

;@@@ Added by Prachi Rathore[16-1-14]
; He turned tail and ran from the fight.[m-w]
;उसने दुम दबाई और लडाई से भागा . 
(defrule tail9
(declare (salience 5000))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 turn)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tail.clp 	tail9  "  ?id " xuma )" crlf))
)

;@@@ Added by Prachi Rathore[16-1-14]
; The tail of the procession.[oald]
;जलूस का पिछला हिस्सा . 
(defrule tail10
(declare (salience 4500))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalA_hissA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tail.clp 	tail10  "  ?id " piCalA_hissA )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[15-1-14]
;A private detective had been tailing them for several weeks.[oald]
(defrule tail3
(declare (salience 4000))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tail.clp 	tail3   "  ?id "  pICA_kara )" crlf))
)


;@@@ Added by Prachi Rathore[15-1-14]
;a monkey with a long tail[m-w]
(defrule tail4
(declare (salience 4000))
(id-root ?id tail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUzCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tail.clp 	tail4   "  ?id "  pICA_kara )" crlf))
)
