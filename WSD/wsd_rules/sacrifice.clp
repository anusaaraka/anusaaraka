;########################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################`
;@@@ Added by jagriti(12.3.2014)
;The sacrifice of animals has come to its end.[rajpal] 
;पशुओं की बलि अब समाप्त अन्त हो चुकी है . 
(defrule sacrifice2
(declare (salience 5000))
(id-root ?id sacrifice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 animal|goat|ox|human)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bali))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sacrifice.clp 	sacrifice2   "  ?id "  bali )" crlf))
)
;@@@ Added by jagriti(12.3.2014)
;To sell something at a sacrifice.[rajpal]
;घाटे में कुछ बेचना . 
(defrule sacrifice3
(declare (salience 4900))
(id-root ?id sacrifice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-at_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sacrifice.clp 	sacrifice3   "  ?id " GAtA  )" crlf))
)
;@@@ Added by jagriti(12.3.2014)
; Sacrifice of one's principles.[rajpal]
(defrule sacrifice4
(declare (salience 4800))
(id-root ?id sacrifice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 comfort|principle|money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wyAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sacrifice.clp 	sacrifice4   "  ?id "  wyAga )" crlf))
)
;@@@ Added by jagriti(12.3.2014)
;He sacrificed comfort for the service of the sick.[rajpal]
;उसने बीमार लोग की सेवा के लिये आराम त्याग दिया . 
(defrule sacrifice5
(declare (salience 4700))
(id-root ?id sacrifice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 principle|money|comfort)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wyAga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sacrifice.clp 	sacrifice5   "  ?id "  wyAga_xe )" crlf))
)
;@@@ Added by jagriti(12.3.2014)
;They sacrificed a lamb . [wordnet]
;उन्होंने मेमना बलि चढाया . 
(defrule sacrifice6
(declare (salience 4600))
(id-root ?id sacrifice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 goat|ox|human|lamb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bali_caDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sacrifice.clp 	sacrifice6   "  ?id "  bali_caDA )" crlf))
)

;.....Default Rule.....
;@@@ Added by jagriti(12.3.2014)
;To sacrifice oneself in the defence of public liberty.[rajpal]
;जनता की स्वतन्त्रता की रक्षा के लिए स्वयं का बलिदान करना . 
(defrule sacrifice0
(declare (salience 100))
(id-root ?id sacrifice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balixAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sacrifice.clp 	sacrifice0   "  ?id "  balixAna_kara )" crlf))
)
;@@@ Added by jagriti(12.3.2014)
;Indian made many sacrifices to gain freedom.[rajpal]
;भारतीयों ने स्वतन्त्रता प्राप्त करने के लिए बहुत सारे बलिदान दिए. 
(defrule sacrifice1
(declare (salience 100))
(id-root ?id sacrifice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balixAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sacrifice.clp 	sacrifice1   "  ?id "  balixAna )" crlf))
)
