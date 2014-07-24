;#############################################################################
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
;######################################################################
;@@@ Added by jagriti(3.2.2014)
;Caffeine, which is found in coffee and tea, is a mild stimulant.[cambridge dict]
;Opium is a stimulant.[rajpal]
;अफीम उत्तेजक पदार्थ है . 
(defrule stimulant0
(declare (salience 5000))
(id-root ?id stimulant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 caffeine|opium|coffee|tea|drug)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejaka_paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stimulant.clp 	stimulant0   "  ?id "  uwwejaka_paxArWa )" crlf))
)

;@@@ Added by jagriti(3.2.2014)
;Never take a stimulant.[rajpal]
; उत्तेजक पदार्थ कभी नहीं लीजिए . 
(defrule stimulant1
(declare (salience 4900))
(id-root ?id stimulant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(id-root ?id1 take)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejaka_paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stimulant.clp 	stimulant1   "  ?id "  uwwejaka_paxArWa )" crlf))
)

;@@@ Added by jagriti(3.2.2014)
;stimulant drugs.
(defrule stimulant2
(declare (salience 4800))
(id-root ?id stimulant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 drug)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stimulant.clp 	stimulant2   "  ?id "  uwwejaka )" crlf))
)

;....default rule....
;@@@ Added by jagriti(3.2.2014)
;Books provide children with ideas and a stimulant for play. [wordnet]
;पुस्तकें विचारों के साथ-साथ बच्चों को खेल के लिये प्रेरना प्रदान करती हैं .  
(defrule stimulant3
(declare (salience 100))
(id-root ?id stimulant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stimulant.clp 	stimulant3   "  ?id "  preranA )" crlf))
)

;@@@ Added by jagriti(3.2.2014)
;Stimulant facts .
;प्रेरक तथ्य . 
(defrule stimulant4
(declare (salience 100))
(id-root ?id stimulant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stimulant.clp 	stimulant4   "  ?id "  preraka )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_stimulant2
(declare (salience 4800))
(id-root ?id stimulant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 drug)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " stimulant.clp   sub_samA_stimulant2   "   ?id " uwwejaka )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_stimulant2
(declare (salience 4800))
(id-root ?id stimulant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 drug)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " stimulant.clp   obj_samA_stimulant2   "   ?id " uwwejaka )" crlf))
)
