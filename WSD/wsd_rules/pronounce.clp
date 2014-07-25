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

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
;The judge pronounced the judgement. [rajpal]
;न्यायधीष ने निर्णय सुनाया .
(defrule pronounce1
(declare (salience 5000))
(id-root ?id pronounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 judge|jury)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pronounce.clp 	pronounce1   "  ?id "  suna )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
;The priest pronounced them man and wife. [rajpal]
;पादरी ने उनके पति पत्नी बन जाने की घोषणा की  .
(defrule pronounce2
(declare (salience 5000))
(id-root ?id pronounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 priest)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GoRaNA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pronounce.clp 	pronounce2   "  ?id "  GoRaNA_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
;I dont want to pronounce on this matter.  [rajpal]
;मैं इस विषय पर कुछ बात नहीं करना चाहता .
(defrule pronounce3
(declare (salience 5000))
(id-root ?id pronounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pronounce.clp 	pronounce3   "  ?id "  bAwa_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
;He was taken to the hospital where he was pronounced dead on arrival. [cambridge]
;उसे अस्पताल ले जाया गया जहाँ पहुँचने पर उसे मृत  घोषित किया गया .
(defrule pronounce4
(declare (salience 5000))
(id-root ?id pronounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(and(subject-subject_samAnAXikaraNa  ?pronoun ?id1)(kriyA-subject  ?id ?pronoun))(and(object-object_samAnAXikaraNa  ?pronoun ?id1)(kriyA-object  ?id ?pronoun)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GoRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pronounce.clp 	pronounce4   "  ?id "  GoRiwa_kara )" crlf)))

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
(defrule pronounce5
(declare (salience 4000))
(id-root ?id pronounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uccAraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pronounce.clp 	pronounce5   "  ?id "  uccAraNa_kara )" crlf)))

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
(defrule pronounce6
(id-root ?id pronounce)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uccAraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pronounce.clp 	pronounce6   "  ?id "  uccAraNa_kara )" crlf)))
