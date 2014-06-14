;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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


;@@@ Added by Pramila(BU) on 25-01-2014
;Her performance electrified the audiences.      ;oald
;उसके प्रदर्शन ने श्रोतागणों में जोश भर दिया.
(defrule electrify0
(declare (salience 4950))
(id-root ?id electrify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joSa_Bara_xe))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  electrify.clp 	electrify0   "  ?id "  joSa_Bara_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  electrify.clp      electrify0   "  ?id " meM )" crlf))
)

;-----------------------default rules--------------------------------
;@@@ Added by Pramila(BU) on 25-01-2014
;The railway line was electrified in the 1950s.          ;oald
;रेलवे लाइन में 1950 के दशक में विद्युतीकरण किया गया था.
(defrule electrify1
(declare (salience 4000))
(id-root ?id electrify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixyuwIkaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  electrify.clp 	electrify1   "  ?id "  vixyuwIkaraNa_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 25-01-2014
(defrule electrify2
(declare (salience 0))
(id-root ?id electrify)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixyuwIkaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  electrify.clp 	electrify2   "  ?id "  vixyuwIkaraNa_kara )" crlf))
)


