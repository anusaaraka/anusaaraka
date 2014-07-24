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

;The situation has obvious spherical symmetry.
;स्पष्ट रूप से इस स्थिति में गोलीय सममिति है .
(defrule obvious0
(declare (salience 5100))
(id-root ?id obvious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-cat_coarse ?id1 adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  obvious.clp     obvious0 "  ?id " spaRta_rUpa_se)" crlf))
)


;I know you don't like her, but do you have to make it so obvious?
;मैं जानता हूँ आप उसको पसंद नहीं करते हैं , परन्तु क्या यह आपको  इतना प्रत्यक्ष बनाना जरूरी है 
(defrule obvious1
(declare (salience 5000))
(id-root ?id obvious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-cat_coarse ?id1 pronoun)
(id-cat_coarse ?id2 adverb)
(viSeRya-viSeRaka  ?id ?id2)
(object-object_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  obvious.clp     obvious1 "  ?id " prawyakRa)" crlf))
)



;#########################################################Default Rule#########################################################################

;There is no obvious solution.
;कोई स्पष्ट हल नहीं है . 
(defrule obvious2
(id-root ?id obvious)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  obvious.clp     obvious2 "  ?id " spaRta)" crlf))
)

