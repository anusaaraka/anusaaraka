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

;@@@ Added by Pramil(Banasthali University)on 22-01-2014
;They both enlisted in 1915.        ;oald
;वे दोनों 1915 में भर्ती हुए.
(defrule enlist0
(declare (salience 4900))
(id-root ?id enlist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarwI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enlist.clp 	enlist0   "  ?id "  BarwI_ho )" crlf))
)

;@@@ Added by Pramil(Banasthali University)on 22-01-2014
;He was enlisted into the US Navy.         ;oald
;उसे यू.एस. नेवी मे भर्ती किया गया था.
;We were enlisted as helpers. ;oald
;हमें सहायकों के रूप में भर्ती किया गया.
(defrule enlist1
(declare (salience 5000))
(id-root ?id enlist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-into_saMbanXI  ?id ?)(kriyA-as_saMbanXI  ?id ?))
(kriyA-karma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarwI_kara))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enlist.clp 	enlist1   "  ?id "  BarwI_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  enlist.clp      enlist1   "  ?id " ko )" crlf))
)

;---------------------default rules-----------------------------------------
;@@@ Added by Pramil(Banasthali University)on 22-01-2014
;We were enlisted to help.           ;oald
;हमें सहायता करने के लिए रखा गया.
(defrule enlist2
(declare (salience 4000))
(id-root ?id enlist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enlist.clp 	enlist2   "  ?id "  raKA_jA )" crlf))
)
;@@@ Added by Pramil(Banasthali University)on 22-01-2014
(defrule enlist3
(declare (salience 0))
(id-root ?id enlist)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enlist.clp 	enlist3   "  ?id "  raKA_jA )" crlf))
)
