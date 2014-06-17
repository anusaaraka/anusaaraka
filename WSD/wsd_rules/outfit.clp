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
;@@@ Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;She was wearing an expensive new outfit. [OALD]
;उसने एक महँगी नयी पोशाक पहनी थी . 
(defrule outfit0
(declare (salience 5000))
(id-root ?id outfit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa  ?id ?)(viSeRya-det_viSeRaNa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id poSAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outfit.clp 	outfit0  "  ?id "  poSAka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;a market research outfit [OALD]
;एक विपणन शोध संस्थान . 
(defrule outfit1
(declare (salience 5000))
(id-root ?id outfit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outfit.clp 	outfit1  "  ?id "  saMsWAna )" crlf))
)

;------------------------------- Default Rules ----------------------------
;@@@ Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;A bicycle repair outfit. [OALD]
;एक साइकिल मरम्मत यन्त्र . 
(defrule outfit_noun_default
(id-root ?id outfit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yanwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outfit.clp 	outfit_noun_default  "  ?id "  yanwra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;The ship was outfitted with a 12 bed hospital. [OALD]
;जहाज में १२ बिस्तर के अस्पताल की व्यवस्था की गई थी . 
(defrule outfit_default_verb
(declare (salience 5000))
(id-root ?id outfit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasWA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outfit.clp 	outfit_default_verb  "  ?id "  vyavasWA_kara )" crlf))
)
