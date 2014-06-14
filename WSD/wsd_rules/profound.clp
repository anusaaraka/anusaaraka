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
;@@@ Added by Sonam Gupta MTech IT Banasthali 2-2-2014
;The invention of the contraceptive pill brought about profound changes in the lives of women.  [Cambridge]
;गर्भनिरोधक गोलियों के अविष्कार ने स्त्रियों के जीवन में गहन परिवर्तन आया है . 
(defrule profound1
(declare (salience 5500))
(id-root ?id profound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 change|difference|adjustment)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profound.clp 	profound1   "  ?id "  gahana )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-2-2014
;There was a note of profound irritation in his voice.  [Cambridge]
;उसकी आवाज में अथाह खीझ की झलक थी . 
(defrule profound2
(declare (salience 5500))
(id-root ?id profound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 anger|irritation|love|affection|friendship|rage|wrath|annoyance|fury|enjoyment|adorement)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aWAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profound.clp 	profound2   "  ?id "  aWAha )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-2-2014
;Profound wisdom.  [Cambridge]
;परम बुद्धिमता . 
(defrule profound3
(declare (salience 5500))
(id-root ?id profound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 truth|wisdom|knowledge|understanding|intelligence|fact|reality)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profound.clp 	profound3   "  ?id "  parama )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-2-2014
;The review that I read said that it was 'a thoughtful and profound film'. [OALD]
;मैंने जो पुनरवलोकन पढा उसमें था कि फिल्म चिन्ताशील और गम्भीर थी . 
(defrule profound4
(declare (salience 5500))
(id-root ?id profound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 film|movie|topic|subject|matter|issue|discussion|book|novel|story)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gamBIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profound.clp 	profound4   "  ?id "  gamBIra )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2-2-2014
;That was very profound of you.  [OALD]
;यह बहुत विचारणीय था . 
(defrule profound5
(declare (salience 5500))
(id-root ?id profound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id1 pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAraNIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profound.clp 	profound5   "  ?id "  vicAraNIya )" crlf))
)


;#######################################################Default Rule###########################################################################

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-2-2014
;The news came as a profound shock.  [M-W]
;समाचार गहरे धक्के की तरह आया . 
(defrule profound6
(id-root ?id profound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profound.clp 	profound6   "  ?id "  gaharA )" crlf))
)
