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
;They did not respond equivalently.------------------------coca corpus
;उन्होनें समान रूप से प्रत्युत्तर नहीं दिया.
;unhoneM samAna rUpa se prawyuwwara nahIM xiyA.

;All tobacco products are equivalently harmful.-------------------coca corpus
;सभी तम्बाकू उत्पाद समान रूप से हानिकारक है.
;saBI wambAkU uwpAxa samAna rUpa se hAnikAraka hE.

(defrule equivalently0
(declare (salience 5000))
(id-root ?id equivalently)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id1 ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equivalently.clp 	equivalently0   "  ?id "  samAna_rUpa_se )" crlf))
)

;Equivalently, buyers will be willing to pay a non-zero price for water in short supply.---------------------coca corpus
;दूसरे शब्दो में,क्रेता कम आपूर्ति में पानी के लिए शून्येतर कीमत अदा करने के इच्छुक होंगे.
;xUsare Sabxo meM,krewA kama ApUrwi meM pAnI ke lie SUnyewara kImawa axA karane ke icCuka hoMge.
(defrule equivalently1
(declare (salience 5000))
(id-root ?id equivalently)
?mng <-(meaning_to_be_decided 1)
(id-cat_coarse 1 adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 xUsre_Sabxo_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equivalently.clp 	equivalently1   "  1 "  xUsre_Sabxo_meM )" crlf))
)


;-----------------------------------------default rules----------------------------------------------------------------------------------
(defrule equivalently2
(declare (salience 4000))
(id-root ?id equivalently)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equivalently.clp 	equivalently2   "  ?id "  samAna_rUpa_se )" crlf))
)
(defrule equivalently3
(declare (salience 3000))
(id-root ?id equivalently)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawulya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equivalently.clp 	equivalently3   "  ?id "  samawulya)" crlf))
)
