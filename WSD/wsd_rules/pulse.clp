;##############################################################################
;#  Copyright (C) 2014-201 Sonam Gupta(sonam27virgo@gmail.com)
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
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02149, USA.
;
;##############################################################################

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
;Put your fingers on the pulse. [rajpal]
;अपनी उँगली नाड़ी स्पन्द पर रखिये .
(defrule pulse1
(declare (salience 5000))
(id-root ?id pulse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAdZI_spanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulse.clp 	pulse1   "  ?id "  nAdZI_spanxa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
;The docter felt his pulse and said that there was no fever. [rajpal]
;चिकित्सक ने उसकी नाड़ी स्पन्द महसूस की और कहा की कोई बुखार नहीं है .
(defrule pulse2
(declare (salience 5000))
(id-root ?id pulse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 check|feel|take)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAdZI_spanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulse.clp 	pulse2   "  ?id "  nAdZI_spanxa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
;He was pulsing with excitement. [rajpal]
;वह उत्साह से काँप रहा था .
(defrule pulse3
(declare (salience 5000))
(id-root ?id pulse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulse.clp 	pulse3   "  ?id "  kAzpa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
;A strong pulse. [oald]
;एक तेज़ नाड़ी स्पन्द .
(defrule pulse4
(declare (salience 4000))
(id-root ?id pulse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAdZI_spanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulse.clp 	pulse4   "  ?id "  nAdZI_spanxa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
;The exciting news set my pulse racing.  [oald]
;उत्तेजक समाचार ने मेरे नाड़ी स्पन्द को बढ़ा दिया .
(defrule pulse5
(declare (salience 4000))
(id-root ?id pulse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 quicken|racing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAdZI_spanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulse.clp 	pulse5   "  ?id "  nAdZI_spanxa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
(defrule pulse6
(declare (salience 4000))
(id-root ?id pulse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spanxiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulse.clp 	pulse6   "  ?id "  spanxiwa_ho )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
(defrule pulse7
(declare (salience 4000))
(id-root ?id pulse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulse.clp 	pulse7   "  ?id "  xAla )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
(defrule pulse8
(id-root ?id pulse)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulse.clp 	pulse8   "  ?id "  xAla )" crlf))
)
