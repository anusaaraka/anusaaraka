;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;A bald tyre.[oald]
;एक चिकनी सतह वाला पहियाँ
(defrule bald1
(declare (salience 3000))
(id-root ?id bald)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 tyre)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cikanI_sawaha_vAlA))
;(assert (id-H_vib_mng ?id1 vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bald.clp  	bald1  "  ?id "  cikanI_sawaha_vAlA )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  bald.clp  	bald1  "  ?id1 "  vAlA )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;The bald fact is that we don't need you any longer.[oald]
;सुस्पष्ट तथ्य है कि हमें अब आप की जरूरत नहीं है.
;The letter was a bald statement of our legal position.[oald]
;पत्र हमारे कानूनी स्थिति का एक सुस्पष्ट बयान था.
(defrule bald2
(declare (salience 3000))
(id-root ?id bald)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 statement|fact)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id suspaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bald.clp  	bald2  "  ?id "  suspaRta )" crlf))
)

;***********************DEFAULT RULES*************************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;He is going bald .[shiksharthi]
;वह गंजा होता जा रहा है
(defrule bald0
(declare (salience 0))
(id-root ?id bald)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gaMjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bald.clp  	bald0  "  ?id "  gaMjA )" crlf))
)


;****************************EXAMPLES*******************

;<TITLE>
;test
;</TITLE>
;<p>
;A bald tyre.
;He is going bald.
;The bald fact is that we don't need you any longer.
;The letter was a bald statement of our legal position.
;He wore a hat to hide his baldness.
;</p>


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bald1
(declare (salience 3000))
(id-root ?id bald)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 tyre)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cikanI_sawaha_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " bald.clp   sub_samA_bald1   "   ?id " cikanI_sawaha_vAlA )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bald1
(declare (salience 3000))
(id-root ?id bald)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 tyre)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cikanI_sawaha_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " bald.clp   obj_samA_bald1   "   ?id " cikanI_sawaha_vAlA )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bald2
(declare (salience 3000))
(id-root ?id bald)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 statement|fact)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id suspaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " bald.clp   sub_samA_bald2   "   ?id " suspaRta )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bald2
(declare (salience 3000))
(id-root ?id bald)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 statement|fact)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id suspaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " bald.clp   obj_samA_bald2   "   ?id " suspaRta )" crlf))
)
