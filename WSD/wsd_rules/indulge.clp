
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
;##########################################################################

;@@@ Added by Prachi Rathore[7-2-14]
;She did not believe in indulging the children with presents.[oald]
;वह उपहार से बच्चों को बहलाने में विश्वास नहीं करती है . 
(defrule indulge0
(declare (salience 5000))
(id-root ?id indulge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(or(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 pronoun))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indulge.clp 	indulge0   "  ?id "  bahalA )" crlf))
)


;@@@ Added by Prachi Rathore[7-2-14]
;In the closing lines, the poet indulges his sense of irony.[oald]
;आखरी लाइनों में, कवि व्यंगोक्ति की संवेदना दिखाता है . 
(defrule indulge1
(declare (salience 5000))
(id-root ?id indulge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 passion|sense|patriotism)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indulge.clp 	indulge1   "  ?id "  xiKA )" crlf))
)


;@@@ Added by Prachi Rathore[7-2-14]
;She has never been one to indulge in gossip.[oald]
;वह कभी  चुगली में लिप्त नहीं होती . 
(defrule indulge3
(declare (salience 4900))
(id-root ?id indulge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lipwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indulge.clp 	indulge3   "  ?id "  lipwa_ho )" crlf))
)


;@@@ Added by Prachi Rathore[7-2-14]
;I indulged myself with a long hot bath.[oald]
;मैंने एक लंबा गरम स्नान लेकर स्वतः को तृप्त किया . 
(defrule indulge4
(declare (salience 4500))
(id-root ?id indulge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wqpwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indulge.clp 	indulge4   "  ?id "  wqpwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  indulge.clp 	indulge4   "  ?id "  ko )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[7-2-14]

(defrule indulge2
(declare (salience 4000))
(id-root ?id indulge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_mana_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indulge.clp 	indulge2   "  ?id "  kA_mana_raKa )" crlf))
)



