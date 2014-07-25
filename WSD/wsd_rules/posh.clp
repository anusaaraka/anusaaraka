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

;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;A posh voice. [cambridge]
;एक शानदार आवाज़ .
(defrule posh1
(declare (salience 5000))
(id-root ?id posh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 voice|accent)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  posh.clp 	posh1   "  ?id "  SAnaxAra )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;A posh hotel. [oald]
;एक उच्चवर्गीय होटल . .
(defrule posh2
(declare (salience 4000))
(id-root ?id posh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uccavargIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  posh.clp 	posh2   "  ?id "  uccavargIya )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;They laugh when I try to talk posh. [M-W]
;वे हँसे जब मैंने उच्चवर्गीय लोगों जैसे बात की .
(defrule posh3
(declare (salience 4000))
(id-root ?id posh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uccavargIya_logoM_jEse))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  posh.clp 	posh3   "  ?id "  uccavargIya_logoM_jEse )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;You look very posh in your new suit.
;आप अपने नए सूट में बहुत शानदार दिख रहे हैं . 
(defrule posh4
(declare (salience 5000))
(id-root ?id posh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?pronoun ?id)
(kriyA-subject  ?id1 ?pronoun)
(id-root ?id1 look|appear|seem)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  posh.clp 	posh4   "  ?id "  SAnaxAra )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
(defrule posh5
(id-root ?id posh)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uccavargIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  posh.clp 	posh5   "  ?id "  uccavargIya )" crlf))
)




;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_posh1
(declare (salience 5000))
(id-root ?id posh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 voice|accent)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " posh.clp   sub_samA_posh1   "   ?id " SAnaxAra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_posh1
(declare (salience 5000))
(id-root ?id posh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 voice|accent)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " posh.clp   obj_samA_posh1   "   ?id " SAnaxAra )" crlf))
)
