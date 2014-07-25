;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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
;@@@ Added by Pramila(Banasthali university)
;Therefore, there is a cultural dimension, we have to understand it.
;इसलिए ,यहाँ एक सांस्कृतिक आयाम है, हमें इसे समझना है.
;Hence, identification adds a different dimension to the study of animation.
;इस कारण,पहचान जीवन्तता के अध्ययन के लिए एक अलग आयाम लेती है. 

(defrule dimension0
(declare (salience 4800))
(id-root ?id dimension)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id ?id1)(viSeRya-det_viSeRaNa  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AyAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dimension.clp 	dimension0   "  ?id "  AyAma )" crlf))
)

;@@@ Added by Pramila(Banasthali university)  on 10-03-2014
;There are 3 separate dimensions of childhood maltreatment.
;बचपन अत्याचार के 3 अलग आयाम  हैं .

(defrule dimension1
(declare (salience 4900))
(id-root ?id dimension)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-saMKyA_viSeRaNa  ?id ?id1)
(viSeRya-of_saMbanXI  ?id ?id2)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AyAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dimension.clp 	dimension1   "  ?id "  AyAma )" crlf))
)


;@@@ Added by Pramila(Banasthali University)
;I have a double dimension of weight.
;मेरे पास दोगुने परिमाण का भार है .
;In comparison to the dimensions of typical mirrors and lenses ,light can be assumed to approximately travel in straight lines.
;विशिष्ट दर्पणों और लेन्स के परिमाण की तुलना में ,प्रकाश सीधी लाइनों में लगभग सन्चरण करते हुए माना जा सकता है . 
(defrule dimension2
(declare (salience 4950))
(id-root ?id dimension)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-viSeRaNa  ?id ?id1)
(or(and(kriyA-object  ?kri ?id)(viSeRya-of_saMbanXI  ?id ?id1))(viSeRya-to_saMbanXI  ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parimANa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dimension.clp 	dimension2   "  ?id "  parimANa )" crlf))
)



;@@@ Added by Pramila(Banasthali University)

;It has the dimensions of (ML2T—2A—2) given by the dimensions of flux divided by the dimensions of current.
;इसकी विमाएँ [ML2T–2A–2] हैं जो कि फ्लक्स की विमाओं तथा धारा की विमाओं के अनुपात द्वारा व्यक्त की जाती हैं.
(defrule dimension3
(declare (salience 5000))
(id-root ?id dimension)
?mng <-(meaning_to_be_decided ?id)
(or(and(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-jo_samAnAXikaraNa  ?id1 ?id2))(kriyA-by_saMbanXI  ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dimension.clp 	dimension3   "  ?id "  vimA )" crlf))
)

;@@@ Added by Pramila(Banasthali university)  on 10-03-2014
;The dimensions in all other base quantities are zero.   ;ncert
;यहाँ अन्य सभी मूल राशियों की विमाएँ शून्य हैं...
(defrule dimension4
(declare (salience 4900))
(id-root ?id dimension)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dimension.clp 	dimension4   "  ?id "  vimA )" crlf))
)

;--------------------------------------------------default---------------------------------------------------------------------------------
;@@@ Added by Pramila(Banasthali University)
(defrule dimension5
(declare (salience 4000))
(id-root ?id dimension)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dimension.clp 	dimension5   "  ?id "  vimA )" crlf))
)

;@@@ Added by Pramila(Banasthali University)
(defrule dimension6
(declare (salience 3000))
(id-root ?id dimension)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahalU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dimension.clp 	dimension6   "  ?id "  pahalU )" crlf))
)
