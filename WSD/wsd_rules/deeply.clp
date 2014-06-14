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


;to drill deeply into the wood  ;oald
;लकड़ी में बहुत गहराई तक छद करना.
(defrule deeply0
(declare (salience 5000))
(id-root ?id deeply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(id-root ?id1 drill)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_gaharAI_waka ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deeply.clp 	deeply0   "  ?id "  gaharAI_waka )" crlf))
)



;to breathe/sigh/exhale deeply    ;oald
;गहरी साँस लेना
;He is sleeping deeply               ;oald
;गहरी नींद में सो रहा है.
(defrule deeply1
(declare (salience 5000))
(id-root ?id deeply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(id-root ?id1 breathe|exhale|sigh|sleep)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deeply.clp 	deeply1   "  ?id " gaharA  )" crlf))
)

;She is deeply religious.              ;oald
;वह अन्तर्तम धार्मिक है.
;They have deeply rooted customs.     ;oald
;उनकी अन्तर्तम 
(defrule deeply2
(declare (salience 5000))
(id-root ?id deeply)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaka  ?id2 ?id)(and(viSeRaNa-viSeRaka  ?id1 ?id)(viSeRya-viSeRaNa  ?id2 ?id1)))
(id-root ?id2 religious|customs|idea|belief|conviction|view)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwarwama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deeply.clp 	deeply2   "  ?id " anwarwama  )" crlf))
)


;I was deeply affected by the film.           ; forwarded problem
;मैं सिनेमा से बहुत अधिक प्रभावित हुआ .
;They were deeply disturbed by the accident.   ;olad
;वे दुर्घटना से बहुत अधिक घबरा गए.
(defrule deeply3
(declare (salience 4000))
(id-root ?id deeply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_axika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deeply.clp 	deeply3   "  ?id "  bahuwa_axika )" crlf))
)

(defrule deeply4
(declare (salience 0))
(id-root ?id deeply)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_axika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deeply.clp 	deeply4   "  ?id "  bahuwa_axika )" crlf))
)
