
;##############################################################################
;#  Copyright (C) 2002-2005 Sonam Gupta (sonam27virgo@gmail.com)
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

;Our hope is that a new generation of computer vision researchers will take on the challenge.

(defrule generation0
(declare (salience 5000))
(id-root ?id generation)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)(viSeRya-RaRTI_viSeRaNa ?id ?id1)(viSeRya-det_viSeRaNa ?id ?id1))
(or(id-cat_coarse ?id1 adjective|pronoun)(id-word ?id1 new))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIDI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  generation.clp 	generation0   "  ?id " pIDI )" crlf))
)

;Automated generation of programs that perform well in a given use context from this specification by means.
;The Maxwell's equations of electromagnetism and Hertz experiments on the generation and detection of electromagnetic waves in 1887 strongly established the wave nature of light.  
;You might have also heard that this is due to generation of static electricity.
(defrule generation1
(declare (salience 4000))
(id-root ?id generation)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI ?id ?id2)(viSeRya-viSeRaNa ?id ?id2)(viSeRya-from_saMbanXI ?id ?id2))
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 noun|determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpawwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  generation.clp 	generation1   "  ?id " uwpawwi )" crlf))
)


;Electricity generation using nuclear reactors is a very efficient method.
;Teams are all looking to increase customer feedback, employee engagement, and idea generation.

(defrule generation2
(declare (salience 3000))
(id-root ?id generation)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id ?id2)(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id2))
(id-word =(- ?id 1) process|crop|task|idea|income|revenue|power|light|case|energy|electricity|water|program|concept|category)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpAxana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  generation.clp 	generation2   "  ?id " uwpAxana )" crlf))
)

;--------------- Default Rule --------------------
(defrule generation3
(id-root ?id generation)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIDI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  generation.clp       generation3   "  ?id " pIDI )" crlf))
)


